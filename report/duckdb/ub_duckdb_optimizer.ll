Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_optimizer?download=true
inline.NumInlined: 25578
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE:bb.a
  %or.cond43.not = or i1 %i.ap, %i.br
  %or.cond43.not.not = xor i1 %or.cond43.not, true
  %not.or.cond66 = select i1 %or.cond42, i1 true, i1 %or.cond43.not.not
  %.138 = xor i1 %i.ap, %not.or.cond66
  %i.bs = load ptr, ptr %5, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61

bb.n:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit57
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZN6duckdbL26ComputeOverlappingBindingsERKNS_6vectorINS_13ColumnBindingELb1ESaIS1_EEES5_.exit57, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bw = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i58, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bw) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.138, label %bb.v, label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit

bb.r:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.o ], [ %i.bu, %bb.n ] ; 2 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i60, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61: ; preds = %bb.s, %bb.r, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %.pn, %bb.r ], [ %.pn, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.by = load ptr, ptr %4, align 8, !tbaa !219   ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61
  call void @_ZdlPv(ptr noundef nonnull %i.by) #34
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63

common.resume:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ac, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63 ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn33.i, %bb.ac ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit63: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit61, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

bb.u:                                             ; preds = %bb.h, %bb.g
  br i1 %i.ap, label %bb.v, label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59, %bb.u
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 4 uses
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1) ; 4 uses
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !305
  %i.cc = inttoptr i64 %i.cb to ptr
  store ptr null, ptr %i.bz, align 8, !tbaa !305
  %i.cd = load ptr, ptr %i.ca, align 8, !tbaa !305
  store ptr null, ptr %i.ca, align 8, !tbaa !305
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !305 ; 3 uses
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !305
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %bb.v
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !213
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ce) #33, !inline_history !1788
  br label %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i

_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i.i, %bb.v
  %i.ci = load ptr, ptr %i.ca, align 8, !tbaa !305 ; 3 uses
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !305
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i.i: ; preds = %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !213
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ci) #33, !inline_history !1788
  br label %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i

_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i5.i.i, %_ZN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !242
  switch i8 %i.cn, label %bb.y [
    i8 52, label %bb.w
    i8 51, label %bb.w
    i8 53, label %bb.x
    i8 54, label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit
  ]

bb.w:                                             ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !332
  %i.cq = call noundef zeroext i8 @_ZN6duckdb15InverseJoinTypeENS_8JoinTypeE(i8 noundef zeroext %i.cp)
  store i8 %i.cq, ptr %i.co, align 1, !tbaa !332
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !334 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !334 ; 2 uses
  %.not34.i = icmp eq ptr %i.cs, %i.cu
  br i1 %.not34.i, label %.sink.split.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i: ; preds = %bb.w, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i
  %.sroa.027.035.i = phi ptr [ %i.dc, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ], [ %i.cs, %bb.w ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.027.035.i, i64 8 ; 2 uses
  %i.cw = load i64, ptr %.sroa.027.035.i, align 8, !tbaa !336
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !336
  store ptr %i.cy, ptr %.sroa.027.035.i, align 8, !tbaa !336
  store ptr %i.cx, ptr %i.cv, align 8, !tbaa !336
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.027.035.i, i64 16 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !346
  %i.db = call noundef zeroext i8 @_ZN6duckdb24FlipComparisonExpressionENS_14ExpressionTypeE(i8 noundef zeroext %i.da)
  store i8 %i.db, ptr %i.cz, align 8, !tbaa !346
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.027.035.i, i64 24 ; 2 uses
  %.not.i64 = icmp eq ptr %i.dc, %i.cu
  br i1 %.not.i64, label %.sink.split.i, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i

bb.x:                                             ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i
  %i.dd = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN6duckdb15LogicalOperator4CastINS_14LogicalAnyJoinEEERT_v(ptr noundef nonnull align 8 dereferenceable(97) %1) ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 97 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !332
  %i.dg = call noundef zeroext i8 @_ZN6duckdb15InverseJoinTypeENS_8JoinTypeE(i8 noundef zeroext %i.df)
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !332
  br label %.sink.split.i

bb.y:                                             ; preds = %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i
  %i.dh = call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.56, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.z unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.ad unwind label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.y
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i = phi i1 [ false, %bb.aa ], [ true, %bb.z ] ; 2 uses
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dk = load ptr, ptr %2, align 8, !tbaa !300   ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef %i.dk) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i, label %bb.ac, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i, label %bb.ac, label %common.resume

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn33.i = phi { ptr, i32 } [ %i.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.dh) #33
  br label %common.resume

.sink.split.i:                                    ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i, %bb.x, %bb.w
  %.sink62.i = phi ptr [ %i.dd, %bb.x ], [ %1, %bb.w ], [ %1, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sink62.i, i64 112 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sink62.i, i64 136
  %6 = load ptr, ptr %i.dn, align 8, !tbaa !306
  %i.dp = getelementptr inbounds nuw i8, ptr %.sink62.i, i64 120
  %7 = getelementptr inbounds nuw i8, ptr %.sink62.i, i64 128
  %i.dq = load <2 x ptr>, ptr %i.do, align 8, !tbaa !288
  %i.dr = getelementptr inbounds nuw i8, ptr %.sink62.i, i64 152
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !347
  %8 = load <2 x ptr>, ptr %i.dp, align 8, !tbaa !288
  store <2 x ptr> %i.dq, ptr %i.dn, align 8, !tbaa !288
  %9 = insertelement <4 x ptr> poison, ptr %i.ds, i64 0
  %10 = insertelement <4 x ptr> %9, ptr %6, i64 1
  %11 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %12 = shufflevector <4 x ptr> %10, <4 x ptr> %11, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %12, ptr %7, align 8, !tbaa !288
  br label %_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit

bb.ad:                                            ; preds = %bb.aa
  unreachable

_ZN6duckdbL12FlipChildrenERNS_15LogicalOperatorE.exit: ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59, %.sink.split.i, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i, %bb.u
  %.284 = phi i1 [ false, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit59 ], [ true, %.sink.split.i ], [ true, %_ZSt4swapIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS9_ESt18is_move_assignableIS9_EEE5valueEvE4typeERS9_SI_.exit.i ], [ false, %bb.u ]
  ret i1 %.284
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23BuildProbeSideOptimizer13VisitOperatorERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !242
  switch i8 %i.c, label %bb.n [
    i8 51, label %bb.b
    i8 52, label %bb.d
    i8 53, label %bb.k
    i8 54, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.e = load i8, ptr %i.d, align 1, !tbaa !332
  %i.f = tail call noundef zeroext i1 @_ZN6duckdb18HasInverseJoinTypeENS_8JoinTypeE(i8 noundef zeroext %i.e)
  br i1 %i.f, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.i = zext i1 %i.g to i8
  store i8 %i.i, ptr %i.h, align 8, !tbaa !362
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.k = load i8, ptr %i.j, align 1, !tbaa !332   ; 2 uses
  %.off = add i8 %i.k, -5
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !270
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !322, !nonnull !266, !align !323
  %i.n = tail call noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_23PreferRangeJoinsSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %i.m)
  %i.o = load i8, ptr %i.b, align 8, !tbaa !242
  %i.p = icmp eq i8 %i.o, 53
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call noundef zeroext i1 @_ZNK6duckdb21LogicalComparisonJoin11HasEqualityERm(ptr noundef nonnull align 8 dereferenceable(280) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.not = xor i1 %i.q, true
  %or.cond = or i1 %i.n, %.not
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = call noundef zeroext i1 @_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.n

bb.i:                                             ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_ZN6duckdb18HasInverseJoinTypeENS_8JoinTypeE(i8 noundef zeroext %i.k)
  br i1 %i.s, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.t = tail call noundef zeroext i1 @_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.v = load i8, ptr %i.u, align 1, !tbaa !332
  %.off21 = add i8 %i.v, -5
  %switch22 = icmp ult i8 %.off21, 2
  br i1 %switch22, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !306  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !363
  %.not.i.i.i = icmp eq ptr %i.z, %i.x
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.l
  store ptr %i.x, ptr %i.y, align 8, !tbaa !363
  br label %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit

_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit:       ; preds = %bb.l, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !306 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !363
  %.not.i.i.i23 = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i.i23, label %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit25, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i24

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i24:    ; preds = %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !363
  br label %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit25

_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit25:     ; preds = %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i24
  %i.ae = tail call noundef zeroext i1 @_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.af = tail call noundef zeroext i1 @_ZNK6duckdb23BuildProbeSideOptimizer19TryFlipJoinChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(97) %1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb6vectorImLb1ESaImEE5clearEv.exit25, %bb.k, %bb.h, %bb.j, %bb.i, %bb.b, %bb.c, %bb.a, %bb.m
  call void @_ZN6duckdb22LogicalOperatorVisitor21VisitOperatorChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(97) %1)
  ret void
}

declare noundef zeroext i1 @_ZN6duckdb18HasInverseJoinTypeENS_8JoinTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_23PreferRangeJoinsSettingENS_13ClientContextEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::Value", align 8     ; 9 uses
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 noundef zeroext 1)
  invoke void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  %i.a = invoke noundef zeroext i1 @_ZN6duckdb8Settings21TryGetSettingInternalERKNS_13ClientContextEmRNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(512) %0, i64 noundef 80, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %.not = xor i1 %i.a, true
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !265
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = invoke noundef zeroext i1 @_ZN6duckdb12BooleanValue3GetERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #33
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.h = icmp eq ptr @.str.87, @.str.88
  br label %_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit

_ZN6duckdb10StringUtil6EqualsEPKcS2_.exit:        ; preds = %bb.g, %bb.d
  %.04 = phi i1 [ %i.e, %bb.d ], [ %i.h, %bb.g ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i1 %.04

bb.h:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.f, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZNK6duckdb21LogicalComparisonJoin11HasEqualityERm(ptr noundef nonnull align 8 dereferenceable(280), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6duckdb22LogicalOperatorVisitor21VisitOperatorChildrenERNS_15LogicalOperatorE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(97)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18ReplacementBindingC2ENS_13ColumnBindingES1_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 33)) %0, i64 %1, i64 %2, i64 %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !270
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !270
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.a, align 8, !tbaa !270
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !270
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.b, align 8, !tbaa !366
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

end_hunk_0
begin_hunk_1_@_ZN6duckdb16BaseColumnPruner10AddBindingERNS_24BoundColumnRefExpressionENS_11ColumnIndexERKNS_6vectorINS_26ReferencedExtractComponentELb1ESaIS5_EEE:bb.a

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.f
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.f ], [ %i.bb, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  call void @_ZN6duckdb16ReferencedColumn7AddPathERKNS_11ColumnIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.bv, ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1255
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !1100
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = ashr exact i64 %i.cc, 3
  %i.ce = add nsw i64 %i.cd, -1
  store i64 %i.ce, ptr %i.a, align 8, !tbaa !270
  call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12emplace_backIJRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS6_EEEmNS0_11ColumnIndexEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(104) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.m ], [ %.pn22, %bb.o ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BaseColumnPruner17MergeChildColumnsERNS_6vectorINS_11ColumnIndexELb1ESaIS2_EEERS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !244    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %tailrecurse
  %i.e = phi ptr [ %i.ai, %tailrecurse ], [ %i.c, %bb.a ]
  %i.f = phi ptr [ %i.ag, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr3344 = phi ptr [ %i.af, %tailrecurse ], [ %2, %bb.a ] ; 15 uses
  %.tr3243 = phi ptr [ %i.w, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.sroa.020.042 = phi ptr [ %i.f, %.preheader ], [ %i.ak, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ] ; 7 uses
  %i.g = load i8, ptr %.sroa.020.042, align 8, !tbaa !264, !range !265, !noundef !266
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load i8, ptr %.tr3344, align 8, !tbaa !264, !range !265, !noundef !266
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.020.042)
  %i.l = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %.tr3344)
  %.not = icmp eq i64 %i.k, %i.l
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %bb.b
  br i1 %i.j, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb11ColumnIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.020.042) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb11ColumnIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104) %.tr3344) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !471  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !471
  %i.s = icmp eq i64 %i.p, %i.r
  br i1 %i.s, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.g
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !300
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !300
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.v, ptr %i.u, i64 %i.p)
  %.not30 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23: ; preds = %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 80 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.tr3344, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !244
  %i.z = getelementptr inbounds nuw i8, ptr %.tr3344, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !244
  %.not31 = icmp eq ptr %i.y, %i.aa
  br i1 %.not31, label %bb.h, label %tailrecurse

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !902 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 88 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !903 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ab
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i3.i.i.i.i), !inline_history !143
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !903
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit

tailrecurse:                                      ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread23
  %i.af = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef 0)
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !244 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !244 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit, label %.preheader

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.f, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.e, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.020.042, i64 104 ; 2 uses
  %.not29 = icmp eq ptr %i.ak, %i.e
  br i1 %.not29, label %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EE5clearEv.exit, label %bb.b

_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EE5clearEv.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.al = getelementptr inbounds nuw i8, ptr %.tr3243, i64 8 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !903 ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.tr3243, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1083
  %.not.i.i = icmp eq ptr %i.am, %i.ao
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EE5clearEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.am, ptr noundef nonnull align 8 dereferenceable(104) %.tr3344, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr3344, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !470
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !300 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.tr3344, i64 32 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.tr3344, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !471 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 16
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !300
  %i.az = load i64, ptr %i.at, align 8, !tbaa !377
  store i64 %i.az, ptr %i.ar, align 8, !tbaa !377
  br label %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i

_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i:          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %.tr3344, i64 24 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !471
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !471
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !300
  store i64 0, ptr %i.ba, align 8, !tbaa !471
  store i8 0, ptr %i.at, align 8, !tbaa !377
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.tr3344, i64 48
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr3344, i64 72
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !897
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !897
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr3344, i64 80 ; 2 uses
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !244
  store <2 x ptr> %i.bk, ptr %i.bi, align 8, !tbaa !244
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr3344, i64 96
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1083
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  %i.bo = load ptr, ptr %i.al, align 8, !tbaa !903
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store ptr %i.bp, ptr %i.al, align 8, !tbaa !903
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %_ZN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EE5clearEv.exit
  tail call void @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.tr3243, ptr %i.am, ptr noundef nonnull align 8 dereferenceable(104) %.tr3344)
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %tailrecurse, %bb.a, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.h, %bb.k, %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BaseColumnPruner10AddBindingERNS_24BoundColumnRefExpressionENS_11ColumnIndexE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::ReferencedColumn", align 16 ; 26 uses
  %4 = alloca %"struct.std::pair.2227", align 8   ; 19 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1101
  %.not.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.h = load i64, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.in.i.i = phi ptr [ %i.e, %bb.b ], [ %.sroa.06.0.i.i, %bb.d ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !313 ; 5 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !375
  %i.k = icmp eq i64 %i.f, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.h, %i.m
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %bb.c, !llvm.loop !121

bb.e:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.b, align 8, !tbaa !375  ; 3 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -2960836687051489901       ; 2 uses
  %i.t = lshr i64 %i.s, 32
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -2960836687051489901       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = load i64, ptr %i.w, align 8, !tbaa !383  ; 3 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = xor i64 %i.y, %i.x
  %i.aa = mul i64 %i.z, -2960836687051489901      ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -2960836687051489901     ; 2 uses
  %i.ae = xor i64 %i.ad, %i.v
  %i.af = lshr i64 %i.ae, 32
  %i.ag = xor i64 %i.v, %i.af
  %i.ah = xor i64 %i.ag, %i.ad                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !1069 ; 2 uses
  %i.ak = urem i64 %i.ah, %i.aj                   ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !1068
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !386 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !313 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !388
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ap = phi i64 [ %.pre.i.i.i.i, %bb.f ], [ %i.bb, %bb.h ]
  %i.aq = phi ptr [ %i.ao, %bb.f ], [ %i.az, %bb.h ] ; 4 uses
  %i.ar = icmp eq i64 %i.ah, %i.ap
  br i1 %i.ar, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i: ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !375
  %i.au = icmp eq i64 %i.p, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = icmp eq i64 %i.x, %i.aw
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  br i1 %i.ay, label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.g
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not18.i.i.i.i, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !388 ; 2 uses
  %i.bc = urem i64 %i.bb, %i.aj
  %.not19.i.i.i.i = icmp eq i64 %i.bc, %i.ak
  br i1 %.not19.i.i.i.i, label %bb.g, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i, !llvm.loop !122

_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i, %bb.h, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %3, i8 0, i64 73, i1 false)
  store ptr %i.be, ptr %i.bd, align 16, !tbaa !1089
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 4 uses
  store i64 1, ptr %i.bf, align 8, !tbaa !1090
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bh, align 16, !tbaa !405
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bk = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #36
          to label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit unwind label %bb.x ; 3 uses

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = ptrtoint ptr %1 to i64
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %i.bk, ptr %3, align 16, !tbaa !1100
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1255
  store ptr %i.bn, ptr %i.bj, align 16, !tbaa !1256
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !903 ; 10 uses
  %.phi.trans.insert75 = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.pre76 = load ptr, ptr %.phi.trans.insert75, align 16, !tbaa !1083
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %.not.i.i16 = icmp eq ptr %.pre, %.pre76
  br i1 %.not.i.i16, label %bb.k, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.pre, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 16, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 3 uses
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !470
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !300 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !471 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !300
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !377
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !377
  br label %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i

_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i:          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !471
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !471
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !300
  store i64 0, ptr %i.cc, align 8, !tbaa !471
  store i8 0, ptr %i.bv, align 8, !tbaa !377
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.cg) #33
  %i.ch = getelementptr inbounds nuw i8, ptr %.pre, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !897
  store i8 %i.cj, ptr %i.ch, align 8, !tbaa !897
  %i.ck = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.cm = load <2 x ptr>, ptr %i.cl, align 8, !tbaa !244
  store <2 x ptr> %i.cm, ptr %i.ck, align 8, !tbaa !244
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre, i64 96
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1083
  store ptr %i.cp, ptr %i.cn, align 8, !tbaa !1083
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %i.cq = load ptr, ptr %i.bp, align 8, !tbaa !903
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 104 ; 2 uses
  store ptr %i.cr, ptr %i.bp, align 8, !tbaa !903
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit
  invoke void @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr %.pre, ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %._ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit_crit_edge unwind label %bb.y

._ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit_crit_edge: ; preds = %bb.k
  %.pre77 = load ptr, ptr %i.bp, align 8, !tbaa !903, !noalias !3790
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit: ; preds = %._ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit_crit_edge, %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i
  %i.cs = phi ptr [ %.pre77, %._ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit_crit_edge ], [ %i.cr, %_ZN6duckdb11ColumnIndexC2EOS0_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !3790)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !271
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %3, align 16, !tbaa !1131, !noalias !3790
  store <2 x ptr> %i.cu, ptr %i.ct, align 8, !tbaa !1131, !alias.scope !3790
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 40
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 32
  %8 = load ptr, ptr %i.bj, align 16, !tbaa !1256, !noalias !3790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %3, i8 0, i64 24, i1 false), !noalias !3790
  %9 = load ptr, ptr %6, align 8, !tbaa !1093, !noalias !3790
  %i.cw = load <2 x ptr>, ptr %7, align 16, !tbaa !1262, !noalias !3790
  %10 = insertelement <4 x ptr> poison, ptr %8, i64 0
  %11 = insertelement <4 x ptr> %10, ptr %9, i64 1
  %12 = shufflevector <2 x ptr> %i.cw, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x ptr> %11, <4 x ptr> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %13, ptr %5, align 8, !tbaa !299, !alias.scope !3790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !3790
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  %i.cy = load ptr, ptr %i.bo, align 16, !tbaa !902, !noalias !3790
  store ptr %i.cy, ptr %i.cx, align 8, !tbaa !902, !alias.scope !3790
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.cs, ptr %i.cz, align 8, !tbaa !903, !alias.scope !3790
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.db = load ptr, ptr %i.bq, align 16, !tbaa !1083, !noalias !3790
  store ptr %i.db, ptr %i.da, align 8, !tbaa !1083, !alias.scope !3790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !3790
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.de = load i8, ptr %i.dd, align 8, !tbaa !1259, !noalias !3790
  store i8 %i.de, ptr %i.dc, align 8, !tbaa !1259, !alias.scope !3790
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.dg = load ptr, ptr %i.bd, align 16, !tbaa !1089, !noalias !3790 ; 3 uses
  store ptr %i.dg, ptr %i.df, align 8, !tbaa !1089, !alias.scope !3790
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 2 uses
  %i.di = load i64, ptr %i.bf, align 8, !tbaa !1090, !noalias !3790 ; 2 uses
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !1090, !alias.scope !3790
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 4 uses
  %i.dk = load ptr, ptr %i.bg, align 16, !tbaa !1088, !noalias !3790 ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8, !tbaa !313, !alias.scope !3790
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 120
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1260, !noalias !3790
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !1260, !alias.scope !3790
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 16 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !730
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 5 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !1298, !alias.scope !3790
  %i.dq = icmp eq ptr %i.dg, %i.be
  br i1 %i.dq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit
  store ptr %i.dp, ptr %i.df, align 8, !tbaa !1089, !alias.scope !3790
  %i.dr = load ptr, ptr %i.be, align 16, !tbaa !1298, !noalias !3790
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !1298, !alias.scope !3790
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit
  %i.ds = phi ptr [ %i.dp, %bb.l ], [ %i.dg, %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EE9push_backEOS1_.exit ]
  %.not.i.i.i.i.i.i.i18 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !388
  %i.dv = urem i64 %i.du, %i.di
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dv
  store ptr %i.dj, ptr %i.dw, align 8, !tbaa !386
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i64 0, ptr %i.bi, align 8, !tbaa !580, !noalias !3790
  store i64 1, ptr %i.bf, align 8, !tbaa !1090, !noalias !3790
  store ptr null, ptr %i.be, align 16, !tbaa !1298, !noalias !3790
  store ptr %i.be, ptr %i.bd, align 16, !tbaa !1089, !noalias !3790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false), !noalias !3790
  %i.dx = invoke { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S4_EEEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %4)
          to label %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJS5_IS1_S2_EEEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit unwind label %bb.z

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJS5_IS1_S2_EEEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit: ; preds = %bb.o
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dx, 0
  %i.dy = load ptr, ptr %i.dj, align 8, !tbaa !1088 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.dy, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJS5_IS1_S2_EEEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i
  %.06.i.i = phi ptr [ %i.dz, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i ], [ %i.dy, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJS5_IS1_S2_EEEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit ] ; 7 uses
  %i.dz = load ptr, ptr %.06.i.i, align 8, !tbaa !313 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 88 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !902 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !903 ; 2 uses
  %.not.i.i2.i.i.i.i.i = icmp eq ptr %i.eb, %i.ed
  br i1 %.not.i.i2.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i35, %.lr.ph.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.i35 ] ; 2 uses
  call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i), !inline_history !85
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i36 = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.i.i.i.i.i.i.i36, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ea, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i, %.lr.ph.i.i35
  %i.ef = phi ptr [ %.pre.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i ], [ %i.eb, %.lr.ph.i.i35 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ef) #34, !inline_history !904
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.p, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eg) #33, !inline_history !905
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !300 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ei) #34, !inline_history !905
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i) #34
  %.not.i.i37 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i37, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit, label %.lr.ph.i.i35, !llvm.loop !112

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i, %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE7emplaceIJS5_IS1_S2_EEEES5_INSt8__detail14_Node_iteratorIS7_Lb0ELb1EEEbEDpOT_.exit
  %i.el = load ptr, ptr %i.df, align 8, !tbaa !1089
  %i.em = load i64, ptr %i.dh, align 8, !tbaa !1090
  %i.en = shl i64 %i.em, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.el, i8 0, i64 %i.en, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.eo = load ptr, ptr %i.df, align 8, !tbaa !1089 ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.dp
  br i1 %i.ep, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  call void @_ZdlPv(ptr noundef %i.eo) #34
  br label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i

_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i: ; preds = %bb.q, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit
  %i.eq = load ptr, ptr %i.cx, align 8, !tbaa !902 ; 3 uses
  %i.er = load ptr, ptr %i.cz, align 8, !tbaa !903 ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i2.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i, %.lr.ph.i.i.i
  %.0.i.i3.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i ], [ %i.eq, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i ] ; 2 uses
  call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i), !inline_history !88
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.es, %i.er
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cx, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i
  %i.et = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.eq, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i.i ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.et) #34, !inline_history !908
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i: ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.cv) #33
  %i.eu = load ptr, ptr %i.ct, align 8, !tbaa !1100 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.eu) #34
  br label %_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit

_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.ev = load ptr, ptr %i.bg, align 16, !tbaa !1088 ; 2 uses
  %.not5.i.i38 = icmp eq ptr %i.ev, null
  br i1 %.not5.i.i38, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit54, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51
  %.06.i.i40 = phi ptr [ %i.ew, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51 ], [ %i.ev, %_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit ] ; 7 uses
  %i.ew = load ptr, ptr %.06.i.i40, align 8, !tbaa !313 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i40, i64 88 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !902 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i40, i64 96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !903 ; 2 uses
  %.not.i.i2.i.i.i.i.i41 = icmp eq ptr %i.ey, %i.fa
  br i1 %.not.i.i2.i.i.i.i.i41, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i47, label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i39, %.lr.ph.i.i.i.i.i42
  %.0.i.i3.i.i.i.i.i43 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i42 ], [ %i.ey, %.lr.ph.i.i39 ] ; 2 uses
  call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i43), !inline_history !85
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i43, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i44 = icmp eq ptr %i.fb, %i.fa
  br i1 %.not.i.i.i.i.i.i.i44, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i45, label %.lr.ph.i.i.i.i.i42, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i45: ; preds = %.lr.ph.i.i.i.i.i42
  %.pre.i.i.i.i.i46 = load ptr, ptr %i.ex, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i47

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i47: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i45, %.lr.ph.i.i39
  %i.fc = phi ptr [ %.pre.i.i.i.i.i46, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i45 ], [ %i.ey, %.lr.ph.i.i39 ] ; 2 uses
  %.not.i.i1.i.i.i.i.i48 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i1.i.i.i.i.i48, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i49, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i47
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #34, !inline_history !904
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i49

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i49: ; preds = %bb.t, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i47
  %i.fd = getelementptr inbounds nuw i8, ptr %.06.i.i40, i64 56
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #33, !inline_history !905
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i40, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !300 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i40, i64 40
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i49
  call void @_ZdlPv(ptr noundef %i.ff) #34, !inline_history !905
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i50
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i40) #34
  %.not.i.i52 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i52, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit54, label %.lr.ph.i.i39, !llvm.loop !112

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit54: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i.i51, %_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev.exit
  %i.fi = load ptr, ptr %i.bd, align 16, !tbaa !1089
  %i.fj = load i64, ptr %i.bf, align 8, !tbaa !1090
  %i.fk = shl i64 %i.fj, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fi, i8 0, i64 %i.fk, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.fl = load ptr, ptr %i.bd, align 16, !tbaa !1089 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.be
  br i1 %i.fm, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit54
  call void @_ZdlPv(ptr noundef %i.fl) #34
  br label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i

_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i: ; preds = %bb.u, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit54
  %i.fn = load ptr, ptr %i.bo, align 16, !tbaa !902 ; 3 uses
  %i.fo = load ptr, ptr %i.bp, align 8, !tbaa !903 ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i2.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.fn, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i ] ; 2 uses
  call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !88
  %i.fp = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.fp, %i.fo
  br i1 %.not.i.i.i.i20, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.bo, align 16, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i
  %i.fq = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.fn, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fq) #34, !inline_history !908
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i: ; preds = %bb.v, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #33
  %i.fr = load ptr, ptr %3, align 16, !tbaa !1100 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.fr, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb16ReferencedColumnD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.fr) #34
  br label %_ZN6duckdb16ReferencedColumnD2Ev.exit

_ZN6duckdb16ReferencedColumnD2Ev.exit:            ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.af

bb.x:                                             ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %bb.k
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.o
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %i.fu, %bb.z ], [ %i.ft, %bb.y ], [ %i.fs, %bb.x ]
  call void @_ZN6duckdb16ReferencedColumnD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn

_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.d
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.d ], [ %i.aq, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 32 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !1255 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 40 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !1256
  %.not.i.i21 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i21, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit
  %i.ga = ptrtoint ptr %1 to i64
  store i64 %i.ga, ptr %i.fx, align 8
  %i.gb = load ptr, ptr %i.fw, align 8, !tbaa !1255
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store ptr %i.gc, ptr %i.fw, align 8, !tbaa !1255
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit34

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN6duckdb13ColumnBindingENS0_16ReferencedColumnENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S2_EEE4findERS6_.exit
  %i.gd = load ptr, ptr %i.fv, align 8, !tbaa !1100 ; 5 uses
  %i.ge = ptrtoint ptr %i.fx to i64
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.ad, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22: ; preds = %bb.ac
  %i.gi = ashr exact i64 %i.gg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i23 = tail call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i.i.i23, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = tail call i64 @llvm.umin.i64(i64 %i.gj, i64 1152921504606846975)
  %i.gm = select i1 %i.gk, i64 1152921504606846975, i64 %i.gl ; 3 uses
  %.not.i.i.i.i24 = icmp ne i64 %i.gm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i24)
  %i.gn = shl nuw nsw i64 %i.gm, 3
  %i.go = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #36 ; 5 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  %i.gq = ptrtoint ptr %1 to i64
  store i64 %i.gq, ptr %i.gp, align 8
  %.not10.i.i.i.i.i.i.i25 = icmp eq ptr %i.gd, %i.fx
  br i1 %.not10.i.i.i.i.i.i.i25, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22, %.lr.ph.i.i.i.i.i.i.i26
  %.012.i.i.i.i.i.i.i27 = phi ptr [ %i.gt, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.go, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i28 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.gd, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3792)
  %i.gr = load i64, ptr %.0911.i.i.i.i.i.i.i28, align 8, !alias.scope !3792, !noalias !3791
  store i64 %i.gr, ptr %.012.i.i.i.i.i.i.i27, align 8, !alias.scope !3791, !noalias !3792
  %i.gs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i28, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i27, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i29 = icmp eq ptr %i.gs, %i.fx
  br i1 %.not.i.i.i.i.i.i.i29, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !142

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22
  %.0.lcssa.i.i.i.i.i.i.i31 = phi ptr [ %i.go, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i22 ], [ %i.gt, %.lr.ph.i.i.i.i.i.i.i26 ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i31, i64 8
  %.not.i23.i.i.i32 = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i.i.i32, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i33, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i30
  tail call void @_ZdlPv(ptr noundef nonnull %i.gd) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i33

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i33: ; preds = %bb.ae, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i30
  store ptr %i.go, ptr %i.fv, align 8, !tbaa !1100
  store ptr %i.gu, ptr %i.fw, align 8, !tbaa !1255
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.gv, ptr %i.fy, align 8, !tbaa !1256
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit34

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit34: ; preds = %bb.ab, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i33
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 72
  tail call void @_ZN6duckdb16BaseColumnPruner17MergeChildColumnsERNS_6vectorINS_11ColumnIndexELb1ESaIS2_EEERS2_(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(24) %i.gw, ptr noundef nonnull align 8 dereferenceable(104) %2)
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit34, %_ZN6duckdb16ReferencedColumnD2Ev.exit
  %.sroa.059.0 = phi ptr [ %.fca.0.extract, %_ZN6duckdb16ReferencedColumnD2Ev.exit ], [ %.sroa.06.1.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE9push_backEOS3_.exit34 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gy = load i8, ptr %i.gx, align 8, !tbaa !1271
  %i.gz = icmp eq i8 %i.gy, 1
  br i1 %i.gz, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.059.0, i64 96
  store i8 1, ptr %i.ha, align 8, !tbaa !1261
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIN6duckdb13ColumnBindingENS0_16ReferencedColumnEED2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #33
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1089 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.c) #34
  br label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i

_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !902  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !903  ; 2 uses
  %.not.i.i2.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i2.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i, %.lr.ph.i.i
  %.0.i.i3.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.g, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i), !inline_history !88
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i
  %i.k = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.g, %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #34, !inline_history !908
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.l) #33
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1100 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i, label %_ZN6duckdb16ReferencedColumnD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #34
  br label %_ZN6duckdb16ReferencedColumnD2Ev.exit

_ZN6duckdb16ReferencedColumnD2Ev.exit:            ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb16ReferencedColumnD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #33
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1089 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EED2Ev.exit, label %bb.b

end_hunk_1
begin_hunk_2_@_ZN6duckdb16ReferencedColumn7AddPathERKNS_11ColumnIndexE:bb.a
  br i1 %.not17, label %._crit_edge, label %bb.d, !llvm.loop !3794

._crit_edge:                                      ; preds = %bb.g, %bb.c
  %i.x = tail call { ptr, i8 } @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRKS1_EEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb11ColumnIndex16VerifySinglePathEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !244  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !244  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %tailrecurse._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.g, %i.h
  %.not25 = icmp eq i64 %i.i, 104
  br i1 %.not25, label %tailrecurse, label %.lr.ph._crit_edge

.lr.ph:                                           ; preds = %tailrecurse
  %i.j = ptrtoint ptr %i.ae to i64
  %i.k = ptrtoint ptr %i.ac to i64
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp eq i64 %i.l, 104
  br i1 %.not, label %tailrecurse, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %.tr13.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %i.aa, %.lr.ph ]
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.n = getelementptr inbounds nuw i8, ptr %.tr13.lcssa, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !903
  %i.p = load ptr, ptr %.lcssa, align 8, !tbaa !902
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 104
  store i64 %i.t, ptr %i.a, align 8, !tbaa !270
  invoke void @_ZN6duckdb17InternalExceptionC2IJmEEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.g unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.lr.ph._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.w = load ptr, ptr %1, align 8, !tbaa !300    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.w) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #33
  br label %bb.f

tailrecurse:                                      ; preds = %.lr.ph.preheader, %.lr.ph
  %i.z = phi ptr [ %i.ab, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 0) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !244 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !244 ; 2 uses
  %i.af = icmp eq ptr %i.ac, %i.ae
  br i1 %i.af, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn8 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.e ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK6duckdb11ColumnIndex13IsChildPathOfERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNK6duckdb11ColumnIndex16VerifySinglePathEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  tail call void @_ZNK6duckdb11ColumnIndex16VerifySinglePathEv(ptr noundef nonnull align 8 dereferenceable(104) %1)
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.sroa.014.0 = phi ptr [ %1, %bb.a ], [ %i.z, %bb.h ] ; 5 uses
  %.sroa.020.0 = phi ptr [ %0, %bb.a ], [ %i.y, %bb.h ] ; 5 uses
  %i.a = load i8, ptr %.sroa.020.0, align 8, !tbaa !264, !range !265, !noundef !266
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr %.sroa.014.0, align 8, !tbaa !264, !range !265, !noundef !266
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.020.0)
  %i.f = tail call noundef i64 @_ZNK6duckdb11ColumnIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.014.0)
  %.not = icmp eq i64 %i.e, %i.f
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.e:                                             ; preds = %bb.b
  br i1 %i.d, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb11ColumnIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.020.0) ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb11ColumnIndex12GetFieldNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.014.0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !471  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !471
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.g, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.n = icmp eq i64 %i.j, 0
  br i1 %i.n, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.g
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !300
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !300
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.p, ptr %i.o, i64 %i.j)
  %.not30 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not30, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25: ; preds = %bb.g, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !244
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !244
  %.not31 = icmp eq ptr %i.r, %i.t                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !244
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !244
  %.not32 = icmp eq ptr %i.v, %i.x
  %brmerge12 = or i1 %.not31, %.not32
  br i1 %brmerge12, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.split.loop.exit, label %bb.h

bb.h:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %i.y = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0)
  %i.z = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 noundef 0)
  br label %bb.b, !llvm.loop !3795

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.split.loop.exit: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread25
  %not..not31.le = xor i1 %.not31, true
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %bb.d, %bb.e, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.f, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.split.loop.exit
  %.2 = phi i1 [ %not..not31.le, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.split.loop.exit ], [ false, %bb.f ], [ false, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12emplace_backIJRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS6_EEEmNS0_11ColumnIndexEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(104) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1094 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1299
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1292 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !1097   ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775792
  br i1 %i.k, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i, !prof !296

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #36
  %.pre = load ptr, ptr %1, align 8, !tbaa !1297
  %.pre8 = load ptr, ptr %i.e, align 8, !tbaa !1297
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.f, %bb.b ], [ %.pre8, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.n = phi ptr [ %i.g, %bb.b ], [ %.pre, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i ] ; 2 uses
  %i.o = phi ptr [ null, %bb.b ], [ %i.l, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.j
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.n, %i.m
  br i1 %.not7.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1296
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !151

_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.o, %bb.d ], [ %i.r, %.lr.ph.i.i.i.i.i.i ]
  %i.s = load i64, ptr %2, align 8, !tbaa !270
  store i64 %i.s, ptr %i.b, align 8, !tbaa !1291
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.o, ptr %i.t, align 8, !tbaa !1097
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.u, align 8, !tbaa !1292
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.p, ptr %i.v, align 8, !tbaa !1295
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !470
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !300 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !471 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIN6duckdb26ReferencedExtractComponentESaIS1_EED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !300
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !377
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !377
  br label %_ZNSt6vectorIN6duckdb26ReferencedExtractComponentESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb26ReferencedExtractComponentESaIS1_EED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !471
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !471
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !300
  store i64 0, ptr %i.ai, align 8, !tbaa !471
  store i8 0, ptr %i.ab, align 8, !tbaa !377
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am) #33
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !897
  store i8 %i.ap, ptr %i.an, align 8, !tbaa !897
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !244
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !244
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1083
  store ptr %i.av, ptr %i.at, align 8, !tbaa !1083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !1094
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !1094
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE17_M_realloc_insertIJRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS6_EEEmNS0_11ColumnIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(104) %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt6vectorIN6duckdb26ReferencedExtractComponentESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BaseColumnPruner15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i8, ptr %i.b, align 8, !tbaa !809
  %.not.i = icmp eq i8 %i.c, 12
  br i1 %.not.i, label %bb.b, label %_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb14BaseExpression4CastINS_19BoundCastExpressionEEERT_v(ptr noundef nonnull align 8 dereferenceable(56) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.g = load i8, ptr %i.f, align 8, !tbaa !3806, !range !265, !noundef !266
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.j = tail call noundef zeroext i1 @_ZN6duckdb16BaseColumnPruner23HandleExtractExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrIS5_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %i.i, ptr nonnull %1)
  br i1 %i.j, label %bb.e, label %_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit

_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN6duckdb16BaseColumnPruner23HandleExtractExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrIS5_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull %1, ptr null)
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit
  tail call void @_ZN6duckdb22LogicalOperatorVisitor15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %_ZN6duckdbL15TryGetCastChildERNS_10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEERNS_12optional_ptrIS4_Lb1EEE.exit, %bb.c, %bb.d
  ret void
}

declare void @_ZN6duckdb22LogicalOperatorVisitor15VisitExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16BaseColumnPruner12VisitReplaceERNS_24BoundColumnRefExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.141") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb16BaseColumnPruner10AddBindingERNS_24BoundColumnRefExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 8 dereferenceable(112) %2)
  store ptr null, ptr %0, align 8, !tbaa !459
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6duckdb16BaseColumnPruner12VisitReplaceERNS_24BoundReferenceExpressionEPNS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind noalias nofree readnone sret(%"class.duckdb::unique_ptr.141") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 53, ptr %i.a, align 8, !tbaa !270
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %4, align 8, !tbaa !300
  %i.e = load i64, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.d, ptr noundef nonnull align 1 dereferenceable(53) @.str, i64 53, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !471
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.e unwind label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc
  %.0 = phi i1 [ false, %bb.a ], [ true, %.noexc ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm:bb.a
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !580
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1069
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %2, ptr %i.t, align 8, !tbaa !388
  %i.u = load ptr, ptr %0, align 8, !tbaa !1068   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !386  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !313
  store ptr %i.x, ptr %3, align 8, !tbaa !313
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !386
  store ptr %3, ptr %i.y, align 8, !tbaa !313
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1086
  store ptr %i.aa, ptr %3, align 8, !tbaa !313
  store ptr %3, ptr %i.z, align 8, !tbaa !1086
  %i.ab = load ptr, ptr %3, align 8, !tbaa !313   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1069
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !388
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !386
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !386
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1101
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1101
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1662 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !1661
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16ReferencedColumnC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode.3650", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1255 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1100   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !296

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !1100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !1255
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !1256
  %i.m = load ptr, ptr %1, align 8, !tbaa !1131   ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !1131 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.o = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.o, ptr %.09.i.i.i.i.i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5798

_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !1255
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1094 ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !1093 ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i11 = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i11, label %.noexc13, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit
  %i.z = sdiv exact i64 %i.y, 136
  %i.aa = icmp ugt i64 %i.z, 67818912035696880
  br i1 %i.aa, label %.noexc.i.i.i12, label %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, !prof !296

.noexc.i.i.i12:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i12
  unreachable

_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit
  %i.ac = phi ptr [ null, %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit ], [ %i.ab, %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !1093
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !1094
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1299
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !1262
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !1262
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb23ReferencedStructExtractESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.ag, ptr %i.ah, ptr noundef %i.ac)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc13
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !1093 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #34
  br label %.body

bb.g:                                             ; preds = %.noexc13
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !1094
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !903 ; 2 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !902 ; 2 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i14 = icmp eq ptr %i.ao, %i.ap
  br i1 %.not.i.i.i.i.i14, label %.noexc18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = sdiv exact i64 %i.as, 104
  %i.au = icmp ugt i64 %i.at, 88686269585142075
  br i1 %i.au, label %.noexc.i.i.i16, label %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !296

.noexc.i.i.i16:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc17 unwind label %bb.n, !inline_history !147

.noexc17:                                         ; preds = %.noexc.i.i.i16
  unreachable

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #36
          to label %.noexc18 unwind label %bb.n, !inline_history !147

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %i.aw = phi ptr [ null, %bb.g ], [ %i.av, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.aw, ptr %i.al, align 8, !tbaa !902
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !903
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !1083
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !244
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !244
  %i.bc = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.ba, ptr %i.bb, ptr noundef %i.aw)
          to label %bb.k unwind label %bb.i, !inline_history !146

bb.i:                                             ; preds = %.noexc18
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i15, label %.body19, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.be) #34, !inline_history !145
  br label %.body19

bb.k:                                             ; preds = %.noexc18
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !903
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !1259
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !1259
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.bi, align 8, !tbaa !1089
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !1090
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !1090
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.bn, align 8, !tbaa !313
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !1260
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !1260
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !730
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.bt, align 8, !tbaa !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.bi, ptr %2, align 8, !tbaa !5799
  invoke void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %i.bj, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i12
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i16
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body19

bb.o:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.al) #33
  br label %.body19

.body19:                                          ; preds = %bb.n, %bb.j, %bb.i, %bb.o
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.bv, %bb.n ], [ %i.bd, %bb.j ], [ %i.bd, %bb.i ]
  call void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.r) #33
  br label %.body

.body:                                            ; preds = %bb.m, %bb.f, %bb.e, %.body19
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body19 ], [ %i.bu, %bb.m ], [ %i.aj, %bb.f ], [ %i.aj, %bb.e ]
  %i.bx = load ptr, ptr %0, align 8, !tbaa !1100  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.bx) #34
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EED2Ev.exit: ; preds = %.body, %bb.p
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb23ReferencedStructExtractESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp eq ptr %0, %1
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit
  %.022 = phi ptr [ %i.y, %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.sroa.09.021 = phi ptr [ %i.x, %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 5 uses
  %i.a = load i64, ptr %.sroa.09.021, align 8, !tbaa !1291
  store i64 %i.a, ptr %.022, align 8, !tbaa !1291
  %i.b = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1292 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !1097 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ugt i64 %i.i, 9223372036854775792
  br i1 %i.j, label %.noexc.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i.i.i, !prof !296

.noexc.i.i.i.i.i:                                 ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i.i.i, %.lr.ph
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.k, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !1097
  %i.m = getelementptr inbounds nuw i8, ptr %.022, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1292
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.022, i64 24
  store ptr %i.n, ptr %i.o, align 8, !tbaa !1295
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1297 ; 2 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !1297 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not7.i.i.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.l, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.p, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1296
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !151

_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc8 ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i, ptr %i.m, align 8, !tbaa !1292
  %i.t = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 32
  invoke void @_ZN6duckdb11ColumnIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.t, ptr noundef nonnull align 8 dereferenceable(104) %i.u)
          to label %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !1097 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.w) #34
  br label %.body

_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit: ; preds = %_ZN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEC2ERKS3_.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 136 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.022, i64 136 ; 2 uses
  %.not = icmp eq ptr %i.x, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5800

.loopexit:                                        ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %.noexc.i.i.i.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.c ], [ %i.v, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.z = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #33 ; 0 uses
  invoke void @_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.022)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #35
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.y, %_ZSt10_ConstructIN6duckdb23ReferencedStructExtractEJRKS1_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %bb.e, %.body
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.ab

bb.h:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #37
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1089
  %.not.not = icmp eq ptr %i.a, null              ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1090 ; 4 uses
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d, !prof !296

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !1298
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  br i1 %i.f, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !296

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ugt i64 %i.c, 2305843009213693951
  br i1 %i.g, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.h = shl nuw nsw i64 %i.c, 3                  ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !1089
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1088 ; 4 uses
  %.not29 = icmp eq ptr %i.k, null
  br i1 %.not29, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #36
          to label %.noexc unwind label %bb.r     ; 6 uses

.noexc:                                           ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !313
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  invoke void @_ZN6duckdb11ColumnIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.n, ptr noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %.noexc
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %i.p) #33 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #37
  unreachable

bb.k:                                             ; preds = %bb.h
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.w = load i64, ptr %i.v, align 8, !tbaa !388  ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !388
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.x, align 8, !tbaa !1088
  %i.y = load ptr, ptr %0, align 8, !tbaa !1089
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1090
  %i.ab = urem i64 %i.w, %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ab
  store ptr %i.x, ptr %i.ac, align 8, !tbaa !386
  %.02737 = load ptr, ptr %i.k, align 8, !tbaa !313 ; 2 uses
  %.not3038 = icmp eq ptr %.02737, null
  br i1 %.not3038, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.t
  %.02740 = phi ptr [ %.027, %bb.t ], [ %.02737, %bb.l ] ; 3 uses
  %.039 = phi ptr [ %i.ad, %bb.t ], [ %i.l, %bb.l ] ; 2 uses
  %i.ad = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #36
          to label %.noexc33 unwind label %bb.s   ; 6 uses

.noexc33:                                         ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.02740, i64 8
  store ptr null, ptr %i.ad, align 8, !tbaa !313
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  invoke void @_ZN6duckdb11ColumnIndexC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
          to label %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit36 unwind label %bb.m

bb.m:                                             ; preds = %.noexc33
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #33 ; 0 uses
  tail call void @_ZdlPv(ptr noundef nonnull %i.ad) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #37
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable

_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit36: ; preds = %.noexc33
  store ptr %i.ad, ptr %.039, align 8, !tbaa !313
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  %i.an = getelementptr inbounds nuw i8, ptr %.02740, i64 112
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !388 ; 2 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !388
  %i.ap = load i64, ptr %i.z, align 8, !tbaa !1090
  %i.aq = urem i64 %i.ao, %i.ap
  %i.ar = load ptr, ptr %0, align 8, !tbaa !1089
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !386
  %.not32 = icmp eq ptr %i.at, null
  br i1 %.not32, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit36
  store ptr %.039, ptr %i.as, align 8, !tbaa !386
  br label %bb.t

bb.r:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.s:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

bb.t:                                             ; preds = %bb.q, %_ZNKSt8__detail10_AllocNodeISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEEclIJRKS3_EEEPS4_DpOT_.exit36
  %.027 = load ptr, ptr %.02740, align 8, !tbaa !313 ; 2 uses
  %.not30 = icmp eq ptr %.027, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !5801

.body:                                            ; preds = %bb.s, %bb.n, %bb.r, %bb.i
  %.pn = phi { ptr, i32 } [ %i.r, %bb.i ], [ %i.au, %bb.r ], [ %i.av, %bb.s ], [ %i.aj, %bb.n ]
  %.026 = extractvalue { ptr, i32 } %.pn, 0
  %i.aw = tail call ptr @__cxa_begin_catch(ptr %.026) #33 ; 0 uses
  tail call void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #33
  br i1 %.not.not, label %bb.u, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.u:                                             ; preds = %.body
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1089  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZdlPv(ptr noundef %i.ax) #34
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.w:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.x unwind label %bb.y

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.v, %bb.u, %.body
  invoke void @__cxa_rethrow() #35
          to label %bb.z unwind label %bb.w

bb.x:                                             ; preds = %bb.w
  resume { ptr, i32 } %i.ba

.loopexit:                                        ; preds = %bb.t, %bb.l, %bb.f
  ret void

bb.y:                                             ; preds = %bb.w
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #37
  unreachable

bb.z:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
end_hunk_3
begin_hunk_4_@_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS1_RmEEES2_INS6_14_Node_iteratorIS4_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a

_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i: ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ad = invoke noundef zeroext i1 @_ZNK6duckdb11ColumnIndexeqERKS0_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(120) %i.ac)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i
  br i1 %i.ad, label %_ZNKSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i: ; preds = %.noexc, %bb.m
  %i.ae = load ptr, ptr %.0.i.i, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i, label %.critedge28, label %bb.n

bb.n:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i
  %i.af = load i64, ptr %i.s, align 8, !tbaa !1265
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !388 ; 2 uses
  %i.ai = urem i64 %i.ah, %i.af
  %.not19.i.i = icmp eq i64 %i.ai, %i.u
  br i1 %.not19.i.i, label %bb.m, label %.critedge28, !llvm.loop !204

_ZNKSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %.noexc
  %i.aj = load ptr, ptr %.015.i.i, align 8, !tbaa !313 ; 2 uses
  %.not23 = icmp eq ptr %i.aj, null
  br i1 %.not23, label %.critedge28, label %.loopexit

bb.o:                                             ; preds = %.critedge
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.i.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.critedge28:                                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS5_Lb1EEE.exit.thread.i.i, %bb.n, %bb.k, %_ZNKSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, %bb.j
  %i.am = invoke ptr @_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS6_10_Hash_nodeIS4_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.u, i64 noundef %i.r, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %.critedge28
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit, %_ZNKSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.037.0.ph = phi ptr [ %i.aj, %_ZNKSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %.sroa.033.0, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb11ColumnIndexESt4pairIKS2_mENS_10_Select1stENS1_19ColumnIndexEqualityENS1_23ColumnIndexHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS4_RKNS_16_Hash_node_valueIS5_Lb1EEE.exit ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !902 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !903 ; 2 uses
  %.not.i.i2.i.i.i.i.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i.i2.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.loopexit, %.lr.ph.i.i.i.i.i
  %.0.i.i3.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.loopexit ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i.i.i), !inline_history !85
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i, %.loopexit
  %i.at = phi ptr [ %.pre.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i.i.i ], [ %i.ap, %.loopexit ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #34, !inline_history !904
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #33, !inline_history !905
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !300 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.aw) #34, !inline_history !905
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge28, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i
  %.sroa.4.044 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i ], [ 1, %.critedge28 ]
  %.sroa.037.043 = phi ptr [ %.sroa.037.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb11ColumnIndexEmELb1EEEEE18_M_deallocate_nodeEPS7_.exit.i ], [ %i.am, %.critedge28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.037.043, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.044, 1
  ret { ptr, i8 } %.fca.1.insert

bb.s:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.ak, %bb.o ], [ %i.an, %bb.q ], [ %i.al, %bb.p ]
  call void @_ZNSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !463  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !466    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871)
  %i.l = select i1 %i.j, i64 144115188075855871, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 6
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 33, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.s) #33
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 33, i1 false), !alias.scope !5907
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #33
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #33
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !67

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i17 ], [ %i.x, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 33, i1 false), !alias.scope !5908
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #33
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.z) #33
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !67

_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ab, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !466
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !463
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !464
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJS2_IS1_S4_EEEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(152) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<duckdb::ColumnBinding, std::pair<const duckdb::ColumnBinding, duckdb::ReferencedColumn>, std::allocator<std::pair<const duckdb::ColumnBinding, duckdb::ReferencedColumn>>, std::__detail::_Select1st, duckdb::ColumnBindingEquality, duckdb::ColumnBindingHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %0, ptr %2, align 8, !tbaa !1661
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #36 ; 18 uses
  store ptr null, ptr %i.a, align 8, !tbaa !313
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.b, ptr noundef nonnull align 8 dereferenceable(152) %1, i64 16, i1 false), !tbaa.struct !271
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !1131
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !1131
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 48
  %5 = load ptr, ptr %i.g, align 8, !tbaa !1256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, i8 0, i64 24, i1 false)
  %6 = load ptr, ptr %3, align 8, !tbaa !1093
  %i.h = load <2 x ptr>, ptr %4, align 8, !tbaa !1262
  %7 = insertelement <4 x ptr> poison, ptr %5, i64 0
  %8 = insertelement <4 x ptr> %7, ptr %6, i64 1
  %9 = shufflevector <2 x ptr> %i.h, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = shufflevector <4 x ptr> %8, <4 x ptr> %9, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %10, ptr %i.f, align 8, !tbaa !299
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.k = load <2 x ptr>, ptr %i.j, align 8, !tbaa !244
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !244
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1083
  store ptr %i.n, ptr %i.l, align 8, !tbaa !1083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i8, ptr %i.p, align 8, !tbaa !1259
  store i8 %i.q, ptr %i.o, align 8, !tbaa !1259
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 104 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1089 ; 3 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1089
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1090 ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !tbaa !1090
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1088 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !313
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1260
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !1260
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !730
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !1298
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.ah = icmp eq ptr %i.t, %i.ag
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.af, ptr %i.r, align 8, !tbaa !1089
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !1298
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !1298
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.aj = phi ptr [ %i.af, %bb.b ], [ %i.t, %bb.a ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 112
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !388
  %i.am = urem i64 %i.al, %i.w
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.am
  store ptr %i.x, ptr %i.an, align 8, !tbaa !386
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit: ; preds = %bb.c, %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.ap, align 8, !tbaa !580
  store i64 1, ptr %i.v, align 8, !tbaa !1090
  store ptr null, ptr %i.ag, align 8, !tbaa !1298
  store ptr %i.ag, ptr %i.s, align 8, !tbaa !1089
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !1662
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1101
  %.not.not = icmp eq i64 %i.ar, 0                ; 2 uses
  br i1 %.not.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.032.0.in = phi ptr [ %i.as, %bb.e ], [ %.sroa.032.0, %bb.g ]
  %.sroa.032.0 = load ptr, ptr %.sroa.032.0.in, align 8, !tbaa !313 ; 5 uses
  %.not = icmp eq ptr %.sroa.032.0, null
  br i1 %.not, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 8
  %i.av = load i64, ptr %i.b, align 8, !tbaa !375
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !375
  %i.ax = icmp eq i64 %i.av, %i.aw
  %i.ay = load i64, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.032.0, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = icmp eq i64 %i.ay, %i.ba
  %i.bc = select i1 %i.ax, i1 %i.bb, i1 false
  br i1 %i.bc, label %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %bb.f, !llvm.loop !5909

.loopexit:                                        ; preds = %bb.f, %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJS2_IS1_S4_EEEEPNS7_16_Hashtable_allocISaINS7_10_Hash_nodeIS5_Lb1EEEEEEDpOT_.exit
  %i.bd = load i64, ptr %i.b, align 8, !tbaa !375 ; 3 uses
  %i.be = lshr i64 %i.bd, 32
  %i.bf = xor i64 %i.be, %i.bd
  %i.bg = mul i64 %i.bf, -2960836687051489901     ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, -2960836687051489901     ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !383 ; 3 uses
  %i.bm = lshr i64 %i.bl, 32
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -2960836687051489901     ; 2 uses
  %i.bp = lshr i64 %i.bo, 32
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -2960836687051489901     ; 2 uses
  %i.bs = xor i64 %i.br, %i.bj
  %i.bt = lshr i64 %i.bs, 32
  %i.bu = xor i64 %i.bj, %i.bt
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1069 ; 2 uses
  %i.by = urem i64 %i.bv, %i.bx                   ; 3 uses
  br i1 %.not.not, label %.critedge27, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.bz = load ptr, ptr %0, align 8, !tbaa !1068
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !386 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i, label %.critedge27, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !313 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 160
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !388
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.cd = phi i64 [ %.pre.i.i, %bb.i ], [ %i.cp, %bb.k ]
  %i.ce = phi ptr [ %i.cc, %bb.i ], [ %i.cn, %bb.k ] ; 4 uses
  %i.cf = icmp eq i64 %i.bv, %i.cd
  br i1 %i.cf, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !375
  %i.ci = icmp eq i64 %i.bd, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = load i64, ptr %i.cj, align 8
  %i.cl = icmp eq i64 %i.bl, %i.ck
  %i.cm = select i1 %i.ci, i1 %i.cl, i1 false
  br i1 %i.cm, label %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, %bb.j
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !313 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.cn, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 160
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !388 ; 2 uses
  %i.cq = urem i64 %i.cp, %i.bx
  %.not19.i.i = icmp eq i64 %i.cq, %i.by
  br i1 %.not19.i.i, label %bb.j, label %.critedge27, !llvm.loop !122

.critedge27:                                      ; preds = %bb.k, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %bb.h, %.loopexit
  %i.cr = invoke ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.by, i64 noundef %i.bv, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %.critedge27
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.cs

_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.g, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i
  %.sroa.036.0.ph = phi ptr [ %i.ce, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.sroa.032.0, %bb.g ]
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  tail call void @__clang_call_terminate(ptr %i.cu) #37
  unreachable

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.4.043 = phi i8 [ 0, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ 1, %.critedge27 ]
  %.sroa.036.042 = phi ptr [ %.sroa.036.0.ph, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %i.cr, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.043, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE8_M_eraseEmPNS3_15_Hash_node_baseEPNS3_10_Hash_nodeIS1_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1089   ; 3 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 2 uses
  %i.d = icmp eq ptr %2, %i.c
  %i.e = load ptr, ptr %3, align 8, !tbaa !313    ; 4 uses
  %.not18 = icmp eq ptr %i.e, null                ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %.not18, label %._crit_edge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1090
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !388
  %i.j = urem i64 %i.i, %i.g                      ; 2 uses
  %.not9.i = icmp eq i64 %i.j, %1
  br i1 %.not9.i, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j
  store ptr %i.c, ptr %i.k, align 8, !tbaa !386
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  store ptr %i.e, ptr %i.l, align 8, !tbaa !1088
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  store ptr null, ptr %i.b, align 8, !tbaa !386
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit

bb.g:                                             ; preds = %bb.a
  br i1 %.not18, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1090
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.q = load i64, ptr %i.p, align 8, !tbaa !388
  %i.r = urem i64 %i.q, %i.o                      ; 2 uses
  %.not17 = icmp eq i64 %i.r, %1
  br i1 %.not17, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r
  store ptr %2, ptr %i.s, align 8, !tbaa !386
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit: ; preds = %bb.f, %bb.c, %bb.h, %bb.i, %bb.g
  %i.t = load ptr, ptr %3, align 8, !tbaa !313    ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !313
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !902  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !903  ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i2.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit, %.lr.ph.i.i.i
  %.0.i.i3.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.v, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_remove_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEEm.exit ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i), !inline_history !85
end_hunk_4
begin_hunk_5_@_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE10_M_emplaceIJRKS1_EEESt4pairINS3_14_Node_iteratorIS1_Lb1ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
bb.r:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ar) #34, !inline_history !904
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.r, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #33, !inline_history !905
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !300 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.au) #34, !inline_history !905
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #34
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i
  %.sroa.4.043 = phi i8 [ 0, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i ], [ 1, %.critedge27 ]
  %.sroa.036.042 = phi ptr [ %.sroa.036.0.ph, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit.i ], [ %i.ak, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.043, 1
  ret { ptr, i8 } %.fca.1.insert

bb.s:                                             ; preds = %bb.o, %bb.q, %bb.p, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.ai, %bb.o ], [ %i.al, %bb.q ], [ %i.aj, %bb.p ]
  call void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS3_10_Hash_nodeIS1_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !580
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1090
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1260
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !580
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !1090
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i64 %2, ptr %i.t, align 8, !tbaa !388
  %i.u = load ptr, ptr %0, align 8, !tbaa !1089   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !386  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !313
  store ptr %i.x, ptr %3, align 8, !tbaa !313
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !386
  store ptr %3, ptr %i.y, align 8, !tbaa !313
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1088
  store ptr %i.aa, ptr %3, align 8, !tbaa !313
  store ptr %3, ptr %i.z, align 8, !tbaa !1088
  %i.ab = load ptr, ptr %3, align 8, !tbaa !313   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !1090
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !388
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !386
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !386
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS3_10_Hash_nodeIS1_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !1260
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !1260
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1694 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !902  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !903  ; 2 uses
  %.not.i.i2.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i2.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.0.i.i3.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  tail call void @_ZSt8_DestroyIN6duckdb11ColumnIndexEEvPT_(ptr noundef %.0.i.i3.i.i.i), !inline_history !85
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i.i3.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !902
  br label %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i, %bb.b
  %i.h = phi ptr [ %.pre.i.i.i, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #34, !inline_history !904
  br label %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11ColumnIndexES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #33, !inline_history !905
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !300  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #34, !inline_history !905
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit: ; preds = %_ZNSt6vectorIN6duckdb11ColumnIndexESaIS1_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #34
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE18_M_deallocate_nodeEPS4_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !296

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1298
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !296

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb11ColumnIndexELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1088 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1088
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !313 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !388
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !386  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !1088
  store ptr %i.o, ptr %.02530, align 8, !tbaa !313
  store ptr %.02530, ptr %i.g, align 8, !tbaa !1088
  store ptr %i.g, ptr %i.m, align 8, !tbaa !386
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !313
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !386
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !313
  store ptr %i.r, ptr %.02530, align 8, !tbaa !313
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !386
  store ptr %.02530, ptr %i.s, align 8, !tbaa !313
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !5912

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !1089   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  tail call void @_ZdlPv(ptr noundef %i.t) #34
  br label %_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.w, align 8, !tbaa !1090
  store ptr %.0.i, ptr %0, align 8, !tbaa !1089
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE17_M_realloc_insertIJRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS6_EEEmNS0_11ColumnIndexEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(104) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1094 ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1093   ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 136                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 67818912035696880)
  %i.l = select i1 %i.j, i64 67818912035696880, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12_M_check_lenEmPKc.exit
  %i.o = mul nuw nsw i64 %i.l, 136
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36
  br label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.n ; 13 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1292 ; 3 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !1097   ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %.noexc28, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit
  %i.y = icmp ugt i64 %i.x, 9223372036854775792
  br i1 %i.y, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i, !prof !296

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #36
          to label %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge: ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !1297
  %.pre38 = load ptr, ptr %i.s, align 8, !tbaa !1297
  br label %.noexc28

.noexc28:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge, %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit
  %i.aa = phi ptr [ %i.t, %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit ], [ %.pre38, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ] ; 2 uses
  %i.ab = phi ptr [ %i.u, %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit ], [ %.pre, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ null, %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE11_M_allocateEm.exit ], [ %i.z, %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i..noexc28_crit_edge ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.aa
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE9constructIS1_JRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS5_EEEmNS0_11ColumnIndexEEEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc28, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc28 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.noexc28 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1296
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.aa
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE9constructIS1_JRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS5_EEEmNS0_11ColumnIndexEEEEvPT_DpOT0_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !151

_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE9constructIS1_JRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS5_EEEmNS0_11ColumnIndexEEEEvPT_DpOT0_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc28
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ac, %.noexc28 ], [ %i.af, %.lr.ph.i.i.i.i.i.i ]
  %i.ag = load i64, ptr %3, align 8, !tbaa !270
  store i64 %i.ag, ptr %i.r, align 8, !tbaa !1291
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ac, ptr %i.ah, align 8, !tbaa !1097
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !1292
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !1295
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ak, ptr noundef nonnull align 8 dereferenceable(104) %4, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 64 ; 3 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !470
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !300 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE9constructIS1_JRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS5_EEEmNS0_11ColumnIndexEEEEvPT_DpOT0_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !471 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE9constructIS1_JRKNS0_6vectorINS0_26ReferencedExtractComponentELb1ESaIS5_EEEmNS0_11ColumnIndexEEEEvPT_DpOT0_.exit
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !300
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !377
  store i64 %i.av, ptr %i.an, align 8, !tbaa !377
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre39 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !471
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %i.aw = phi i64 [ %.pre39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.as, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !471
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !300
  store i64 0, ptr %i.ax, align 8, !tbaa !471
  store i8 0, ptr %i.ap, align 8, !tbaa !377
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %i.ba) #33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !897
  store i8 %i.bd, ptr %i.bb, align 8, !tbaa !897
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !244
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !244
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1083
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !1083
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bk = tail call noundef ptr @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.q, ptr noundef nonnull align 1 dereferenceable(1) %0) #33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %i.bm = tail call noundef ptr @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.bl, ptr noundef nonnull align 1 dereferenceable(1) %0) #33
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #34
  br label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %bb.f, %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !1093
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !1094
  %i.bo = getelementptr inbounds nuw [136 x i8], ptr %i.q, i64 %i.l
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !1299
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb26ReferencedExtractComponentEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = tail call ptr @__cxa_begin_catch(ptr %i.bq) #33 ; 0 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %bb.h
  tail call void @_ZN6duckdb23ReferencedStructExtractD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.r) #33
  br label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit32

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit32
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit: ; preds = %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.q) #34
  br label %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit32

_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit32: ; preds = %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb23ReferencedStructExtractES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #35
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bs

bb.k:                                             ; preds = %bb.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #37
  unreachable

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE13_M_deallocateEPS1_m.exit32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE14_S_do_relocateEPS1_S4_S4_RS2_St17integral_constantIbLb1EE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not10.i.i = icmp eq ptr %0, %1
  br i1 %.not10.i.i, label %_ZSt12__relocate_aIPN6duckdb23ReferencedStructExtractES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i
  %.012.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %2, %bb.a ] ; 12 uses
  %.0911.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ], [ %0, %bb.a ] ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5917)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5918)
  %i.a = load i64, ptr %.0911.i.i, align 8, !tbaa !1291, !alias.scope !5918, !noalias !5917
  store i64 %i.a, ptr %.012.i.i, align 8, !tbaa !1291, !alias.scope !5917, !noalias !5918
  %i.b = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 8 ; 3 uses
  %i.d = load <2 x ptr>, ptr %i.c, align 8, !tbaa !1297, !alias.scope !5918, !noalias !5917
  store <2 x ptr> %i.d, ptr %i.b, align 8, !tbaa !1297, !alias.scope !5917, !noalias !5918
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1295, !alias.scope !5918, !noalias !5917
  store ptr %i.g, ptr %i.e, align 8, !tbaa !1295, !alias.scope !5917, !noalias !5918
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !alias.scope !5918, !noalias !5917
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 16, i1 false), !alias.scope !5919
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 64 ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !470, !alias.scope !5917, !noalias !5918
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !300, !alias.scope !5918, !noalias !5917 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 64 ; 6 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !471, !alias.scope !5918, !noalias !5917 ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false), !alias.scope !5919
  br label %_ZN6duckdb23ReferencedStructExtractC2EOS0_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  store ptr %i.m, ptr %i.j, align 8, !tbaa !300, !alias.scope !5917, !noalias !5918
  %i.t = load i64, ptr %i.n, align 8, !tbaa !377, !alias.scope !5918, !noalias !5917
  store i64 %i.t, ptr %i.l, align 8, !tbaa !377, !alias.scope !5917, !noalias !5918
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !471, !alias.scope !5918, !noalias !5917
  br label %_ZN6duckdb23ReferencedStructExtractC2EOS0_.exit.i.i.i

_ZN6duckdb23ReferencedStructExtractC2EOS0_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.u = phi i64 [ %i.q, %bb.b ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 56
  store i64 %i.u, ptr %i.w, align 8, !tbaa !471, !alias.scope !5917, !noalias !5918
  store ptr %i.n, ptr %i.k, align 8, !tbaa !300, !alias.scope !5918, !noalias !5917
  store i64 0, ptr %i.v, align 8, !tbaa !471, !alias.scope !5918, !noalias !5917
  store i8 0, ptr %i.n, align 8, !tbaa !377, !alias.scope !5918, !noalias !5917
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 80 ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y) #33
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 104
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 104
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !897, !alias.scope !5918, !noalias !5917
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !897, !alias.scope !5917, !noalias !5918
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 112 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !244, !alias.scope !5918, !noalias !5917
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !244, !alias.scope !5917, !noalias !5918
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 128
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1083, !alias.scope !5918, !noalias !5917
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !1083, !alias.scope !5917, !noalias !5918
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !alias.scope !5918, !noalias !5917
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.y) #33, !inline_history !905
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !300, !alias.scope !5918, !noalias !5917 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.n
  br i1 %i.aj, label %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN6duckdb23ReferencedStructExtractC2EOS0_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.ai) #34, !inline_history !905
  br label %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i

_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i:         ; preds = %_ZN6duckdb23ReferencedStructExtractC2EOS0_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !1097, !alias.scope !5918, !noalias !5917 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ak) #34
  br label %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i

_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i: ; preds = %bb.c, %_ZN6duckdb11ColumnIndexD2Ev.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 136 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 136 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i, label %_ZSt12__relocate_aIPN6duckdb23ReferencedStructExtractES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !5916

_ZSt12__relocate_aIPN6duckdb23ReferencedStructExtractES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i, %bb.a
  %.0.lcssa.i.i = phi ptr [ %2, %bb.a ], [ %i.am, %_ZSt19__relocate_object_aIN6duckdb23ReferencedStructExtractES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i ]
  ret ptr %.0.lcssa.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(136) ptr @_ZNSt8__detail9_Map_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEESaIS6_ENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<duckdb::ColumnBinding, std::pair<const duckdb::ColumnBinding, duckdb::ReferencedColumn>, std::allocator<std::pair<const duckdb::ColumnBinding, duckdb::ReferencedColumn>>, std::__detail::_Select1st, duckdb::ColumnBindingEquality, duckdb::ColumnBindingHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !375    ; 3 uses
  %i.b = lshr i64 %i.a, 32
  %i.c = xor i64 %i.b, %i.a
  %i.d = mul i64 %i.c, -2960836687051489901       ; 2 uses
  %i.e = lshr i64 %i.d, 32
  %i.f = xor i64 %i.e, %i.d
  %i.g = mul i64 %i.f, -2960836687051489901       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !383  ; 3 uses
  %i.j = lshr i64 %i.i, 32
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -2960836687051489901       ; 2 uses
  %i.m = lshr i64 %i.l, 32
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -2960836687051489901       ; 2 uses
  %i.p = xor i64 %i.o, %i.g
  %i.q = lshr i64 %i.p, 32
  %i.r = xor i64 %i.g, %i.q
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1069 ; 2 uses
  %i.v = urem i64 %i.s, %i.u                      ; 3 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !1068
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !386  ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %.loopexit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !313  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !388
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.aa = phi i64 [ %.pre.i.i, %bb.b ], [ %i.am, %bb.d ]
  %i.ab = phi ptr [ %i.z, %bb.b ], [ %i.ak, %bb.d ] ; 4 uses
  %i.ac = icmp eq i64 %i.s, %i.aa
  br i1 %i.ac, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !375
  %i.af = icmp eq i64 %i.a, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = icmp eq i64 %i.i, %i.ah
  %i.aj = select i1 %i.af, i1 %i.ai, i1 false
  br i1 %i.aj, label %.loopexit, label %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i

end_hunk_5
begin_hunk_6_@llvm.umin.i64
!1098 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEE", !214, i64 0}
!1099 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE17_Vector_impl_dataE", !1098, i64 0, !1098, i64 8, !1098, i64 16}
!1100 = !{!1099, !1098, i64 0}
!1101 = !{!1067, !239, i64 24}
!1102 = !{!964, !240, i64 629}
!1103 = !{!964, !214, i64 592}
!1104 = !{!1079, !401, i64 72}
!1105 = !{!931, !239, i64 24}
!1106 = !{!931, !239, i64 8}
!1107 = !{!931, !308, i64 0}
!1108 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE17_Vector_impl_dataE", !445, i64 0, !445, i64 8, !445, i64 16}
!1109 = !{!1108, !445, i64 8}
!1110 = !{!1108, !445, i64 16}
!1111 = !{!"_ZTSN6duckdb9OrderTypeE", !209, i64 0}
!1112 = !{!1111, !1111, i64 0}
!1113 = !{!"_ZTSN6duckdb15OrderByNullTypeE", !209, i64 0}
!1114 = !{!1113, !1113, i64 0}
!1115 = !{!"p1 _ZTSN6duckdb12LogicalOrderE", !214, i64 0}
!1116 = !{!1115, !1115, i64 0}
!1117 = !{!1108, !445, i64 0}
!1118 = !{!1074, !1073, i64 16}
!1119 = !{!"p1 _ZTSN6duckdb19RemoveUnusedColumnsE", !214, i64 0}
!1120 = !{!"p1 _ZTSSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !214, i64 0}
!1121 = !{!"_ZTSSt10_Head_baseILm0EPSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEELb0EE", !1120, i64 0}
!1122 = !{!"_ZTSSt11_Tuple_implILm0EJPSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EEE", !1121, i64 0}
!1123 = !{!"_ZTSSt5tupleIJPSt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EEE", !1122, i64 0}
!1124 = !{!"_ZTSSt15__uniq_ptr_implISt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EE", !1123, i64 0}
!1125 = !{!"_ZTSSt15__uniq_ptr_dataISt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_ELb1ELb1EE", !1124, i64 0}
!1126 = !{!"_ZTSSt10unique_ptrISt13unordered_mapImN6duckdb19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EE", !1125, i64 0}
!1127 = !{!"_ZTSN6duckdb10unique_ptrISt13unordered_mapImNS_19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_ELb1EEE", !1126, i64 0}
!1128 = !{!"_ZTSN6duckdb19RemoveUnusedColumnsE", !1072, i64 0, !401, i64 72, !409, i64 80, !215, i64 88, !240, i64 96, !1119, i64 104, !1127, i64 112}
!1129 = !{!1128, !240, i64 96}
!1130 = !{!1128, !215, i64 88}
!1131 = !{!1098, !1098, i64 0}
!1132 = !{!"_ZTSSt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEE", !669, i64 0}
!1133 = !{!1132, !669, i64 0}
!1134 = !{!"_ZTSSt13unordered_setImSt4hashImESt8equal_toImESaImEE", !984, i64 0}
!1135 = !{!"_ZTSN6duckdb19MaterializedCTEInfoE", !1070, i64 0, !1134, i64 56, !1134, i64 112, !240, i64 168}
!1136 = !{!1135, !240, i64 168}
!1137 = !{!"_ZTSSt4pairIKmN6duckdb19MaterializedCTEInfoEE", !239, i64 0, !1135, i64 8}
!1138 = !{!1137, !239, i64 0}
!1139 = !{!1067, !309, i64 48}
!1140 = !{ptr @_ZN6duckdb12CTERefPrunerD2Ev}
!1141 = !{!1128, !1119, i64 104}
!1142 = !{!1120, !1120, i64 0}
!1143 = !{!"_ZTSN6duckdb12optional_ptrISt13unordered_mapImNS_19MaterializedCTEInfoESt4hashImESt8equal_toImESaISt4pairIKmS2_EEELb1EEE", !1120, i64 0}
!1144 = !{!1143, !1120, i64 0}
!1145 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb19MaterializedCTEInfoEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1146 = !{!1145, !239, i64 24}
!1147 = !{!1145, !239, i64 8}
!1148 = !{!1145, !308, i64 0}
!1149 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE12_Vector_implE", !1099, i64 0}
!1150 = !{!"_ZTSSt12_Vector_baseISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE", !1149, i64 0}
!1151 = !{!"_ZTSSt6vectorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEESaIS3_EE", !1150, i64 0}
!1152 = !{!"_ZTSN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEE", !1151, i64 0}
!1153 = !{!"_ZTSNSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE12_Vector_implE", !1092, i64 0}
!1154 = !{!"_ZTSSt12_Vector_baseIN6duckdb23ReferencedStructExtractESaIS1_EE", !1153, i64 0}
!1155 = !{!"_ZTSSt6vectorIN6duckdb23ReferencedStructExtractESaIS1_EE", !1154, i64 0}
!1156 = !{!"_ZTSN6duckdb6vectorINS_23ReferencedStructExtractELb1ESaIS1_EEE", !1155, i64 0}
!1157 = !{!"_ZTSN6duckdb22PushdownExtractSupportE", !209, i64 0}
!1158 = !{!"_ZTSSt13unordered_setIN6duckdb11ColumnIndexENS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaIS1_EE", !1087, i64 0}
!1159 = !{!"_ZTSN6duckdb16ReferencedColumnE", !1152, i64 0, !1156, i64 24, !262, i64 48, !1157, i64 72, !1158, i64 80}
!1160 = !{!"_ZTSSt4pairIKN6duckdb13ColumnBindingENS0_16ReferencedColumnEE", !364, i64 0, !1159, i64 16}
!1161 = !{!1160, !239, i64 0}
!1162 = !{!1145, !309, i64 16}
!1163 = !{ptr @_ZN6duckdb16BaseColumnPrunerD2Ev}
!1164 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE12_Vector_implE", !1108, i64 0}
!1165 = !{!"_ZTSSt12_Vector_baseIN6duckdb16BoundOrderByNodeESaIS1_EE", !1164, i64 0}
!1166 = !{!"_ZTSSt6vectorIN6duckdb16BoundOrderByNodeESaIS1_EE", !1165, i64 0}
!1167 = !{!"_ZTSN6duckdb6vectorINS_16BoundOrderByNodeELb1ESaIS1_EEE", !1166, i64 0}
!1168 = !{!"p1 _ZTSN6duckdb17DynamicFilterDataE", !214, i64 0}
!1169 = !{!"_ZTSSt12__shared_ptrIN6duckdb17DynamicFilterDataELN9__gnu_cxx12_Lock_policyE2EE", !1168, i64 0, !252, i64 8}
!1170 = !{!"_ZTSN6duckdb12SampleMethodE", !209, i64 0}
!1171 = !{!"_ZTSN6duckdb13SampleOptionsE", !871, i64 0, !240, i64 64, !1170, i64 65, !370, i64 72, !240, i64 80}
!1172 = !{!1171, !240, i64 64}
!1173 = !{!943, !943, i64 0}
!1174 = !{!586, !586, i64 0}
!1175 = !{!931, !309, i64 48}
!1176 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEEEEE", !214, i64 0}
!1177 = !{!931, !309, i64 16}
!1178 = !{ptr @_ZN6duckdb13TableFunctionD2Ev}
!1179 = !{!409, !409, i64 0}
!1180 = !{!411, !410, i64 8}
!1181 = !{!411, !410, i64 0}
!1182 = !{!"_ZTSN6duckdb13OptimizerTypeE", !209, i64 0}
!1183 = !{!1182, !1182, i64 0}
!1184 = !{!"_ZTSSt8functionIFvvEE", !393, i64 0, !214, i64 24}
!1185 = !{!1184, !214, i64 24}
!1186 = !{!656, !309, i64 16}
!1187 = !{!"p1 _ZTSN6duckdb18OptimizerExtensionE", !214, i64 0}
!1188 = !{!1187, !1187, i64 0}
!1189 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1190 = !{!1189, !309, i64 16}
!1191 = !{!1189, !308, i64 0}
!1192 = !{!1189, !239, i64 8}
!1193 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS3_25ColumnBindingHashFunctionENS3_21ColumnBindingEqualityESaIS4_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1194 = !{!"_ZTSSt13unordered_mapImSt13unordered_setIN6duckdb13ColumnBindingENS1_25ColumnBindingHashFunctionENS1_21ColumnBindingEqualityESaIS2_EESt4hashImESt8equal_toImESaISt4pairIKmS6_EEE", !1193, i64 0}
!1195 = !{!"_ZTSN6duckdb12PipelineInfoE", !429, i64 0, !1134, i64 8, !1194, i64 64, !240, i64 120, !367, i64 128, !239, i64 136}
!1196 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_15JoinEliminationESt14default_deleteIS1_ELb1EEE", !214, i64 0}
!1197 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15JoinEliminationESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !1196, i64 0, !1196, i64 8, !1196, i64 16}
!1198 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_15JoinEliminationESt14default_deleteIS2_ELb1EEESaIS5_EE12_Vector_implE", !1197, i64 0}
!1199 = !{!"_ZTSSt12_Vector_baseIN6duckdb10unique_ptrINS0_15JoinEliminationESt14default_deleteIS2_ELb1EEESaIS5_EE", !1198, i64 0}
!1200 = !{!"_ZTSSt6vectorIN6duckdb10unique_ptrINS0_15JoinEliminationESt14default_deleteIS2_ELb1EEESaIS5_EE", !1199, i64 0}
!1201 = !{!"_ZTSN6duckdb6vectorINS_10unique_ptrINS_15JoinEliminationESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !1200, i64 0}
!1202 = !{!"p1 _ZTSN6duckdb15JoinEliminationE", !214, i64 0}
!1203 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb15JoinEliminationELb0EE", !1202, i64 0}
!1204 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb15JoinEliminationESt14default_deleteIS1_EEE", !1203, i64 0}
!1205 = !{!"_ZTSSt5tupleIJPN6duckdb15JoinEliminationESt14default_deleteIS1_EEE", !1204, i64 0}
!1206 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb15JoinEliminationESt14default_deleteIS1_EE", !1205, i64 0}
!1207 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb15JoinEliminationESt14default_deleteIS1_ELb1ELb1EE", !1206, i64 0}
!1208 = !{!"_ZTSSt10unique_ptrIN6duckdb15JoinEliminationESt14default_deleteIS1_EE", !1207, i64 0}
!1209 = !{!"_ZTSN6duckdb10unique_ptrINS_15JoinEliminationESt14default_deleteIS1_ELb1EEE", !1208, i64 0}
!1210 = !{!"_ZTSN6duckdb15JoinEliminationE", !316, i64 0, !1195, i64 8, !367, i64 152, !1201, i64 160, !1209, i64 184, !1209, i64 192}
!1211 = !{!1210, !239, i64 144}
!1212 = !{!1202, !1202, i64 0}
!1213 = !{ptr @_ZN6duckdb15JoinElimination16OptimizeInternalENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE}
!1214 = !{!898, !239, i64 88}
!1215 = !{!486, !485, i64 8}
!1216 = !{!486, !485, i64 0}
!1217 = !{!1193, !239, i64 8}
!1218 = !{!1193, !308, i64 0}
!1219 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS5_25ColumnBindingHashFunctionENS5_21ColumnBindingEqualityESaIS6_EEELb0EEEEEE", !214, i64 0}
!1220 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS4_25ColumnBindingHashFunctionENS4_21ColumnBindingEqualityESaIS5_EEELb0EEE", !214, i64 0}
!1221 = !{!"_ZTSNSt10_HashtableImSt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS3_25ColumnBindingHashFunctionENS3_21ColumnBindingEqualityESaIS4_EEESaIS9_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !1219, i64 0, !1220, i64 8}
!1222 = !{!1221, !1219, i64 0}
!1223 = !{!"_ZTSSt4pairIKmSt13unordered_setIN6duckdb13ColumnBindingENS2_25ColumnBindingHashFunctionENS2_21ColumnBindingEqualityESaIS3_EEE", !239, i64 0, !402, i64 8}
!1224 = !{!1223, !239, i64 0}
!1225 = !{!1221, !1220, i64 8}
!1226 = !{!381, !309, i64 48}
!1227 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb6vectorImLb1ESaImEEEESaIS6_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1228 = !{!1227, !308, i64 0}
!1229 = !{!1227, !239, i64 8}
!1230 = !{!1193, !239, i64 24}
!1231 = !{!1227, !309, i64 16}
!1232 = !{!1210, !240, i64 128}
!1233 = !{!1197, !1196, i64 8}
!1234 = !{!1197, !1196, i64 0}
!1235 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb16DistinctGroupRefEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1236 = !{!1235, !308, i64 0}
!1237 = !{!1235, !239, i64 8}
!1238 = !{!1235, !309, i64 16}
!1239 = !{!1235, !239, i64 24}
!1240 = !{!1196, !1196, i64 0}
!1241 = !{!"_ZTSN6duckdb12FunctionDataE"}
!1242 = !{!"p1 _ZTSSt4pairImmE", !214, i64 0}
!1243 = !{!"_ZTSNSt12_Vector_baseISt4pairImmESaIS1_EE17_Vector_impl_dataE", !1242, i64 0, !1242, i64 8, !1242, i64 16}
!1244 = !{!1243, !1242, i64 8}
!1245 = !{!"_ZTSSt4pairImmE", !239, i64 0, !239, i64 8}
!1246 = !{!1245, !239, i64 0}
!1247 = !{!1245, !239, i64 8}
!1248 = !{!1243, !1242, i64 0}
!1249 = !{!752, !751, i64 16}
!1250 = !{!752, !751, i64 24}
!1251 = !{!"_ZTSSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_6vectorISt17reference_wrapperINS0_24BoundColumnRefExpressionEELb1ESaIS7_EEEESaISA_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1252 = !{!1251, !239, i64 24}
!1253 = !{!1251, !239, i64 8}
!1254 = !{!1251, !308, i64 0}
!1255 = !{!1099, !1098, i64 8}
!1256 = !{!1099, !1098, i64 16}
!1257 = !{!1119, !1119, i64 0}
!1258 = !{!1121, !1120, i64 0}
!1259 = !{!1159, !1157, i64 72}
!1260 = !{!1087, !239, i64 24}
!1261 = !{!1160, !1157, i64 88}
!1262 = !{!1091, !1091, i64 0}
!1263 = !{!"_ZTSSt10_HashtableIN6duckdb11ColumnIndexESt4pairIKS1_mESaIS4_ENSt8__detail10_Select1stENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1264 = !{!1263, !308, i64 0}
!1265 = !{!1263, !239, i64 8}
!1266 = !{!1263, !309, i64 16}
!1267 = !{!"p1 _ZTSSt13unordered_mapIN6duckdb11ColumnIndexEmNS0_23ColumnIndexHashFunctionENS0_19ColumnIndexEqualityESaISt4pairIKS1_mEEE", !214, i64 0}
!1268 = !{!1267, !1267, i64 0}
!1269 = !{!"p1 _ZTSN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEE", !214, i64 0}
!1270 = !{!1269, !1269, i64 0}
!1271 = !{!1072, !1071, i64 64}
!1272 = !{!"p1 _ZTSN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEE", !214, i64 0}
!1273 = !{!1272, !1272, i64 0}
!1274 = !{!"p1 _ZTSSt13unordered_mapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE", !214, i64 0}
!1275 = !{!1274, !1274, i64 0}
!1276 = !{!"p1 _ZTSN6duckdb6vectorImLb1ESaImEEE", !214, i64 0}
!1277 = !{!1276, !1276, i64 0}
!1278 = !{!"_ZTSNSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE12_Vector_implE", !462, i64 0}
!1279 = !{!"_ZTSSt12_Vector_baseIN6duckdb18ReplacementBindingESaIS1_EE", !1278, i64 0}
!1280 = !{!"_ZTSSt6vectorIN6duckdb18ReplacementBindingESaIS1_EE", !1279, i64 0}
!1281 = !{!"_ZTSN6duckdb6vectorINS_18ReplacementBindingELb1ESaIS1_EEE", !1280, i64 0}
!1282 = !{!"_ZTSN6duckdb12CTERefPrunerE", !316, i64 0, !239, i64 8, !989, i64 16, !1281, i64 24}
!1283 = !{!1282, !239, i64 8}
!1284 = !{!"_ZTSN6duckdb12optional_ptrINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1EEE", !227, i64 0}
!1285 = !{!1284, !227, i64 0}
!1286 = !{!"_ZTSNSt12_Vector_baseIN6duckdb26ReferencedExtractComponentESaIS1_EE12_Vector_implE", !1096, i64 0}
!1287 = !{!"_ZTSSt12_Vector_baseIN6duckdb26ReferencedExtractComponentESaIS1_EE", !1286, i64 0}
!1288 = !{!"_ZTSSt6vectorIN6duckdb26ReferencedExtractComponentESaIS1_EE", !1287, i64 0}
!1289 = !{!"_ZTSN6duckdb6vectorINS_26ReferencedExtractComponentELb1ESaIS1_EEE", !1288, i64 0}
!1290 = !{!"_ZTSN6duckdb23ReferencedStructExtractE", !239, i64 0, !1289, i64 8, !263, i64 32}
!1291 = !{!1290, !239, i64 0}
!1292 = !{!1096, !1095, i64 8}
!1293 = !{!"_ZTSSt17reference_wrapperIN6duckdb11ColumnIndexEE", !243, i64 0}
!1294 = !{!1293, !243, i64 0}
!1295 = !{!1096, !1095, i64 16}
!1296 = !{i64 0, i64 8, !443, i64 8, i64 8, !443}
!1297 = !{!1095, !1095, i64 0}
!1298 = !{!1087, !309, i64 48}
!1299 = !{!1092, !1091, i64 16}
!1300 = !{!"_ZTSN6duckdb12optional_ptrINS_12LogicalOrderELb1EEE", !1115, i64 0}
!1301 = !{!1300, !1115, i64 0}
!1302 = !{!"_ZTSN6duckdb12optional_ptrINS_10LogicalGetELb1EEE", !1034, i64 0}
!1303 = !{!1302, !1034, i64 0}
!1304 = !{!956, !956, i64 0}
!1305 = !{!"p1 _ZTSN6duckdb12StorageIndexE", !214, i64 0}
!1306 = !{!"_ZTSNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EE17_Vector_impl_dataE", !1305, i64 0, !1305, i64 8, !1305, i64 16}
!1307 = !{!1306, !1305, i64 0}
!1308 = !{!1306, !1305, i64 8}
!1309 = !{ptr @_ZN6duckdb12StorageIndexD2Ev}
!1310 = !{!"_ZTSN6duckdb16BoundOrderByNodeE", !1111, i64 0, !1113, i64 1, !343, i64 8, !629, i64 16}
!1311 = !{!1310, !1111, i64 0}
!1312 = !{!1310, !1113, i64 1}
!1313 = !{!"p1 _ZTSN6duckdb19PartitionStatisticsE", !214, i64 0}
!1314 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19PartitionStatisticsESaIS1_EE17_Vector_impl_dataE", !1313, i64 0, !1313, i64 8, !1313, i64 16}
!1315 = !{!1314, !1313, i64 0}
!1316 = !{!1314, !1313, i64 8}
!1317 = !{!"_ZTSN6duckdb16StorageIndexTypeE", !209, i64 0}
!1318 = !{!"_ZTSNSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EE12_Vector_implE", !1306, i64 0}
!1319 = !{!"_ZTSSt12_Vector_baseIN6duckdb12StorageIndexESaIS1_EE", !1318, i64 0}
!1320 = !{!"_ZTSSt6vectorIN6duckdb12StorageIndexESaIS1_EE", !1319, i64 0}
!1321 = !{!"_ZTSN6duckdb6vectorINS_12StorageIndexELb1ESaIS1_EEE", !1320, i64 0}
!1322 = !{!"_ZTSN6duckdb12StorageIndexE", !240, i64 0, !239, i64 8, !247, i64 16, !256, i64 48, !1317, i64 72, !1321, i64 80}
!1323 = !{!"p1 _ZTSN6duckdb14NodeStatisticsE", !214, i64 0}
!1324 = !{!1323, !1323, i64 0}
!1325 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14NodeStatisticsELb0EE", !1323, i64 0}
!1326 = !{!1325, !1323, i64 0}
!1327 = !{ptr @_ZN6duckdb20StatisticsPropagator19PropagateStatisticsERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE}
!1328 = !{!"_ZTSSt13unordered_mapIN6duckdb13ColumnBindingENS0_10unique_ptrINS0_14BaseStatisticsESt14default_deleteIS3_ELb1EEENS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S6_EEE", !656, i64 0}
!1329 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14NodeStatisticsESt14default_deleteIS1_EEE", !1325, i64 0}
!1330 = !{!"_ZTSSt5tupleIJPN6duckdb14NodeStatisticsESt14default_deleteIS1_EEE", !1329, i64 0}
!1331 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14NodeStatisticsESt14default_deleteIS1_EE", !1330, i64 0}
!1332 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14NodeStatisticsESt14default_deleteIS1_ELb1ELb1EE", !1331, i64 0}
!1333 = !{!"_ZTSSt10unique_ptrIN6duckdb14NodeStatisticsESt14default_deleteIS1_EE", !1332, i64 0}
!1334 = !{!"_ZTSN6duckdb10unique_ptrINS_14NodeStatisticsESt14default_deleteIS1_ELb1EEE", !1333, i64 0}
!1335 = !{!"_ZTSN6duckdb20StatisticsPropagatorE", !401, i64 0, !215, i64 8, !367, i64 16, !1328, i64 24, !1334, i64 80}
!1336 = !{!"p1 _ZTSN6duckdb20StatisticsPropagatorE", !214, i64 0}
!1337 = !{!1336, !1336, i64 0}
!1338 = !{!1169, !1168, i64 0}
!1339 = !{!"p1 _ZTSN6duckdb13DynamicFilterE", !214, i64 0}
!1340 = !{!1339, !1339, i64 0}
!1341 = !{!"p1 _ZTSN6duckdb11LogicalTopNE", !214, i64 0}
!1342 = !{!1341, !1341, i64 0}
!1343 = !{!"_ZTSN6duckdb12optional_ptrISt13unordered_mapINS_13ColumnBindingENS_10unique_ptrINS_14BaseStatisticsESt14default_deleteIS4_ELb1EEENS_25ColumnBindingHashFunctionENS_21ColumnBindingEqualityESaISt4pairIKS2_S7_EEELb1EEE", !649, i64 0}
!1344 = !{!"_ZTSN6duckdb21TopNWindowEliminationE", !1072, i64 0, !215, i64 72, !401, i64 80, !1343, i64 88}
!1345 = !{!1344, !215, i64 72}
!1346 = !{!"_ZTSN6duckdb13LogicalWindowE", !241, i64 0, !239, i64 104}
!1347 = !{!1346, !239, i64 104}
!1348 = !{!"_ZTSN6duckdb15TopNPayloadTypeE", !209, i64 0}
!1349 = !{!"_ZTSN6duckdb31TopNWindowEliminationParametersE", !1111, i64 0, !239, i64 8, !1348, i64 16, !240, i64 20, !240, i64 21}
!1350 = !{!1349, !1348, i64 16}
!1351 = !{!1344, !401, i64 80}
!1352 = !{!1349, !240, i64 21}
!1353 = !{!1349, !239, i64 8}
!1354 = !{!1349, !240, i64 20}
!1355 = !{!1349, !1111, i64 0}
!1356 = !{!1343, !649, i64 0}
!1357 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKmN6duckdb11TableColumnEELb0EEE", !214, i64 0}
!1358 = !{!"_ZTSNSt10_HashtableImSt4pairIKmN6duckdb11TableColumnEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !1176, i64 0, !1357, i64 8}
!1359 = !{!1358, !1176, i64 0}
!1360 = !{!1358, !1357, i64 8}
!1361 = !{!"p1 _ZTSN6duckdb26ScalarFunctionCatalogEntryE", !214, i64 0}
!1362 = !{!"_ZTSN6duckdb12optional_ptrINS_26ScalarFunctionCatalogEntryELb1EEE", !1361, i64 0}
!1363 = !{!1362, !1361, i64 0}
!1364 = !{!"p1 _ZTSN6duckdb16LogicalAggregateE", !214, i64 0}
!1365 = !{!1364, !1364, i64 0}
!1366 = !{!497, !239, i64 120}
!1367 = !{!"p1 _ZTSN6duckdb21BoundUnnestExpressionE", !214, i64 0}
!1368 = !{!1367, !1367, i64 0}
!1369 = !{!"p1 _ZTSN6duckdb13LogicalUnnestE", !214, i64 0}
!1370 = !{!1369, !1369, i64 0}
!1371 = !{!"p1 _ZTSN6duckdb29AggregateFunctionCatalogEntryE", !214, i64 0}
!1372 = !{!"_ZTSN6duckdb12optional_ptrINS_29AggregateFunctionCatalogEntryELb1EEE", !1371, i64 0}
!1373 = !{!1372, !1371, i64 0}
!1374 = !{!326, !325, i64 8}
!1375 = !{!326, !325, i64 0}
!1376 = !{!"p1 _ZTSN6duckdb14ReplaceBindingE", !214, i64 0}
!1377 = !{!"_ZTSNSt12_Vector_baseIN6duckdb14ReplaceBindingESaIS1_EE17_Vector_impl_dataE", !1376, i64 0, !1376, i64 8, !1376, i64 16}
!1378 = !{!1377, !1376, i64 8}
!1379 = !{!1377, !1376, i64 0}
!1380 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEE", !214, i64 0}
!1381 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIN6duckdb10unique_ptrINS1_15LogicalOperatorESt14default_deleteIS3_ELb1EEEESaIS7_EE17_Vector_impl_dataE", !1380, i64 0, !1380, i64 8, !1380, i64 16}
!1382 = !{!1381, !1380, i64 0}
!1383 = !{ptr @_ZN6duckdb25UnnestRewriterPlanUpdaterD2Ev}
!1384 = !{!"p1 _ZTSN6duckdb10LHSBindingE", !214, i64 0}
!1385 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10LHSBindingESaIS1_EE17_Vector_impl_dataE", !1384, i64 0, !1384, i64 8, !1384, i64 16}
!1386 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10LHSBindingESaIS1_EE12_Vector_implE", !1385, i64 0}
!1387 = !{!"_ZTSSt12_Vector_baseIN6duckdb10LHSBindingESaIS1_EE", !1386, i64 0}
!1388 = !{!"_ZTSSt6vectorIN6duckdb10LHSBindingESaIS1_EE", !1387, i64 0}
!1389 = !{!"_ZTSN6duckdb6vectorINS_10LHSBindingELb1ESaIS1_EEE", !1388, i64 0}
!1390 = !{!"_ZTSN6duckdb14UnnestRewriterE", !320, i64 0, !1389, i64 24, !239, i64 48, !239, i64 56}
!1391 = !{!1390, !239, i64 48}
!1392 = !{!1385, !1384, i64 0}
!1393 = !{!1385, !1384, i64 8}
!1394 = !{!"p2 _ZTSN6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEE", !307, i64 0}
!1395 = !{!"_ZTSNSt12_Vector_baseIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS6_EE17_Vector_impl_dataE", !1394, i64 0, !1394, i64 8, !1394, i64 16}
!1396 = !{!1395, !1394, i64 8}
!1397 = !{!1395, !1394, i64 0}
!1398 = !{!1395, !1394, i64 16}
!1399 = !{!1390, !239, i64 56}
!1400 = !{!1377, !1376, i64 16}
!1401 = !{i64 0, i64 8, !270, i64 8, i64 8, !270, i64 16, i64 8, !270, i64 24, i64 8, !270}
!1402 = !{!1385, !1384, i64 16}
!1403 = !{ptr @_ZN6duckdb27WindowSelfJoinTableRebinderD2Ev}
!1404 = !{!"_ZTSN6duckdb13AggregateTypeE", !209, i64 0}
!1405 = !{!1404, !1404, i64 0}
!1406 = !{!"p1 _ZTSN6duckdb15SetTypesMatcherE", !214, i64 0}
!1407 = !{!1406, !1406, i64 0}
!1408 = !{!"p1 _ZTSN6duckdb21ExpressionTypeMatcherE", !214, i64 0}
!1409 = !{!"p1 _ZTSN6duckdb11TypeMatcherE", !214, i64 0}
!1410 = !{!"p1 _ZTSN6duckdb26AggregateExpressionMatcherE", !214, i64 0}
!1411 = !{!1410, !1410, i64 0}
!1412 = !{!"p1 _ZTSN6duckdb25FunctionExpressionMatcherE", !214, i64 0}
!1413 = !{!1412, !1412, i64 0}
!1414 = !{!1409, !1409, i64 0}
!1415 = !{!"p1 _ZTSN6duckdb25ConstantExpressionMatcherE", !214, i64 0}
!1416 = !{!1415, !1415, i64 0}
!1417 = !{!"p1 _ZTSN6duckdb23StableExpressionMatcherE", !214, i64 0}
!1418 = !{!1417, !1417, i64 0}
!1419 = !{!"_ZTSSt13unordered_mapIN6duckdb13ColumnBindingES1_NS0_25ColumnBindingHashFunctionENS0_21ColumnBindingEqualityESaISt4pairIKS1_S1_EEE", !472, i64 0}
!1420 = !{!"_ZTSN6duckdb20SumRewriterOptimizerE", !316, i64 0, !401, i64 8, !1419, i64 16, !848, i64 72}
!1421 = !{!1420, !401, i64 8}
!1422 = !{ptr @_ZN6duckdb20SumRewriterOptimizer8OptimizeERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEE}
!1423 = !{ptr @_ZN6duckdb23BuildProbeSideOptimizerD2Ev}
!1424 = !{ptr @_ZN6duckdb15JoinEliminationD2Ev}
!1425 = !{!1251, !309, i64 16}
!1426 = !{ptr @_ZN6duckdb21RemoveDuplicateGroupsD2Ev}
!1427 = !{!"p1 _ZTSN6duckdb14ArenaAllocatorE", !214, i64 0}
!1428 = !{!"_ZTSSt17reference_wrapperIN6duckdb14ArenaAllocatorEE", !1427, i64 0}
!1429 = !{!"_ZTSN6duckdb19arena_stl_allocatorINSt8__detail10_Hash_nodeISt4pairIKmNS_27PlanSignatureColumnIndexMapEELb0EEEEE", !1428, i64 0}
!1430 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi0EN6duckdb19arena_stl_allocatorINS_10_Hash_nodeISt4pairIKmNS1_27PlanSignatureColumnIndexMapEELb0EEEEELb0EEE", !1429, i64 0}
!1431 = !{!"_ZTSNSt8__detail16_Hashtable_allocIN6duckdb19arena_stl_allocatorINS_10_Hash_nodeISt4pairIKmNS1_27PlanSignatureColumnIndexMapEELb0EEEEEEE", !1430, i64 0}
!1432 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb27PlanSignatureColumnIndexMapEENS2_19arena_stl_allocatorIS4_EENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !1431, i64 0, !308, i64 8, !239, i64 16, !310, i64 24, !239, i64 32, !312, i64 40, !309, i64 56}
!1433 = !{!1432, !308, i64 8}
!1434 = !{!1432, !239, i64 16}
!1435 = !{!"_ZTSN6duckdb19arena_stl_allocatorINSt8__detail10_Hash_nodeISt4pairIKmmELb0EEEEE", !1428, i64 0}
!1436 = !{!"_ZTSNSt8__detail21_Hashtable_ebo_helperILi0EN6duckdb19arena_stl_allocatorINS_10_Hash_nodeISt4pairIKmmELb0EEEEELb0EEE", !1435, i64 0}
!1437 = !{!"_ZTSNSt8__detail16_Hashtable_allocIN6duckdb19arena_stl_allocatorINS_10_Hash_nodeISt4pairIKmmELb0EEEEEEE", !1436, i64 0}
!1438 = !{!"_ZTSSt10_HashtableImSt4pairIKmmEN6duckdb19arena_stl_allocatorIS2_EENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !1437, i64 0, !308, i64 8, !239, i64 16, !310, i64 24, !239, i64 32, !312, i64 40, !309, i64 56}
!1439 = !{!1438, !308, i64 8}
!1440 = !{!1438, !239, i64 16}
!1441 = !{!"p1 _ZTSN6duckdb16BinarySerializer10DebugStateE", !214, i64 0}
!1442 = !{!"_ZTSNSt12_Vector_baseIN6duckdb16BinarySerializer10DebugStateESaIS2_EE17_Vector_impl_dataE", !1441, i64 0, !1441, i64 8, !1441, i64 16}
!1443 = !{!1442, !1441, i64 0}
!1444 = !{!1442, !1441, i64 8}
!1445 = !{ptr @_ZN6duckdb10SerializerD2Ev}
!1446 = !{!"p2 _ZTSSt17reference_wrapperIN6duckdb13ClientContextEE", !307, i64 0}
!1447 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb13ClientContextEE", !214, i64 0}
!1448 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIN6duckdb13ClientContextEERS3_PS3_E", !1447, i64 0, !1447, i64 8, !1447, i64 16, !1446, i64 24}
!1449 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIN6duckdb13ClientContextEESaIS3_EE16_Deque_impl_dataE", !1446, i64 0, !239, i64 8, !1448, i64 16, !1448, i64 48}
!1450 = !{!"p2 _ZTSSt17reference_wrapperIN6duckdb16DatabaseInstanceEE", !307, i64 0}
!1451 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb16DatabaseInstanceEE", !214, i64 0}
!1452 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIN6duckdb16DatabaseInstanceEERS3_PS3_E", !1451, i64 0, !1451, i64 8, !1451, i64 16, !1450, i64 24}
!1453 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIN6duckdb16DatabaseInstanceEESaIS3_EE16_Deque_impl_dataE", !1450, i64 0, !239, i64 8, !1452, i64 16, !1452, i64 48}
!1454 = !{!"p2 _ZTSSt17reference_wrapperIN6duckdb7CatalogEE", !307, i64 0}
!1455 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb7CatalogEE", !214, i64 0}
!1456 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIN6duckdb7CatalogEERS3_PS3_E", !1455, i64 0, !1455, i64 8, !1455, i64 16, !1454, i64 24}
!1457 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIN6duckdb7CatalogEESaIS3_EE16_Deque_impl_dataE", !1454, i64 0, !239, i64 8, !1456, i64 16, !1456, i64 48}
!1458 = !{!"p2 long", !307, i64 0}
!1459 = !{!"_ZTSSt15_Deque_iteratorImRmPmE", !280, i64 0, !280, i64 8, !280, i64 16, !1458, i64 24}
!1460 = !{!"_ZTSNSt11_Deque_baseImSaImEE16_Deque_impl_dataE", !1458, i64 0, !239, i64 8, !1459, i64 16, !1459, i64 48}
!1461 = !{!"p2 _ZTSSt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS7_18BoundParameterDataELb1EEENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_SA_EEEE", !307, i64 0}
!1462 = !{!"p1 _ZTSSt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS7_18BoundParameterDataELb1EEENS7_33CaseInsensitiveStringHashFunctionENS7_29CaseInsensitiveStringEqualityESaISt4pairIKS6_SA_EEEE", !214, i64 0}
!1463 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEERSJ_PSJ_E", !1462, i64 0, !1462, i64 8, !1462, i64 16, !1461, i64 24}
!1464 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperISt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb10shared_ptrINS8_18BoundParameterDataELb1EEENS8_33CaseInsensitiveStringHashFunctionENS8_29CaseInsensitiveStringEqualityESaISt4pairIKS7_SB_EEEESaISJ_EE16_Deque_impl_dataE", !1461, i64 0, !239, i64 8, !1463, i64 16, !1463, i64 48}
!1465 = !{!"p2 _ZTSSt17reference_wrapperIKN6duckdb11LogicalTypeEE", !307, i64 0}
!1466 = !{!"p1 _ZTSSt17reference_wrapperIKN6duckdb11LogicalTypeEE", !214, i64 0}
!1467 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIKN6duckdb11LogicalTypeEERS4_PS4_E", !1466, i64 0, !1466, i64 8, !1466, i64 16, !1465, i64 24}
!1468 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIKN6duckdb11LogicalTypeEESaIS4_EE16_Deque_impl_dataE", !1465, i64 0, !239, i64 8, !1467, i64 16, !1467, i64 48}
!1469 = !{!"p2 _ZTSSt17reference_wrapperIKN6duckdb15CompressionInfoEE", !307, i64 0}
!1470 = !{!"p1 _ZTSSt17reference_wrapperIKN6duckdb15CompressionInfoEE", !214, i64 0}
!1471 = !{!"_ZTSSt15_Deque_iteratorISt17reference_wrapperIKN6duckdb15CompressionInfoEERS4_PS4_E", !1470, i64 0, !1470, i64 8, !1470, i64 16, !1469, i64 24}
!1472 = !{!"_ZTSNSt11_Deque_baseISt17reference_wrapperIKN6duckdb15CompressionInfoEESaIS4_EE16_Deque_impl_dataE", !1469, i64 0, !239, i64 8, !1471, i64 16, !1471, i64 48}
!1473 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St5stackISt17reference_wrapperIN6duckdb17SerializationData10CustomDataEESt5dequeISD_SaISD_EEEESaISI_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb1ELb0ELb1EEEE", !308, i64 0, !239, i64 8, !310, i64 16, !239, i64 24, !312, i64 32, !309, i64 48}
!1474 = !{!1473, !308, i64 0}
!1475 = !{!1473, !239, i64 8}
!1476 = !{!1468, !1465, i64 0}
!1477 = !{!1468, !1465, i64 40}
!1478 = !{!1468, !1465, i64 72}
!1479 = !{!1466, !1466, i64 0}
!1480 = !{!1464, !1461, i64 0}
!1481 = !{!1464, !1461, i64 40}
!1482 = !{!1464, !1461, i64 72}
!1483 = !{!1462, !1462, i64 0}
!1484 = !{!1460, !1458, i64 0}
!1485 = !{!1460, !1458, i64 40}
!1486 = !{!1460, !1458, i64 72}
!1487 = !{!1457, !1454, i64 0}
!1488 = !{!1457, !1454, i64 40}
!1489 = !{!1457, !1454, i64 72}
!1490 = !{!1455, !1455, i64 0}
!1491 = !{!1453, !1450, i64 0}
!1492 = !{!1453, !1450, i64 40}
!1493 = !{!1453, !1450, i64 72}
!1494 = !{!1451, !1451, i64 0}
!1495 = !{!1449, !1446, i64 0}
!1496 = !{!1449, !1446, i64 40}
!1497 = !{!1449, !1446, i64 72}
!1498 = !{!1447, !1447, i64 0}
!1499 = !{!1472, !1469, i64 0}
end_hunk_6
