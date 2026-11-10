Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_:bb.a
bb.bu:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit121.i unwind label %bb.kt, !inline_history !8864

bb.bv:                                            ; preds = %bb.bs
  %i.gn = call ptr @__cxa_allocate_exception(i64 16) #58, !noalias !8887, !inline_history !8864 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.gn)
          to label %.invoke245 unwind label %bb.bw, !noalias !8887, !inline_history !8864

.invoke245:                                       ; preds = %bb.bv, %bb.bj, %bb.bc
  %i.go = phi ptr [ %i.fx, %bb.bj ], [ %i.fm, %bb.bc ], [ %i.gn, %bb.bv ]
  invoke void @__cxa_throw(ptr nonnull %i.go, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %.cont unwind label %bb.kt, !inline_history !8864

.cont:                                            ; preds = %.invoke245
  unreachable

bb.bw:                                            ; preds = %bb.bv
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gn) #58, !noalias !8887, !inline_history !8864
  br label %.body

bb.bx:                                            ; preds = %bb.bs
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit121.i unwind label %bb.kt, !inline_history !8864

_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit121.i: ; preds = %bb.bx, %bb.bu, %bb.bt
  %i.gq = load i8, ptr %11, align 8, !tbaa !3057
  store i8 %i.gq, ptr %68, align 8, !tbaa !3057
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !3205
  %i.gt = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !3205
  %i.gu = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gw = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !2990
  %i.gx = load <2 x ptr>, ptr %i.gu, align 8, !tbaa !2990
  store <2 x ptr> %i.gw, ptr %i.gu, align 8, !tbaa !2990
  store <2 x ptr> %i.gx, ptr %i.gv, align 8, !tbaa !2990
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.by:                                            ; preds = %bb.br
  %i.gy = icmp eq i8 %i.db, 37
  br i1 %i.gy, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  invoke void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc72 unwind label %bb.kt, !inline_history !8864

.noexc72:                                         ; preds = %bb.bz
  %i.gz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %12) #58, !inline_history !8864 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.ca:                                            ; preds = %bb.by
  %i.ha = invoke noundef i64 @_ZN6duckdb9CastRules12ImplicitCastERKNS_11LogicalTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc73 unwind label %bb.kt, !inline_history !8864 ; 2 uses

.noexc73:                                         ; preds = %bb.ca
  %i.hb = invoke noundef i64 @_ZN6duckdb9CastRules12ImplicitCastERKNS_11LogicalTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc74 unwind label %bb.kt, !inline_history !8864 ; 2 uses

.noexc74:                                         ; preds = %.noexc73
  %i.hc = icmp sgt i64 %i.ha, -1
  %or.cond.i = icmp ugt i64 %i.hb, %i.ha
  %or.cond98.i = and i1 %i.hc, %or.cond.i
  br i1 %or.cond98.i, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %.noexc74
  %i.hd = load i8, ptr %2, align 8, !tbaa !3057
  %i.he = icmp eq i8 %i.hd, 21
  br i1 %i.he, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.hf = load i8, ptr %1, align 8, !tbaa !3057
  %i.hg = icmp eq i8 %i.hf, 109
  br i1 %i.hg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #58
  invoke fastcc void @_ZN6duckdbL16DecimalSizeCheckERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc75 unwind label %bb.kt, !inline_history !8864

.noexc75:                                         ; preds = %bb.ce
  %i.hi = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %13) #58, !inline_history !8864 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cf:                                            ; preds = %bb.cb
  %i.hj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cg:                                            ; preds = %.noexc74
  %i.hk = icmp sgt i64 %i.hb, -1
  %i.hl = load i8, ptr %1, align 8, !tbaa !3057   ; 4 uses
  br i1 %i.hk, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.hm = icmp eq i8 %i.hl, 21
  br i1 %i.hm, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.hn = load i8, ptr %2, align 8, !tbaa !3057
  %i.ho = icmp eq i8 %i.hn, 109
  br i1 %i.ho, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.hp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  invoke fastcc void @_ZN6duckdbL16DecimalSizeCheckERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc76 unwind label %bb.kt, !inline_history !8864

.noexc76:                                         ; preds = %bb.ck
  %i.hq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %14) #58, !inline_history !8864 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cl:                                            ; preds = %bb.ch
  %i.hr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cm:                                            ; preds = %bb.cg
  %i.hs = icmp eq i8 %i.hl, 38
  br i1 %i.hs, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #58
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc77 unwind label %bb.kt, !inline_history !8864

.noexc77:                                         ; preds = %bb.cn
  %i.ht = invoke noundef zeroext i1 @_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %.split unwind label %bb.co, !inline_history !8864

.split:                                           ; preds = %.noexc77
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br i1 %i.ht, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140

bb.co:                                            ; preds = %.noexc77
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br label %.body

bb.cp:                                            ; preds = %bb.cm
  %i.hv = load i8, ptr %2, align 8, !tbaa !3057   ; 4 uses
  %i.hw = icmp eq i8 %i.hv, 38
  br i1 %i.hw, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #58
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %16, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc78 unwind label %bb.kt, !inline_history !8864

.noexc78:                                         ; preds = %bb.cq
  %i.hx = invoke noundef zeroext i1 @_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %68)
          to label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit unwind label %bb.cr, !inline_history !8864

bb.cr:                                            ; preds = %.noexc78
  %i.hy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  br label %.body

bb.cs:                                            ; preds = %bb.cp
  switch i8 %i.hl, label %_ZNK6duckdb11LogicalType10IsIntegralEv.exit.i [
    i8 11, label %bb.ct
    i8 12, label %bb.ct
    i8 13, label %bb.ct
    i8 14, label %bb.ct
    i8 50, label %bb.ct
    i8 22, label %bb.ct
    i8 23, label %bb.ct
    i8 21, label %bb.ct
    i8 28, label %bb.ct
    i8 29, label %bb.ct
    i8 30, label %bb.ct
    i8 31, label %bb.ct
    i8 49, label %bb.ct
    i8 10, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  switch i8 %i.hv, label %_ZNK6duckdb11LogicalType10IsIntegralEv.exit.i [
    i8 11, label %bb.cu
    i8 12, label %bb.cu
    i8 13, label %bb.cu
    i8 14, label %bb.cu
    i8 50, label %bb.cu
    i8 22, label %bb.cu
    i8 23, label %bb.cu
    i8 21, label %bb.cu
    i8 28, label %bb.cu
    i8 29, label %bb.cu
    i8 30, label %bb.cu
    i8 31, label %bb.cu
    i8 49, label %bb.cu
  ]

bb.cu:                                            ; preds = %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  invoke fastcc void @_ZN6duckdbL19CombineNumericTypesERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc79 unwind label %bb.kt, !inline_history !8864

.noexc79:                                         ; preds = %bb.cu
  %i.hz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %17) #58, !inline_history !8864 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cv:                                            ; preds = %bb.cs
  switch i8 %i.hv, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140 [
    i8 11, label %bb.cw
    i8 12, label %bb.cw
    i8 13, label %bb.cw
    i8 14, label %bb.cw
    i8 28, label %bb.cw
    i8 29, label %bb.cw
    i8 30, label %bb.cw
    i8 31, label %bb.cw
    i8 50, label %bb.cw
    i8 49, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv, %bb.cv
  %i.ia = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

_ZNK6duckdb11LogicalType10IsIntegralEv.exit.i:    ; preds = %bb.cs, %bb.ct
  %i.ib = icmp eq i8 %i.hv, 10
  br i1 %i.ib, label %bb.cx, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140

bb.cx:                                            ; preds = %_ZNK6duckdb11LogicalType10IsIntegralEv.exit.i
  switch i8 %i.hl, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140 [
    i8 11, label %bb.cy
    i8 12, label %bb.cy
    i8 13, label %bb.cy
    i8 14, label %bb.cy
    i8 28, label %bb.cy
    i8 29, label %bb.cy
    i8 30, label %bb.cy
    i8 31, label %bb.cy
    i8 50, label %bb.cy
    i8 49, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx, %bb.cx
  %i.ic = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8864 ; 0 uses
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.cz:                                            ; preds = %bb.aa
  switch i8 %i.da, label %bb.kj [
    i8 37, label %bb.da
    i8 38, label %bb.db
    i8 104, label %bb.dg
    i8 25, label %bb.ds
    i8 21, label %bb.ep
    i8 101, label %bb.fp
    i8 108, label %bb.ge
    i8 102, label %bb.hf
    i8 100, label %bb.hu
    i8 107, label %bb.jo
  ]

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #58
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 noundef zeroext 25)
          to label %.noexc17 unwind label %bb.kt, !inline_history !8872

.noexc17:                                         ; preds = %bb.da
  %i.id = load i8, ptr %54, align 8, !tbaa !3057
  store i8 %i.id, ptr %68, align 8, !tbaa !3057
  %i.ie = getelementptr inbounds nuw i8, ptr %54, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !3205
  %i.ig = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !3205
  %i.ih = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.ij = load <2 x ptr>, ptr %i.ii, align 8, !tbaa !2990
  %i.ik = load <2 x ptr>, ptr %i.ih, align 8, !tbaa !2990
  store <2 x ptr> %i.ij, ptr %i.ih, align 8, !tbaa !2990
  store <2 x ptr> %i.ik, ptr %i.ii, align 8, !tbaa !2990
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %54) #58, !inline_history !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.db:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #58
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %55, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc18 unwind label %bb.kt, !inline_history !8872

.noexc18:                                         ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #58
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %56, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.dc unwind label %bb.dd, !inline_history !8872

bb.dc:                                            ; preds = %.noexc18
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #58
  invoke void @_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %53, ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit.i unwind label %bb.de, !inline_history !8873

_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit.i: ; preds = %bb.dc
  %i.il = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %53) #58, !inline_history !8873 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %53) #58, !inline_history !8873
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #58, !inline_history !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %55) #58, !inline_history !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.dd:                                            ; preds = %.noexc18
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %56) #58, !inline_history !8872
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pn82.i = phi { ptr, i32 } [ %i.in, %bb.de ], [ %i.im, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %55) #58, !inline_history !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #58
  br label %.body

bb.dg:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #58
  %i.io = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalType13EqualTypeInfoERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 8 dereferenceable(24) %2)
          to label %_ZNK6duckdb11LogicalTypeeqERKS0_.exit.i unwind label %bb.kt, !inline_history !8872

_ZNK6duckdb11LogicalTypeeqERKS0_.exit.i:          ; preds = %bb.dg
  br i1 %i.io, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZNK6duckdb11LogicalTypeeqERKS0_.exit.i
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc20 unwind label %bb.kt, !inline_history !8872

bb.di:                                            ; preds = %_ZNK6duckdb11LogicalTypeeqERKS0_.exit.i
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %57, i8 noundef zeroext 25)
          to label %.noexc20 unwind label %bb.kt, !inline_history !8872

.noexc20:                                         ; preds = %bb.di, %bb.dh
  %i.ip = load i8, ptr %57, align 8, !tbaa !3057
  store i8 %i.ip, ptr %68, align 8, !tbaa !3057
  %i.iq = getelementptr inbounds nuw i8, ptr %57, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !3205
  %i.is = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !3205
  %i.it = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.iu = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !3011 ; 2 uses
  %i.ix = load <2 x ptr>, ptr %i.iu, align 8, !tbaa !2990
  %.not.i.i.i.i.i.i85.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i.i.i85.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %.noexc20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 8 ; 3 uses
  %i.iz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i.i.i.i86.i = icmp eq i8 %i.iz, 0
  br i1 %.not.i.i.i.i.i.i.i86.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !205
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.iy, align 4, !tbaa !205
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.jc = atomicrmw volatile add ptr %i.iy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.dl, %bb.dk, %.noexc20
  %i.jd = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !3011 ; 8 uses
  store <2 x ptr> %i.ix, ptr %i.it, align 8, !tbaa !2990
  %.not.i.i.i.i.i.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 4 uses
  %i.jg = load atomic i64, ptr %i.jf acquire, align 8 ; 2 uses
  %i.jh = icmp eq i64 %i.jg, 4294967297
  %i.ji = trunc i64 %i.jg to i32                  ; 2 uses
  br i1 %i.jh, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.jf, align 8, !tbaa !3005
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 12
  store i32 0, ptr %i.jj, align 4, !tbaa !3006
  %i.jk = load ptr, ptr %i.je, align 8, !tbaa !2992
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jm = load ptr, ptr %i.jl, align 8
  call void %i.jm(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #58, !inline_history !8874
  %i.jn = load ptr, ptr %i.je, align 8, !tbaa !2992
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jp = load ptr, ptr %i.jo, align 8
  call void %i.jp(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #58, !inline_history !8874
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i

bb.do:                                            ; preds = %bb.dm
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.jr = add nsw i32 %i.ji, -1
  store i32 %i.jr, ptr %i.jf, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.dq:                                            ; preds = %bb.do
  %i.js = atomicrmw volatile add ptr %i.jf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ji, %bb.dp ], [ %i.js, %bb.dq ]
  %i.jt = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jt, label %bb.dr, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i, !prof !3013

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.je) #58, !inline_history !8872
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i

_ZN6duckdb11LogicalTypeaSERKS0_.exit.i:           ; preds = %bb.dr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.dn, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %57) #58, !inline_history !8872
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #58
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.ds:                                            ; preds = %bb.cz
end_hunk_0
begin_hunk_1_@_ZN6duckdb11LogicalType19ForceMaxLogicalTypeERKS0_S2_:bb.a
bb.jv:                                            ; preds = %bb.jt
  %i.aag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i5.i.i281.i = icmp eq i8 %i.aag, 0
  br i1 %.not.i.i.i.i5.i.i281.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aah = add nsw i32 %i.zy, -1
  store i32 %i.aah, ptr %i.zv, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i282.i

bb.jx:                                            ; preds = %bb.jv
  %i.aai = atomicrmw volatile add ptr %i.zv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i282.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i282.i: ; preds = %bb.jx, %bb.jw
  %.0.i.i.i.i.i.i.i283.i = phi i32 [ %i.zy, %bb.jw ], [ %i.aai, %bb.jx ]
  %i.aaj = icmp eq i32 %.0.i.i.i.i.i.i.i283.i, 1
  br i1 %i.aaj, label %bb.jy, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, !prof !3013

bb.jy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i282.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zu) #58, !inline_history !8872
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.jz:                                            ; preds = %.noexc36
  %i.aak = load i8, ptr %1, align 8, !tbaa !3057
  store i8 %i.aak, ptr %68, align 8, !tbaa !3057
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !3205
  %i.aan = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %i.aam, ptr %i.aan, align 1, !tbaa !3205
  %i.aao = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !3011 ; 2 uses
  %i.aar = load <2 x ptr>, ptr %i.g, align 8, !tbaa !2990
  %.not.i.i.i.i.i.i285.i = icmp eq ptr %i.aaq, null
  br i1 %.not.i.i.i.i.i.i285.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8 ; 3 uses
  %i.aat = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i.i.i.i286.i = icmp eq i8 %i.aat, 0
  br i1 %.not.i.i.i.i.i.i.i286.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aau = load i32, ptr %i.aas, align 4, !tbaa !205
  %i.aav = add nsw i32 %i.aau, 1
  store i32 %i.aav, ptr %i.aas, align 4, !tbaa !205
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i

bb.kc:                                            ; preds = %bb.ka
  %i.aaw = atomicrmw volatile add ptr %i.aas, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i: ; preds = %bb.kc, %bb.kb, %bb.jz
  %i.aax = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !3011 ; 8 uses
  store <2 x ptr> %i.aar, ptr %i.aao, align 8, !tbaa !2990
  %.not.i.i.i.i.i288.i = icmp eq ptr %i.aay, null
  br i1 %.not.i.i.i.i.i288.i, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, label %bb.kd

bb.kd:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 4 uses
  %i.aba = load atomic i64, ptr %i.aaz acquire, align 8 ; 2 uses
  %i.abb = icmp eq i64 %i.aba, 4294967297
  %i.abc = trunc i64 %i.aba to i32                ; 2 uses
  br i1 %i.abb, label %bb.ke, label %bb.kf

bb.ke:                                            ; preds = %bb.kd
  store i32 0, ptr %i.aaz, align 8, !tbaa !3005
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aay, i64 12
  store i32 0, ptr %i.abd, align 4, !tbaa !3006
  %i.abe = load ptr, ptr %i.aay, align 8, !tbaa !2992
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8
  call void %i.abg(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #58, !inline_history !8874
  %i.abh = load ptr, ptr %i.aay, align 8, !tbaa !2992
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 24
  %i.abj = load ptr, ptr %i.abi, align 8
  call void %i.abj(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #58, !inline_history !8874
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.kf:                                            ; preds = %bb.kd
  %i.abk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i5.i.i289.i = icmp eq i8 %i.abk, 0
  br i1 %.not.i.i.i.i5.i.i289.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.abl = add nsw i32 %i.abc, -1
  store i32 %i.abl, ptr %i.aaz, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i290.i

bb.kh:                                            ; preds = %bb.kf
  %i.abm = atomicrmw volatile add ptr %i.aaz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i290.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i290.i: ; preds = %bb.kh, %bb.kg
  %.0.i.i.i.i.i.i.i291.i = phi i32 [ %i.abc, %bb.kg ], [ %i.abm, %bb.kh ]
  %i.abn = icmp eq i32 %.0.i.i.i.i.i.i.i291.i, 1
  br i1 %i.abn, label %bb.ki, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, !prof !3013

bb.ki:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i290.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aay) #58, !inline_history !8872
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.kj:                                            ; preds = %bb.cz
  store i8 %i.da, ptr %68, align 8, !tbaa !3057
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !3205
  %i.abq = getelementptr inbounds nuw i8, ptr %68, i64 1
  store i8 %i.abp, ptr %i.abq, align 1, !tbaa !3205
  %i.abr = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.abs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !3011 ; 2 uses
  %i.abu = load <2 x ptr>, ptr %i.g, align 8, !tbaa !2990
  %.not.i.i.i.i.i.i293.i = icmp eq ptr %i.abt, null
  br i1 %.not.i.i.i.i.i.i293.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abt, i64 8 ; 3 uses
  %i.abw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i.i.i.i294.i = icmp eq i8 %i.abw, 0
  br i1 %.not.i.i.i.i.i.i.i294.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.abx = load i32, ptr %i.abv, align 4, !tbaa !205
  %i.aby = add nsw i32 %i.abx, 1
  store i32 %i.aby, ptr %i.abv, align 4, !tbaa !205
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i

bb.km:                                            ; preds = %bb.kk
  %i.abz = atomicrmw volatile add ptr %i.abv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i: ; preds = %bb.km, %bb.kl, %bb.kj
  %i.aca = getelementptr inbounds nuw i8, ptr %68, i64 16
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !3011 ; 8 uses
  store <2 x ptr> %i.abu, ptr %i.abr, align 8, !tbaa !2990
  %.not.i.i.i.i.i296.i = icmp eq ptr %i.acb, null
  br i1 %.not.i.i.i.i.i296.i, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, label %bb.kn

bb.kn:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 8 ; 4 uses
  %i.acd = load atomic i64, ptr %i.acc acquire, align 8 ; 2 uses
  %i.ace = icmp eq i64 %i.acd, 4294967297
  %i.acf = trunc i64 %i.acd to i32                ; 2 uses
  br i1 %i.ace, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  store i32 0, ptr %i.acc, align 8, !tbaa !3005
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acb, i64 12
  store i32 0, ptr %i.acg, align 4, !tbaa !3006
  %i.ach = load ptr, ptr %i.acb, align 8, !tbaa !2992
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.acj = load ptr, ptr %i.aci, align 8
  call void %i.acj(ptr noundef nonnull align 8 dereferenceable(16) %i.acb) #58, !inline_history !8874
  %i.ack = load ptr, ptr %i.acb, align 8, !tbaa !2992
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 24
  %i.acm = load ptr, ptr %i.acl, align 8
  call void %i.acm(ptr noundef nonnull align 8 dereferenceable(16) %i.acb) #58, !inline_history !8874
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

bb.kp:                                            ; preds = %bb.kn
  %i.acn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i5.i.i297.i = icmp eq i8 %i.acn, 0
  br i1 %.not.i.i.i.i5.i.i297.i, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.aco = add nsw i32 %i.acf, -1
  store i32 %i.aco, ptr %i.acc, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i298.i

bb.kr:                                            ; preds = %bb.kp
  %i.acp = atomicrmw volatile add ptr %i.acc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i298.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i298.i: ; preds = %bb.kr, %bb.kq
  %.0.i.i.i.i.i.i.i299.i = phi i32 [ %i.acf, %bb.kq ], [ %i.acp, %bb.kr ]
  %i.acq = icmp eq i32 %.0.i.i.i.i.i.i.i299.i, 1
  br i1 %i.acq, label %bb.ks, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, !prof !3013

bb.ks:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i298.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acb) #58, !inline_history !8872
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread

_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit: ; preds = %.noexc78
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #58, !inline_history !8864
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #58
  br i1 %i.hx, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread, label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140

_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread: ; preds = %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread.critedge, %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit109.i, %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit.i, %.noexc76, %bb.cj, %.noexc75, %bb.cd, %bb.cy, %bb.cw, %.noexc79, %bb.cf, %bb.cl, %.noexc72, %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit121.i, %_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit120.i, %_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit.i39, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i295.i, %bb.ko, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i298.i, %bb.ks, %bb.ke, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i290.i, %bb.ki, %bb.ju, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i282.i, %bb.jy, %bb.ek, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i101.i, %bb.eo, %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i93.i, %bb.ee, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i279.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i90.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i270.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i237.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i183.i, %.noexc27, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i98.i, %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i, %_ZN6duckdb21ForceGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit.i, %.noexc17, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i287.i, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i104.i, %bb.aw, %bb.ah, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i53, %bb.al, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i50, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.v, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i89, %bb.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i86, %bb.z, %bb.m, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i101.i, %_ZN6duckdbL18CombineStructTypesINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.i.thread143, %.split, %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %68) #58
  br label %bb.ku

_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140.sink.split: ; preds = %bb.hw
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  br label %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140

_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140: ; preds = %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140.sink.split, %bb.cx, %_ZNK6duckdb11LogicalType10IsIntegralEv.exit.i, %bb.cv, %.split, %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit
  %.val11 = load i8, ptr %1, align 8, !tbaa !3057
  %i.acr = call fastcc noundef i64 @_ZN6duckdbL19GetLogicalTypeScoreERKNS_11LogicalTypeE(i8 %.val11)
  %.val = load i8, ptr %2, align 8, !tbaa !3057
  %i.acs = call fastcc noundef i64 @_ZN6duckdbL19GetLogicalTypeScoreERKNS_11LogicalTypeE(i8 %.val)
  %i.act = icmp samesign ult i64 %i.acr, %i.acs
  %i.acu = select i1 %i.act, ptr %2, ptr %1
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.acu)
          to label %bb.ku unwind label %bb.kt

bb.kt:                                            ; preds = %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140, %.invoke245, %.noexc.i.i99, %.noexc.i.i, %bb.cu, %bb.cq, %bb.cn, %bb.ck, %bb.ce, %.noexc73, %bb.ca, %bb.bz, %bb.bx, %bb.bu, %bb.bt, %bb.bp, %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.be, %bb.bb, %bb.ba, %.noexc35, %bb.jo, %bb.hv, %.noexc32, %.noexc31, %bb.hu, %bb.hf, %bb.ge, %bb.fp, %.noexc26, %bb.fo, %_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE.exit148.i, %.noexc23, %_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE.exit130.i, %.noexc.i.i.i, %bb.di, %bb.dh, %bb.dg, %bb.db, %bb.da
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bn, %bb.bq, %bb.co, %bb.cr, %bb.kt, %bb.bd, %bb.bk, %bb.bw, %bb.df, %.body.i, %.body197.i, %.body251.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147.i, %bb.fm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i137.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i138.i, %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120.i, %bb.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.eu, %bb.jn
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %.body251.i ], [ %i.om, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i146.i ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %.pn9.i.i.i.i, %bb.eu ], [ %i.nh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i119.i ], [ %.pn9.i.i.i116.i, %bb.fa ], [ %i.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i137.i ], [ %.pn95.pn.i.i, %bb.jn ], [ %i.na, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i120.i ], [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i138.i ], [ %.pn9.i.i.i134.i, %bb.fg ], [ %i.om, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i147.i ], [ %.pn9.i.i.i143.i, %bb.fm ], [ %.pn82.i, %bb.df ], [ %.pn80.i, %.body.i ], [ %.pn77.pn.i, %.body197.i ], [ %i.acv, %bb.kt ], [ %i.fn, %bb.bd ], [ %i.fy, %bb.bk ], [ %i.gp, %bb.bw ], [ %i.gi, %bb.bn ], [ %i.gl, %bb.bq ], [ %i.hu, %bb.co ], [ %i.hy, %bb.cr ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %68) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #58
  resume { ptr, i32 } %eh.lpad-body

bb.ku:                                            ; preds = %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread140, %_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_21ForceGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit.thread
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %68) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #58
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 !guid !8890 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !tbaa !3057
  store i8 %i.a, ptr %0, align 8, !tbaa !3057
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !3205
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !3205
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load <2 x ptr>, ptr %i.e, align 8, !tbaa !2990
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !2990
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !3011 ; 8 uses
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !2990
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.l, align 8, !tbaa !3005
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !3006
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !2992
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #58, !inline_history !8889
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !2992
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #58, !inline_history !8889
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.o, %bb.e ], [ %i.y, %bb.f ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.z, label %bb.g, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, !prof !3013

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #58
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !3011 ; 8 uses
  store <2 x ptr> %i.h, ptr %i.f, align 8, !tbaa !2990
  %.not.i.i.i.i4.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i4.i, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.ab, align 8, !tbaa !3005
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !3006
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !2992
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #58, !inline_history !8889
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !2992
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #58, !inline_history !8889
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

bb.j:                                             ; preds = %bb.h
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !3012
  %.not.i.i.i.i.i5.i = icmp eq i8 %i.am, 0
  br i1 %.not.i.i.i.i.i5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !205
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

bb.l:                                             ; preds = %bb.j
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i7.i = phi i32 [ %i.ae, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i7.i, 1
  br i1 %i.ap, label %bb.m, label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit, !prof !3013

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #58
  br label %_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit

_ZSt4swapIN6duckdb10shared_ptrINS0_13ExtraTypeInfoELb1EEEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i, %bb.m
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb11LogicalType29TryGetMaxLogicalTypeUncheckedERKS0_S2_RS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 align 2 !guid !8891 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !8904 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %9 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %10 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %11 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %12 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %13 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %15 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %21 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %23 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %24 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %25 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %26 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #58
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8905)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3272, !noalias !8905 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.thread, label %_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i

_ZNK6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEptEv.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.f, ptr %27, align 8, !tbaa !3086, !alias.scope !8905
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !2975 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !3058 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58, !noalias !8905
  store i64 %i.i, ptr %i.b, align 8, !tbaa !2989, !noalias !8905
end_hunk_1
begin_hunk_2_@_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_:bb.a
bb.bl:                                            ; preds = %bb.bc, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #58
  call void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899
  %i.fx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %17) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bm:                                            ; preds = %.critedge97.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #58
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 noundef zeroext 25), !inline_history !8899
  %i.fy = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit41 unwind label %bb.bn, !inline_history !8900

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit41: ; preds = %bb.bm
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #58
  br label %common.resume102

bb.bo:                                            ; preds = %.critedge97.i
  %i.ga = icmp eq i8 %i.cz, 104
  br i1 %i.ga, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #58
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 noundef zeroext 25), !inline_history !8899
  %i.gb = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit40 unwind label %bb.bq, !inline_history !8900

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit40: ; preds = %bb.bp
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bq:                                            ; preds = %bb.bp
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #58
  br label %common.resume102

bb.br:                                            ; preds = %bb.bo
  %i.gd = icmp eq i8 %i.cy, 37
  br i1 %i.gd, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #58
  call void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %20, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899
  %i.ge = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %20) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bt:                                            ; preds = %bb.br
  %i.gf = icmp eq i8 %i.cz, 37
  br i1 %i.gf, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #58
  call void @_ZN6duckdb11LogicalType13NormalizeTypeERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %21, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899
  %i.gg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %21) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bv:                                            ; preds = %bb.bt
  %i.gh = call noundef i64 @_ZN6duckdb9CastRules12ImplicitCastERKNS_11LogicalTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899 ; 2 uses
  %i.gi = call noundef i64 @_ZN6duckdb9CastRules12ImplicitCastERKNS_11LogicalTypeES3_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899 ; 2 uses
  %i.gj = icmp sgt i64 %i.gh, -1
  %or.cond.i = icmp ugt i64 %i.gi, %i.gh
  %or.cond98.i = and i1 %i.gj, %or.cond.i
  br i1 %or.cond98.i, label %bb.bw, label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.gk = load i8, ptr %1, align 8, !tbaa !3057
  %i.gl = icmp eq i8 %i.gk, 21
  br i1 %i.gl, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.gm = load i8, ptr %0, align 8, !tbaa !3057
  %i.gn = icmp eq i8 %i.gm, 109
  br i1 %i.gn, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.go = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #58
  call fastcc void @_ZN6duckdbL16DecimalSizeCheckERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %22, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899
  %i.gp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %22) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ca:                                            ; preds = %bb.bw
  %i.gq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cb:                                            ; preds = %bb.bv
  %i.gr = icmp sgt i64 %i.gi, -1
  %i.gs = load i8, ptr %0, align 8, !tbaa !3057   ; 4 uses
  br i1 %i.gr, label %bb.cc, label %bb.ch

bb.cc:                                            ; preds = %bb.cb
  %i.gt = icmp eq i8 %i.gs, 21
  br i1 %i.gt, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.gu = load i8, ptr %1, align 8, !tbaa !3057
  %i.gv = icmp eq i8 %i.gu, 109
  br i1 %i.gv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.gw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #58
  call fastcc void @_ZN6duckdbL16DecimalSizeCheckERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899
  %i.gx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %23) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cg:                                            ; preds = %bb.cc
  %i.gy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.ch:                                            ; preds = %bb.cb
  %i.gz = icmp eq i8 %i.gs, 38
  br i1 %i.gz, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #58
  call void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %24, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899
  %i.ha = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit39 unwind label %bb.cj, !inline_history !8900

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit39: ; preds = %bb.ci
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cj:                                            ; preds = %bb.ci
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #58
  br label %common.resume102

bb.ck:                                            ; preds = %bb.ch
  %i.hc = load i8, ptr %1, align 8, !tbaa !3057   ; 4 uses
  %i.hd = icmp eq i8 %i.hc, 38
  br i1 %i.hd, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #58
  call void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899
  %i.he = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit unwind label %bb.cm, !inline_history !8900

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit: ; preds = %bb.cl
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cm:                                            ; preds = %bb.cl
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #58
  br label %common.resume102

bb.cn:                                            ; preds = %bb.ck
  switch i8 %i.gs, label %_ZNK6duckdb11LogicalType10IsIntegralEv.exit36 [
    i8 11, label %bb.co
    i8 12, label %bb.co
    i8 13, label %bb.co
    i8 14, label %bb.co
    i8 50, label %bb.co
    i8 22, label %bb.co
    i8 23, label %bb.co
    i8 21, label %bb.co
    i8 28, label %bb.co
    i8 29, label %bb.co
    i8 30, label %bb.co
    i8 31, label %bb.co
    i8 49, label %bb.co
    i8 10, label %bb.cq
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn, %bb.cn
  switch i8 %i.hc, label %_ZNK6duckdb11LogicalType10IsIntegralEv.exit36 [
    i8 11, label %bb.cp
    i8 12, label %bb.cp
    i8 13, label %bb.cp
    i8 14, label %bb.cp
    i8 50, label %bb.cp
    i8 22, label %bb.cp
    i8 23, label %bb.cp
    i8 21, label %bb.cp
    i8 28, label %bb.cp
    i8 29, label %bb.cp
    i8 30, label %bb.cp
    i8 31, label %bb.cp
    i8 49, label %bb.cp
  ]

bb.cp:                                            ; preds = %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #58
  call fastcc void @_ZN6duckdbL19CombineNumericTypesERKNS_11LogicalTypeES2_(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899
  %i.hg = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %26) #58, !inline_history !8899 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #58, !inline_history !8899
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #58
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cq:                                            ; preds = %bb.cn
  switch i8 %i.hc, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit [
    i8 11, label %bb.cr
    i8 12, label %bb.cr
    i8 13, label %bb.cr
    i8 14, label %bb.cr
    i8 28, label %bb.cr
    i8 29, label %bb.cr
    i8 30, label %bb.cr
    i8 31, label %bb.cr
    i8 50, label %bb.cr
    i8 49, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq, %bb.cq
  %i.hh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZNK6duckdb11LogicalType10IsIntegralEv.exit36:    ; preds = %bb.cn, %bb.co
  %i.hi = icmp eq i8 %i.hc, 10
  br i1 %i.hi, label %bb.cs, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cs:                                            ; preds = %_ZNK6duckdb11LogicalType10IsIntegralEv.exit36
  switch i8 %i.gs, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit [
    i8 11, label %bb.ct
    i8 12, label %bb.ct
    i8 13, label %bb.ct
    i8 14, label %bb.ct
    i8 28, label %bb.ct
    i8 29, label %bb.ct
    i8 30, label %bb.ct
    i8 31, label %bb.ct
    i8 50, label %bb.ct
    i8 49, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs, %bb.cs
  %i.hj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8899 ; 0 uses
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

bb.cu:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  switch i8 %i.cy, label %bb.es [
    i8 37, label %bb.cv
    i8 38, label %bb.cw
    i8 104, label %_ZNK6duckdb11LogicalTypeeqERKS0_.exit
    i8 25, label %bb.de
    i8 21, label %bb.dh
    i8 101, label %bb.dk
    i8 108, label %bb.dt
    i8 102, label %bb.ef
    i8 100, label %bb.eo
    i8 107, label %bb.ep
  ]

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef zeroext 25), !inline_history !8901
  %i.hk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #58, !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZN6duckdb14IntegerLiteral7GetTypeERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.cx unwind label %bb.cy, !inline_history !8901

bb.cx:                                            ; preds = %bb.cw
  %i.hl = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit58 unwind label %bb.cz, !inline_history !8902

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit58: ; preds = %bb.cx
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.cy:                                            ; preds = %bb.cw
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #58, !inline_history !8901
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn82.i = phi { ptr, i32 } [ %i.hn, %bb.cz ], [ %i.hm, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %common.resume102

_ZNK6duckdb11LogicalTypeeqERKS0_.exit:            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  %i.ho = call noundef zeroext i1 @_ZNK6duckdb11LogicalType13EqualTypeInfoERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %1), !inline_history !8903
  br i1 %i.ho, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZNK6duckdb11LogicalTypeeqERKS0_.exit
  call void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901
  br label %bb.dd

bb.dc:                                            ; preds = %_ZNK6duckdb11LogicalTypeeqERKS0_.exit
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 25), !inline_history !8901
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.hp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %6), !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.de:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  call void @_ZN6duckdb10StringType12GetCollationB5cxx11ERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901
  %i.hq = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !3058 ; 2 uses
  %i.hs = icmp eq i64 %i.hr, 0
  %i.ht = load ptr, ptr %7, align 8, !tbaa !2975  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54: ; preds = %bb.de
  %i.hw = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.de
  call void @_ZdlPv(ptr noundef %i.ht) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  br i1 %i.hs, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.hx = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901 ; 0 uses
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.dg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %i.hy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901 ; 0 uses
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.dh:                                            ; preds = %bb.cu
  %i.hz = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetWidthERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901
  %i.ia = zext i8 %i.hz to i32
  %i.ib = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901
  %i.ic = zext i8 %i.ib to i32
  %i.id = sub nsw i32 %i.ia, %i.ic
  %i.ie = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetWidthERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901
  %i.if = zext i8 %i.ie to i32
  %i.ig = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901
  %i.ih = zext i8 %i.ig to i32
  %i.ii = sub nsw i32 %i.if, %i.ih
  %i.ij = call noundef zeroext i8 @_ZN6duckdb15NumericCastImplIhiLb0EE7ConvertEi(i32 noundef %i.id)
  %i.ik = call noundef zeroext i8 @_ZN6duckdb15NumericCastImplIhiLb0EE7ConvertEi(i32 noundef %i.ii)
  %i.il = call noundef i8 @llvm.umax.i8(i8 %i.ij, i8 %i.ik)
  %i.im = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901
  %i.in = call noundef zeroext i8 @_ZN6duckdb11DecimalType8GetScaleERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901
  %i.io = call noundef i8 @llvm.umax.i8(i8 %i.im, i8 %i.in) ; 2 uses
  %i.ip = zext i8 %i.il to i32                    ; 2 uses
  %i.iq = zext i8 %i.io to i32
  %i.ir = add nuw nsw i32 %i.iq, %i.ip
  %i.is = call noundef zeroext i8 @_ZN6duckdb15NumericCastImplIhiLb0EE7ConvertEi(i32 noundef %i.ir) ; 2 uses
  %i.it = icmp ugt i8 %i.is, 38
  br i1 %i.it, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.iu = sub nsw i32 38, %i.ip
  %i.iv = call noundef zeroext i8 @_ZN6duckdb15NumericCastImplIhiLb0EE7ConvertEi(i32 noundef %i.iu)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.061.i = phi i8 [ %i.iv, %bb.di ], [ %i.io, %bb.dh ]
  %.0.i = phi i8 [ 38, %bb.di ], [ %i.is, %bb.dh ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #58
  call void @_ZN6duckdb11LogicalType7DECIMALEhh(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %8, i8 noundef zeroext %.0.i, i8 noundef zeroext %.061.i), !inline_history !8901
  %i.iw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %8) #58, !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.dk:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #58
  call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9), !inline_history !8901
  %i.ix = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.dl unwind label %bb.dn, !inline_history !8901

bb.dl:                                            ; preds = %bb.dk
  %i.iy = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dm unwind label %bb.dn, !inline_history !8901

bb.dm:                                            ; preds = %bb.dl
  %i.iz = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ix, ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit52 unwind label %bb.dn, !inline_history !8902 ; 2 uses

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit52: ; preds = %bb.dm
  br i1 %i.iz, label %bb.do, label %bb.dr

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.do:                                            ; preds = %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.dp unwind label %bb.dq, !inline_history !8901

bb.dp:                                            ; preds = %bb.do
  %i.jb = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10) #58, !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit52
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.ds:                                            ; preds = %bb.dq, %bb.dn
  %.pn80.i = phi { ptr, i32 } [ %i.jc, %bb.dq ], [ %i.ja, %bb.dn ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  br label %common.resume102

bb.dt:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %11), !inline_history !8901
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.du unwind label %bb.eb, !inline_history !8901

bb.du:                                            ; preds = %bb.dt
  %i.je = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ArrayType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dv unwind label %bb.eb, !inline_history !8901

bb.dv:                                            ; preds = %bb.du
  %i.jf = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %i.je, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit51 unwind label %bb.eb, !inline_history !8902 ; 2 uses

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit51: ; preds = %bb.dv
  br i1 %i.jf, label %bb.dw, label %bb.ed

bb.dw:                                            ; preds = %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit51
  %i.jg = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.dx unwind label %bb.eb, !inline_history !8901

bb.dx:                                            ; preds = %bb.dw
  %i.jh = invoke noundef i64 @_ZN6duckdb9ArrayType7GetSizeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.dy unwind label %bb.eb, !inline_history !8901

bb.dy:                                            ; preds = %bb.dx
  %i.ji = call noundef i64 @llvm.umax.i64(i64 %i.jg, i64 %i.jh)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #58
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %i.ji)
          to label %bb.dz unwind label %bb.ec, !inline_history !8901

bb.dz:                                            ; preds = %bb.dy
  %i.jj = load i64, ptr %13, align 8
  invoke void @_ZN6duckdb11LogicalType5ARRAYERKS0_NS_12optional_idxE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 %i.jj)
          to label %bb.ea unwind label %bb.ec, !inline_history !8901

bb.ea:                                            ; preds = %bb.dz
  %i.jk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %12) #58, !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br label %bb.ed

bb.eb:                                            ; preds = %bb.dv, %bb.dx, %bb.dw, %bb.du, %bb.dt
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

bb.ec:                                            ; preds = %bb.dz, %bb.dy
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #58
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit51
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.ee:                                            ; preds = %bb.ec, %bb.eb
  %.pn77.pn.i = phi { ptr, i32 } [ %i.jl, %bb.eb ], [ %i.jm, %bb.ec ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  br label %common.resume102

bb.ef:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #58
  call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %14), !inline_history !8901
  %i.jn = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.eg unwind label %bb.ei, !inline_history !8901

bb.eg:                                            ; preds = %bb.ef
  %i.jo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.eh unwind label %bb.ei, !inline_history !8901

bb.eh:                                            ; preds = %bb.eg
  %i.jp = invoke fastcc noundef zeroext i1 @_ZN6duckdbL28TryGetMaxLogicalTypeInternalINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit50 unwind label %bb.ei, !inline_history !8902 ; 2 uses

_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit50: ; preds = %bb.eh
  br i1 %i.jp, label %bb.ej, label %bb.em

bb.ei:                                            ; preds = %bb.eh, %bb.eg, %bb.ef
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ej:                                            ; preds = %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #58
  invoke void @_ZN6duckdb11LogicalType3MAPERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %15, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ek unwind label %bb.el, !inline_history !8901

bb.ek:                                            ; preds = %bb.ej
  %i.jr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %15) #58, !inline_history !8901 ; 0 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #58
  br label %bb.en

bb.em:                                            ; preds = %bb.ek, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit50
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.en:                                            ; preds = %bb.el, %bb.ei
  %.pn.i = phi { ptr, i32 } [ %i.js, %bb.el ], [ %i.jq, %bb.ei ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #58, !inline_history !8901
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #58
  br label %common.resume102

bb.eo:                                            ; preds = %bb.cu
  %i.jt = call fastcc noundef zeroext i1 @_ZN6duckdbL18CombineStructTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2), !inline_history !8901
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.ep:                                            ; preds = %bb.cu
  %i.ju = call noundef i64 @_ZN6duckdb9UnionType14GetMemberCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901 ; 2 uses
  %i.jv = call noundef i64 @_ZN6duckdb9UnionType14GetMemberCountERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %1), !inline_history !8901 ; 2 uses
  %.not.i33 = icmp eq i64 %i.ju, %i.jv
  br i1 %.not.i33, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.jw = icmp ugt i64 %i.ju, %i.jv
  %i.jx = select i1 %i.jw, ptr %0, ptr %1
  %i.jy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.jx), !inline_history !8901 ; 0 uses
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.er:                                            ; preds = %bb.ep
  %i.jz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901 ; 0 uses
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

bb.es:                                            ; preds = %bb.cu
  %i.ka = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb11LogicalTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0), !inline_history !8901 ; 0 uses
  br label %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit

_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit: ; preds = %bb.cv, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit58, %bb.dd, %bb.df, %bb.dg, %bb.dj, %bb.dr, %bb.ed, %bb.em, %bb.eo, %bb.eq, %bb.er, %bb.es
  %.473.i = phi i1 [ true, %bb.es ], [ true, %bb.cv ], [ %i.hl, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit58 ], [ true, %bb.dd ], [ true, %bb.df ], [ true, %bb.dj ], [ %i.iz, %bb.dr ], [ %i.jf, %bb.ed ], [ %i.jp, %bb.em ], [ %i.jt, %bb.eo ], [ true, %bb.dg ], [ true, %bb.er ], [ true, %bb.eq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  br label %_ZN6duckdb11LogicalTypeaSERKS0_.exit

_ZN6duckdb11LogicalTypeaSERKS0_.exit:             ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97, %bb.aw, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i94, %bb.aq, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit41, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit40, %bb.bs, %bb.bu, %bb.by, %bb.bz, %bb.ca, %bb.ce, %bb.cf, %bb.cg, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit39, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit, %bb.cp, %bb.cr, %_ZNK6duckdb11LogicalType10IsIntegralEv.exit36, %bb.ct, %bb.bl, %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit, %bb.cs, %bb.cq, %bb.ae, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i44, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47, %bb.ao, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29, %bb.x, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i26, %bb.r, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.j, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, %bb.d, %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit
  %.0 = phi i1 [ %.473.i, %_ZN6duckdbL17CombineEqualTypesINS_19TryGetTypeOperationEEEbRKNS_11LogicalTypeES4_RS2_.exit ], [ true, %bb.n ], [ true, %bb.ab ], [ true, %bb.d ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i ], [ true, %bb.j ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i ], [ true, %bb.r ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i26 ], [ true, %bb.x ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i29 ], [ true, %bb.ao ], [ false, %bb.cq ], [ true, %bb.ae ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i44 ], [ true, %bb.ak ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i47 ], [ %i.fy, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit41 ], [ %i.gb, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit40 ], [ true, %bb.bs ], [ true, %bb.bu ], [ false, %_ZNK6duckdb11LogicalType10IsIntegralEv.exit36 ], [ true, %bb.cg ], [ true, %bb.ca ], [ %i.ha, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit39 ], [ %i.he, %_ZN6duckdb19TryGetTypeOperation9OperationERKNS_11LogicalTypeES3_RS1_.exit ], [ true, %bb.cp ], [ true, %bb.cr ], [ true, %bb.ct ], [ true, %bb.by ], [ true, %bb.bz ], [ true, %bb.ce ], [ true, %bb.cf ], [ true, %_ZN6duckdb11LogicalType13NormalizeTypeERKS0_.exit ], [ true, %bb.bl ], [ false, %bb.cs ], [ true, %bb.aq ], [ true, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i94 ], [ true, %bb.aw ], [ true, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i97 ], [ true, %bb.ba ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i64 0, 1001) i64 @_ZN6duckdbL19GetLogicalTypeScoreERKNS_11LogicalTypeE(i8 %.0.val) unnamed_addr #17 !guid !8908 {
bb.a:
  %i.a = icmp ult i8 %.0.val, 110
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN6duckdbL19GetLogicalTypeScoreERKNS_11LogicalTypeE, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 1000, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb11LogicalType14MaxLogicalTypeERNS_13ClientContextERKS0_S4_(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::LogicalType") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !8909 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  tail call void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.a = invoke noundef zeroext i1 @_ZN6duckdb11LogicalType20TryGetMaxLogicalTypeERNS_13ClientContextERKS0_S4_RS0_(ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1993, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #58
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #58
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #59
          to label %bb.n unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.g = load ptr, ptr %7, align 8, !tbaa !2975   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.g) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.e, %bb.i ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.f, %bb.j ] ; 4 uses
  %.1 = phi i1 [ true, %bb.i ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #58
  %i.j = load ptr, ptr %6, align 8, !tbaa !2975   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.j) #60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %i.m = load ptr, ptr %4, align 8, !tbaa !2975   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread: ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #58
  %i.q = load ptr, ptr %4, align 8, !tbaa !2975   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread
  call void @_ZdlPv(ptr noundef %i.q) #60
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  call void @_ZdlPv(ptr noundef %i.m) #60
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.1, label %bb.k, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br i1 %.1, label %bb.k, label %bb.m

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread
  %.pn.pn.pn28.ph = phi { ptr, i32 } [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn.pn.pn28 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.pn.pn.pn28.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #58
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  ret void

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.k, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn28, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.c, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #58
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !8912 {
bb.a:
  %4 = alloca %"class.std::vector.937", align 8   ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58, !noalias !8913
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !8913
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !2998, !noalias !8913 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2999, !noalias !8913 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2975 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #60
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !2998, !noalias !8913
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
end_hunk_2
