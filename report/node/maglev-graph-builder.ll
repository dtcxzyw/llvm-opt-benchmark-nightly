Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 141
loop-unroll.NumUnrolled: 386
begin_hunk_0_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddNewNodeOrGetEquivalentINS1_22ConvertHoleToUndefinedEJEEEPT_bSt16initializer_listIPNS1_9ValueNodeEEDpOT0_:bb.a
bb.c:                                             ; preds = %bb.b
  %i.bc = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef nonnull %.19.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aq) #33 ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 272 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, -1
  store i64 %i.bf, ptr %i.bd, align 8
  br label %.critedge.i

bb.d:                                             ; preds = %bb.b
  %i.bg = and i64 %i.bb, 4294901760
  %i.bh = icmp eq i64 %i.bg, 65536
  br i1 %i.bh, label %.preheader.i, label %.critedge.i

.preheader.i:                                     ; preds = %bb.d
  %i.bi = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8
  %.not32.i = icmp eq ptr %storemerge31.lcssa, %i.bj
  br i1 %.not32.i, label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_22ConvertHoleToUndefinedEJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit, label %.critedge.i

.lr.ph53.new:                                     ; preds = %.prol.loopexit, %.lr.ph37.3
  %i.bk = phi ptr [ %i.ci, %.lr.ph37.3 ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = and i64 %i.bn, 7696581394432
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph37, label %._crit_edge38, !prof !76

._crit_edge38:                                    ; preds = %.lr.ph37.2, %.lr.ph37.1, %.lr.ph37, %.lr.ph53.new, %.prol.preheader, %.lr.ph.split
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.177) #32
  unreachable

.lr.ph37:                                         ; preds = %.lr.ph53.new
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, 7696581394432
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph37.1, label %._crit_edge38, !prof !76

.lr.ph37.1:                                       ; preds = %.lr.ph37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = and i64 %i.bz, 7696581394432
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.lr.ph37.2, label %._crit_edge38, !prof !76

.lr.ph37.2:                                       ; preds = %.lr.ph37.1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, 7696581394432
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph37.3, label %._crit_edge38, !prof !76

.lr.ph37.3:                                       ; preds = %.lr.ph37.2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %.not.3 = icmp eq ptr %i.ci, %i.b
  br i1 %.not.3, label %._crit_edge, label %.lr.ph53.new

.critedge.i:                                      ; preds = %bb.b, %bb.d, %.preheader.i, %_ZNSt3mapIjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionESt4lessIjENS1_13ZoneAllocatorISt4pairIKjS4_EEEE4findERS9_.exit.i, %bb.c, %._crit_edge, %_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  %i.co = load i64, ptr %i.cn, align 8            ; 2 uses
  %i.cp = sub i64 %i.cm, %i.co
  %i.cq = icmp ult i64 %i.cp, 32
  br i1 %i.cq, label %bb.e, label %_ZN2v88internal6maglev8NodeBase3NewINS1_22ConvertHoleToUndefinedEJEEEPT_PNS0_4ZoneEmDpOT0_.exit, !prof !53

bb.e:                                             ; preds = %.critedge.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, i64 noundef 32) #33
  %.pre.i.i.i = load i64, ptr %i.cn, align 8
  br label %_ZN2v88internal6maglev8NodeBase3NewINS1_22ConvertHoleToUndefinedEJEEEPT_PNS0_4ZoneEmDpOT0_.exit

_ZN2v88internal6maglev8NodeBase3NewINS1_22ConvertHoleToUndefinedEJEEEPT_PNS0_4ZoneEmDpOT0_.exit: ; preds = %.critedge.i, %bb.e
  %i.cr = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.co, %.critedge.i ] ; 2 uses
  %i.cs = add i64 %i.cr, 32
  store i64 %i.cs, ptr %i.cn, align 8
  %i.ct = add i64 %i.cr, 8
  %i.cu = inttoptr i64 %i.ct to ptr               ; 7 uses
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 65623, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 8
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = and i64 %i.cy, 7696581394432
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_22ConvertHoleToUndefinedESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit, label %bb.f, !prof !77

bb.f:                                             ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_22ConvertHoleToUndefinedEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.179) #32
  unreachable

_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_22ConvertHoleToUndefinedESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit: ; preds = %_ZN2v88internal6maglev8NodeBase3NewINS1_22ConvertHoleToUndefinedEJEEEPT_PNS0_4ZoneEmDpOT0_.exit
  %i.db = getelementptr inbounds i8, ptr %i.cu, i64 -8
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge31.lcssa, i64 16 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = add nsw i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 8
  store ptr %storemerge31.lcssa, ptr %i.db, align 8
  %i.df = load ptr, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 728
  %i.dh = load ptr, ptr %i.dg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ak, ptr %i.a, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.cu, ptr %4, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -1, ptr %i.dj, align 8
  %i.dk = call { ptr, i8 } @_ZNSt8_Rb_treeIjSt4pairIKjN2v88internal6maglev16KnownNodeAspects19AvailableExpressionEESt10_Select1stIS7_ESt4lessIjENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRjS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.di, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25AddInitializedNodeToGraphEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %i.cu)
  br label %_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_22ConvertHoleToUndefinedEJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit

_ZN2v88internal6maglev16KnownNodeAspects14FindExpressionINS1_22ConvertHoleToUndefinedEJEEEPT_jRSt5arrayIPNS1_9ValueNodeEXsrS5_11kInputCountEEDpOT0_.exit: ; preds = %.preheader.i, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_22ConvertHoleToUndefinedESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit
  %.0 = phi ptr [ %i.cu, %_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE25SetNodeInputsNoConversionINS1_22ConvertHoleToUndefinedESt5arrayIPNS1_9ValueNodeELm1EEEEvPT_T0_.exit ], [ %i.az, %.preheader.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 3) i32 @"_ZN4absl19functional_internal12InvokeObjectIZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEE3$_1NS5_12BranchResultEJRNS5_13BranchBuilderEEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.d, align 8
  %.val2.val = load ptr, ptr %.val2, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 184
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 280
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.i, %bb.a ] ; 3 uses
  %.0811.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %.19.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, ptr %.0811.i.i.i.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i.i.i.i.i = select i1 %i.m, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.n = icmp eq ptr %.19.i.i.i.i.i.i.i.i.i.i, %i.j
  br i1 %i.n, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i.i.i.i.i

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i, label %bb.b

_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS7_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.r = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_13Int32ConstantEJiRiEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.r, ptr %i.b, align 8
  %i.s = call { ptr, i8 } @_ZNSt8_Rb_treeIiSt4pairIKiPN2v88internal6maglev13Int32ConstantEESt10_Select1stIS7_ESt4lessIiENS3_13ZoneAllocatorIS7_EEE17_M_emplace_uniqueIJRiRS6_EEES0_ISt17_Rb_tree_iteratorIS7_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.t = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %"_ZSt6invokeIRKZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEE3$_1JRNS3_13BranchBuilderEEENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit"

bb.b:                                             ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.i.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i.i.i.i, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  br label %"_ZSt6invokeIRKZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEE3$_1JRNS3_13BranchBuilderEEENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit"

"_ZSt6invokeIRKZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEE3$_1JRNS3_13BranchBuilderEEENSt13invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit": ; preds = %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i, %bb.b
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.t, %_ZNSt3mapIiPN2v88internal6maglev13Int32ConstantESt4lessIiENS1_13ZoneAllocatorISt4pairIKiS4_EEEE4findERS9_.exit.thread.i.i.i.i.i.i.i ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = call noundef range(i32 0, 3) i32 @_ZN2v88internal6maglev18MaglevGraphBuilder25BuildBranchIfInt32CompareERNS2_13BranchBuilderE9OperationPNS1_9ValueNodeES7_(ptr noundef nonnull align 8 dereferenceable(953) %.val, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 21, ptr noundef %.val2.val, ptr noundef %.0.i.i.i.i.i.i.i)
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define internal i64 @"_ZN4absl19functional_internal12InvokeObjectIZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEE3$_0NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %class.anon.3042, align 8           ; 5 uses
  %2 = alloca %class.anon.3043, align 8           ; 4 uses
  %3 = alloca %"class.v8::base::FunctionRef.61", align 8 ; 5 uses
  %4 = alloca %class.anon.3044, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = load <2 x ptr>, ptr %i.b, align 8
  store <2 x ptr> %5, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load <2 x ptr>, ptr %0, align 8
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  store ptr %i.e, ptr %1, align 8
  %i.f = load <2 x ptr>, ptr %i.c, align 8
  %i.g = shufflevector <2 x ptr> %i.f, <2 x ptr> %i.d, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x ptr> %i.g, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %i.e, ptr %4, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlvE0_NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE", ptr %i.h, align 8
  store ptr %4, ptr %3, align 8
  %i.i = call i64 @_ZN2v88internal6maglev18MaglevGraphBuilder15SelectReductionENS_4base11FunctionRefIFNS2_12BranchResultERNS2_13BranchBuilderEEEENS4_IFNS1_12ReduceResultEvEEESC_(ptr noundef nonnull align 8 dereferenceable(953) %i.e, ptr nonnull %1, ptr nonnull @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlRNS5_13BranchBuilderEE_NS5_12BranchResultEJSC_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE", ptr nonnull %2, ptr nonnull @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlvE_NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE", ptr noundef nonnull byval(%"class.v8::base::FunctionRef.61") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 3) i32 @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlRNS5_13BranchBuilderEE_NS5_12BranchResultEJSC_EEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !56, !align !64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !56, !align !64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef range(i32 0, 3) i32 @_ZN2v88internal6maglev18MaglevGraphBuilder25BuildBranchIfInt32CompareERNS2_13BranchBuilderE9OperationPNS1_9ValueNodeES7_(ptr noundef nonnull align 8 dereferenceable(953) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i8 noundef zeroext 18, ptr noundef %i.d, ptr noundef %i.g)
  ret i32 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i64 @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlvE_NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 8                ; 5 uses
  %i.b = alloca [2 x ptr], align 8                ; 5 uses
  %i.c = alloca [2 x ptr], align 8                ; 5 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !56
  %i.h = load i8, ptr %i.g, align 1
  switch i8 %i.h, label %bb.f [
    i8 5, label %bb.b
    i8 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !56, !align !64
  %i.k = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !56, !align !64
  %i.o = load ptr, ptr %i.n, align 8
  store ptr %i.o, ptr %i.l, align 8
  %i.p = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_32LoadHoleyFixedDoubleArrayElementEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr nonnull %i.c, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !56, !align !64
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !56, !align !64
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = tail call i64 @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19TryGetInt32ConstantEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr noundef %i.v) ; 2 uses
  %i.x = and i64 %i.w, 4294967296
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %i.w to i32
  %i.y = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeEi(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr noundef %i.s, i32 noundef %.sroa.0.0.extract.trunc.i.i.i.i.i)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr %i.s, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.v, ptr %i.z, align 8
  %i.aa = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_27LoadFixedDoubleArrayElementEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr nonnull %i.b, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i

_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.06.1.in.i.i.i.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.y, %bb.d ] ; 2 uses
  %.sroa.06.1.i.i.i.i.i = ptrtoint ptr %.sroa.06.1.in.i.i.i.i.i to i64
  %i.ab = and i64 %.sroa.06.1.i.i.i.i.i, 7
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %"_ZSt6invokeIRKZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEENK3$_0clEvEUlvE_JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !56, !align !64
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !56, !align !64
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = tail call i64 @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19TryGetInt32ConstantEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr noundef %i.ai) ; 2 uses
  %i.ak = and i64 %i.aj, 4294967296
  %.not.i12.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i12.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.extract.trunc.i13.i.i.i.i = trunc i64 %i.aj to i32
  %i.al = tail call noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeEi(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr noundef %i.af, i32 noundef %.sroa.0.0.extract.trunc.i13.i.i.i.i)
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %i.af, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.am, align 8
  %i.an = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_21LoadFixedArrayElementEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr nonnull %i.a, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i

_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.06.1.in.i14.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ %i.al, %bb.g ] ; 2 uses
  %.sroa.06.1.i15.i.i.i.i = ptrtoint ptr %.sroa.06.1.in.i14.i.i.i.i to i64
  %i.ao = and i64 %.sroa.06.1.i15.i.i.i.i, 7
  %i.ap = icmp eq i64 %i.ao, 1
  br i1 %i.ap, label %"_ZSt6invokeIRKZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEENK3$_0clEvEUlvE_JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit", label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i, %bb.b
  %.2.i.i.i.i = phi ptr [ %i.p, %bb.b ], [ %.sroa.06.1.in.i.i.i.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i ], [ %.sroa.06.1.in.i14.i.i.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i ] ; 2 uses
  %i.aq = load ptr, ptr %0, align 8, !nonnull !56
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = trunc i8 %i.ar to i1
  %i.at = icmp ult i8 %i.ar, 6
  %i.au = and i1 %i.at, %i.as
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %.2.i.i.i.i, ptr %i.d, align 8
  %i.av = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_22ConvertHoleToUndefinedEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %i.f, ptr nonnull %i.d, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.i.i.i.i = phi ptr [ %i.av, %bb.j ], [ %.2.i.i.i.i, %bb.i ]
  %i.aw = ptrtoint ptr %.3.i.i.i.i to i64
  br label %"_ZSt6invokeIRKZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEENK3$_0clEvEUlvE_JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

"_ZSt6invokeIRKZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEENK3$_0clEvEUlvE_JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit": ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i, %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i, %bb.k
  %.sroa.019.2.i.i.i.i = phi i64 [ 1, %_ZN2v88internal6maglev18MaglevGraphBuilder26BuildLoadFixedArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i ], [ %i.aw, %bb.k ], [ 1, %_ZN2v88internal6maglev18MaglevGraphBuilder32BuildLoadFixedDoubleArrayElementEPNS1_9ValueNodeES4_.exit.i.i.i.i ]
  ret i64 %.sroa.019.2.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal i64 @"_ZN4absl19functional_internal12InvokeObjectIZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS3_8compiler13JSFunctionRefERNS4_13CallArgumentsEENK3$_0clEvEUlvE0_NS4_12ReduceResultEJEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE"(ptr nofree readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %.val = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %.val, i64 184
  %.val.val = load ptr, ptr %i.d, align 8         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val.val, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %.val.val, i64 112
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.val, i64 104
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.a ] ; 4 uses
  %.1.in.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 16
  %.1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.i = icmp eq ptr %.012.i.i.i.i.i.i.i.i.i.i, %i.h
  br i1 %i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i.i.i.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.k = load i16, ptr %i.j, align 2
  %.not.i.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i.i.i.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i.i.i.i.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i.i.i.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.l = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %.val.val, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.l, ptr %i.b, align 8
  %i.m = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.n = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %"_ZSt6invokeIRKZZN2v88internal6maglev18MaglevGraphBuilder25TryReduceArrayPrototypeAtENS1_8compiler13JSFunctionRefERNS2_13CallArgumentsEENK3$_0clEvEUlvE0_JEENSt13invoke_resultIT_JDpT0_EE4typeEOSD_DpOSE_.exit"

end_hunk_0
