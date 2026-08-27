Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder20DoTryReduceMathRoundERNS1_13CallArgumentsENS1_12Float64Round4KindE:bb.a
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  store i8 1, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 80
  %.sroa.05.0.i.i = load ptr, ptr %i.co, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.05.0.i.i, null
  br i1 %.not.i.i, label %_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit, label %.lr.ph.i.i

_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit: ; preds = %.lr.ph.i.i, %bb.l, %switch.lookup
  tail call void @_ZN2v88internal6maglev18MaglevGraphBuilder11AddDeoptUseEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.ch)
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  store ptr %i.cr, ptr %i.cp, align 8
  store ptr %3, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %i.aq, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store i32 0, ptr %i.h, align 4
  %i.cs = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_17ToNumberOrNumericEJNS0_6Object10ConversionEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.g, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #33
  store ptr %i.cs, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #33
  store i8 0, ptr %i.j, align 1
  %i.ct = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_33UncheckedNumberOrOddballToFloat64EJNS1_29TaggedToFloat64ConversionTypeEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.i, i64 1, ptr noundef nonnull align 1 dereferenceable(1) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #33
  store ptr %i.ct, ptr %i.k, align 8
  %i.cu = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_12Float64RoundEJRNS6_4KindEEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.k, i64 1, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %i.cv = ptrtoint ptr %i.cu to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #33
  %i.cw = load ptr, ptr %i.cp, align 8
  %i.cx = load ptr, ptr %3, align 8               ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 776
  store ptr %i.cw, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 640
  store ptr null, ptr %i.cz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread, %bb.k, %bb.d, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread44, %bb.h, %bb.j, %_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %.sroa.042.0 = phi i64 [ %i.ao, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit ], [ %i.bp, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread44 ], [ %i.bu, %bb.h ], [ %i.by, %bb.j ], [ %i.cv, %_ZN2v88internal6maglev18MaglevGraphBuilder19DeoptFrameScopeBaseC2EPS2_NS0_7BuiltinENS0_8compiler11OptionalRefINS6_13JSFunctionRefEEENS_4base6VectorIKPNS1_9ValueNodeEEE.exit ], [ 3, %_ZN2v88internal6maglev18MaglevGraphBuilder9CheckTypeEPNS1_9ValueNodeENS1_8NodeTypeEPS5_.exit.thread ], [ %i.av, %bb.d ], [ 3, %bb.k ]
  ret i64 %.sroa.042.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder23TryReduceNumberParseIntENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = load i32, ptr %2, align 8
  %i.e = icmp ne i32 %i.d, 0                      ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = sext i1 %i.e to i64
  %.0.i = add nsw i64 %i.m, %i.n
  switch i64 %.0.i, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit [
    i64 0, label %bb.b
    i64 1, label %.critedge26.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 161, ptr %i.a, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp ult i16 %i.v, 161                   ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i.i.i.i, %i.t
  br i1 %i.x, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp ugt i16 %i.z, 161
  br i1 %i.aa, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %bb.c

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.ab = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.p, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.ab, ptr %i.b, align 8
  %i.ac = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.ad = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

bb.c:                                             ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.ad, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i ], [ %i.af, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = ptrtoint ptr %.0.i.i.i to i64
  br label %.critedge26

_ZNK2v88internal6maglev13CallArgumentsixEm.exit:  ; preds = %bb.a
  %spec.select.i = select i1 %i.e, i64 2, i64 1   ; 2 uses
  %.not5.i = icmp ult i64 %spec.select.i, %i.m
  tail call void @llvm.assume(i1 %.not5.i)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %spec.select.i
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = and i64 %i.ak, 65535                    ; 2 uses
  %i.am = icmp ne i64 %i.al, 225
  %.not2058 = icmp eq ptr %i.ai, null             ; 2 uses
  %.not20 = or i1 %.not2058, %i.am
  br i1 %.not20, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit32, label %bb.d

bb.d:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ao = load i16, ptr %i.an, align 4
  %.not24 = icmp eq i16 %i.ao, 0
  br i1 %.not24, label %.critedge26.thread, label %.critedge26

_ZNK2v88internal6maglev13CallArgumentsixEm.exit32: ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.ap = icmp ne i64 %i.al, 226
  %.not21 = or i1 %.not2058, %i.ap
  br i1 %.not21, label %.critedge26, label %bb.e

bb.e:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.aq, align 8
  %i.ar = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.as = trunc nuw i64 %i.ar to i32
  switch i32 %i.as, label %.critedge26 [
    i32 10, label %.critedge26.thread
    i32 0, label %.critedge26.thread
  ]

.critedge26.thread:                               ; preds = %bb.e, %bb.e, %bb.a, %bb.d
  %i.at = zext i1 %i.e to i64                     ; 2 uses
  %.not5.i37 = icmp ugt i64 %i.m, %i.at
  tail call void @llvm.assume(i1 %.not5.i37)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8            ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %sum.shift.i = lshr i64 %i.ax, 40
  %i.ay = trunc i64 %sum.shift.i to i8
  %i.az = and i8 %i.ay, 7
  switch i8 %i.az, label %bb.j [
    i8 2, label %bb.f
    i8 1, label %bb.f
    i8 5, label %bb.f
    i8 0, label %bb.g
    i8 3, label %.critedge26
    i8 4, label %.critedge26
    i8 6, label %bb.i
  ]

bb.f:                                             ; preds = %.critedge26.thread, %.critedge26.thread, %.critedge26.thread
  %i.ba = ptrtoint ptr %i.av to i64
  br label %.critedge26

bb.g:                                             ; preds = %.critedge26.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 312
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 304 ; 3 uses
  %.not10.i.i.i.i.i.i40 = icmp eq ptr %i.bg, null
  br i1 %.not10.i.i.i.i.i.i40, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.i.i.i.i.i.i41

.lr.ph.i.i.i.i.i.i41:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i41
  %.012.i.i.i.i.i.i42 = phi ptr [ %.1.i.i.i.i.i.i47, %.lr.ph.i.i.i.i.i.i41 ], [ %i.bg, %bb.g ] ; 3 uses
  %.0811.i.i.i.i.i.i43 = phi ptr [ %.19.i.i.i.i.i.i44, %.lr.ph.i.i.i.i.i.i41 ], [ %i.bh, %bb.g ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i42, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %i.bj, %i.av               ; 2 uses
  %.19.i.i.i.i.i.i44 = select i1 %i.bk, ptr %.0811.i.i.i.i.i.i43, ptr %.012.i.i.i.i.i.i42 ; 4 uses
  %.1.in.v.i.i.i.i.i.i45 = select i1 %i.bk, i64 24, i64 16
  %.1.in.i.i.i.i.i.i46 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i42, i64 %.1.in.v.i.i.i.i.i.i45
  %.1.i.i.i.i.i.i47 = load ptr, ptr %.1.in.i.i.i.i.i.i46, align 8 ; 2 uses
  %.not.i.i.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i.i.i47, null
  br i1 %.not.i.i.i.i.i.i48, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i41, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i41
  %i.bl = icmp eq ptr %.19.i.i.i.i.i.i44, %i.bh
  br i1 %i.bl, label %.lr.ph.split.us.i.i.preheader, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i44, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %i.av, %i.bn
  %.not26.fr.i.i = freeze i1 %i.bo                ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not26.fr.i.i, ptr %i.bh, ptr %.19.i.i.i.i.i.i44
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 40
  br i1 %.not26.fr.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.bq = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.av, ptr noundef %i.be) #33
  %i.br = icmp ult i32 %i.bq, 2
  br i1 %i.br, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %bb.h

.lr.ph.split.us.i.i.preheader:                    ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, %bb.g, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.bs = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.av, ptr noundef %i.be) #33
  %i.bt = icmp ult i32 %i.bs, 2
  br i1 %i.bt, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %.critedge26

bb.h:                                             ; preds = %.lr.ph.split.i.i.preheader
  %i.bu = load i32, ptr %i.bp, align 8
  %i.bv = icmp ult i32 %i.bu, 2
  br i1 %i.bv, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %.critedge26

_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit: ; preds = %.lr.ph.split.i.i.preheader, %bb.h, %.lr.ph.split.us.i.i.preheader
  %i.bw = ptrtoint ptr %i.av to i64
  br label %.critedge26

bb.i:                                             ; preds = %.critedge26.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

bb.j:                                             ; preds = %.critedge26.thread
  unreachable

.critedge26:                                      ; preds = %.lr.ph.split.us.i.i.preheader, %bb.h, %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, %bb.e, %bb.d, %.critedge26.thread, %.critedge26.thread, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit32, %bb.f, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit
  %.sroa.050.1 = phi i64 [ %i.ag, %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit ], [ %i.ba, %bb.f ], [ 3, %bb.e ], [ 3, %.critedge26.thread ], [ %i.bw, %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit ], [ 3, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit32 ], [ 3, %bb.d ], [ 3, %.critedge26.thread ], [ 3, %bb.h ], [ 3, %.lr.ph.split.us.i.i.preheader ]
  ret i64 %.sroa.050.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal6maglev18MaglevGraphBuilder16TryReduceMathAbsENS0_8compiler13JSFunctionRefERNS1_13CallArgumentsE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(100) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [1 x ptr], align 8                ; 4 uses
  %i.e = alloca [1 x ptr], align 8                ; 4 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %i.h = load i32, ptr %2, align 8
  %i.i = icmp ne i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %.neg = zext i1 %i.i to i64                     ; 3 uses
  %i.r = icmp eq i64 %i.q, %.neg
  br i1 %i.r, label %bb.b, label %_ZNK2v88internal6maglev13CallArgumentsixEm.exit

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 161, ptr %i.a, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp ult i16 %i.z, 161                  ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !9

_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i: ; preds = %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = icmp ugt i16 %i.ad, 161
  br i1 %i.ae, label %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, label %bb.c

_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i, %_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i32 0, ptr %i.c, align 4
  %i.af = call noundef ptr @_ZNK2v88internal6maglev5Graph21CreateNewConstantNodeINS1_12RootConstantEJiRNS0_9RootIndexEEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(976) %i.t, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = call { ptr, i8 } @_ZNSt8_Rb_treeIN2v88internal9RootIndexESt4pairIKS2_PNS1_6maglev12RootConstantEESt10_Select1stIS8_ESt4lessIS2_ENS1_13ZoneAllocatorIS8_EEE17_M_emplace_uniqueIJRS2_RS7_EEES3_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.ah = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

bb.c:                                             ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit

_ZN2v88internal6maglev18MaglevGraphBuilder15GetRootConstantENS0_9RootIndexE.exit: ; preds = %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i, %bb.c
  %.0.i.i.i = phi ptr [ %i.ah, %_ZNSt3mapIN2v88internal9RootIndexEPNS1_6maglev12RootConstantESt4lessIS2_ENS1_13ZoneAllocatorISt4pairIKS2_S5_EEEE4findERSA_.exit.thread.i.i.i ], [ %i.aj, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = ptrtoint ptr %.0.i.i.i to i64
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

_ZNK2v88internal6maglev13CallArgumentsixEm.exit:  ; preds = %bb.a
  %.not5.i = icmp ugt i64 %i.q, %.neg
  tail call void @llvm.assume(i1 %.not5.i)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.neg
  %i.am = load ptr, ptr %i.al, align 8            ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8
  %sum.shift.i = lshr i64 %i.ao, 40
  %i.ap = trunc i64 %sum.shift.i to i8
  %i.aq = and i8 %i.ap, 7
  switch i8 %i.aq, label %default.unreachable [
    i8 2, label %bb.d
    i8 5, label %bb.d
    i8 1, label %bb.e
    i8 0, label %bb.g
    i8 3, label %bb.p
    i8 4, label %bb.p
    i8 6, label %bb.q
    i8 7, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread
  ]

bb.d:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit, %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.ar = ptrtoint ptr %i.am to i64
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.e:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.at = load i32, ptr %i.as, align 8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.f, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.am, ptr %i.d, align 8
  %i.av = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_20Int32AbsWithOverflowEJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr nonnull %i.d, i64 1)
  %i.aw = ptrtoint ptr %i.av to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.g:                                             ; preds = %_ZNK2v88internal6maglev13CallArgumentsixEm.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 728
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load ptr, ptr %i.az, align 8            ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 312
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 304 ; 3 uses
  %.not10.i.i.i.i.i.i19 = icmp eq ptr %i.bc, null
  br i1 %.not10.i.i.i.i.i.i19, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.i.i.i.i.i.i20

.lr.ph.i.i.i.i.i.i20:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i20
  %.012.i.i.i.i.i.i21 = phi ptr [ %.1.i.i.i.i.i.i26, %.lr.ph.i.i.i.i.i.i20 ], [ %i.bc, %bb.g ] ; 3 uses
  %.0811.i.i.i.i.i.i22 = phi ptr [ %.19.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i20 ], [ %i.bd, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i21, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = icmp ult ptr %i.bf, %i.am               ; 2 uses
  %.19.i.i.i.i.i.i23 = select i1 %i.bg, ptr %.0811.i.i.i.i.i.i22, ptr %.012.i.i.i.i.i.i21 ; 4 uses
  %.1.in.v.i.i.i.i.i.i24 = select i1 %i.bg, i64 24, i64 16
  %.1.in.i.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i21, i64 %.1.in.v.i.i.i.i.i.i24
  %.1.i.i.i.i.i.i26 = load ptr, ptr %.1.in.i.i.i.i.i.i25, align 8 ; 2 uses
  %.not.i.i.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i.i.i26, null
  br i1 %.not.i.i.i.i.i.i27, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i20, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i20
  %i.bh = icmp eq ptr %.19.i.i.i.i.i.i23, %i.bd
  br i1 %i.bh, label %.lr.ph.split.us.i.i.preheader, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i23, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp ult ptr %i.am, %i.bj
  %.not26.fr.i.i = freeze i1 %i.bk                ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not26.fr.i.i, ptr %i.bd, ptr %.19.i.i.i.i.i.i23
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i, i64 40 ; 2 uses
  br i1 %.not26.fr.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.bm = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef %i.ba) #33
  %i.bn = icmp ult i32 %i.bm, 2
  br i1 %i.bn, label %bb.j, label %bb.h

.lr.ph.split.us.i.i.preheader:                    ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, %bb.g, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.bo = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef %i.ba) #33
  %i.bp = icmp ult i32 %i.bo, 2
  br i1 %i.bp, label %bb.j, label %.lr.ph.split.us.i.i.1

.lr.ph.split.us.i.i.1:                            ; preds = %.lr.ph.split.us.i.i.preheader
  %i.bq = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef %i.ba) #33
  %i.br = icmp ult i32 %i.bq, 32
  br i1 %i.br, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.h:                                             ; preds = %.lr.ph.split.i.i.preheader
  %i.bs = load i32, ptr %i.bl, align 8
  %i.bt = icmp ult i32 %i.bs, 2
  br i1 %i.bt, label %bb.j, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %bb.h
  %i.bu = tail call noundef i32 @_ZN2v88internal6maglev9ValueNode13GetStaticTypeEPNS0_8compiler12JSHeapBrokerE(ptr noundef nonnull align 8 dereferenceable(20) %i.am, ptr noundef %i.ba) #33
  %i.bv = icmp ult i32 %i.bu, 32
  br i1 %i.bv, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.1
  %i.bw = load i32, ptr %i.bl, align 8
  %i.bx = icmp ult i32 %i.bw, 32
  br i1 %i.bx, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.j:                                             ; preds = %.lr.ph.split.us.i.i.preheader, %bb.h, %.lr.ph.split.i.i.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.k, label %_ZN2v88internal6maglev18MaglevGraphBuilder10CheckTypesEPNS1_9ValueNodeESt16initializer_listINS1_8NodeTypeEE.exit.thread

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %i.am, ptr %i.e, align 8
end_hunk_0
