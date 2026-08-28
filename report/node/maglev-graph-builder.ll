Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr @_ZN2v88internal6maglev16KnownNodeAspects18GetOrCreateInfoForEPNS0_8compiler12JSHeapBrokerEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(352) %i.ap, ptr noundef %i.ar, ptr noundef nonnull %1) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 65535
  %i.ay = icmp eq i64 %i.ax, 67
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.04.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.au, %bb.e ]
  %i.az = getelementptr inbounds i8, ptr %.04.i.i, i64 -8
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = and i64 %i.bc, 65535
  %i.be = icmp eq i64 %i.bd, 67
  br i1 %i.be, label %.lr.ph.i.i, label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread, !llvm.loop !62

bb.f:                                             ; preds = %bb.d
  switch i8 %i.l, label %default.unreachable [
    i8 0, label %bb.g
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 4, label %bb.p
    i8 5, label %bb.t
    i8 3, label %bb.u
    i8 6, label %bb.u
    i8 7, label %bb.v
  ]

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.as, align 8            ; 2 uses
  %i.bg = and i32 %i.bf, %2                       ; 4 uses
  %i.bh = icmp eq i32 %i.bf, 0
  br i1 %i.bh, label %.thread60, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp ult i32 %i.bg, 2
  br i1 %i.bi, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE8GetInt32EPNS1_9ValueNodeEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %1, i1 noundef zeroext false)
  %i.bk = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10GetFloat64EPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.bj)
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.bl = icmp ult i32 %i.bg, 4
  br i1 %i.bl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %1, i32 noundef 3) ; 2 uses
  store ptr %i.bm, ptr %i.at, align 8
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bn = icmp ult i32 %i.bg, 32
  br i1 %i.bn, label %bb.m, label %.thread60

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %1, i32 noundef %i.bg)
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

.thread60:                                        ; preds = %bb.g, %bb.l
  %i.bp = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE29BuildNumberOrOddballToFloat64EPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %1, i32 noundef %2)
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %1, ptr %i.d, align 8
  %i.bq = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_20ChangeInt32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.d, i64 1) ; 2 uses
  store ptr %i.bq, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.o:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  store ptr %1, ptr %i.e, align 8
  %i.br = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_21ChangeUint32ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.e, i64 1) ; 2 uses
  store ptr %i.br, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #33
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.p:                                             ; preds = %bb.f
  switch i32 %2, label %bb.s [
    i32 1, label %bb.q
    i32 3, label %bb.q
    i32 19, label %bb.q
    i32 31, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  store ptr %1, ptr %i.f, align 8
  %i.bs = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_28CheckedHoleyFloat64ToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.f, i64 1) ; 2 uses
  store ptr %i.bs, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #33
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store ptr %1, ptr %i.g, align 8
  %i.bt = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_29HoleyFloat64ToMaybeNanFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.g, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.s:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #33
  store ptr %1, ptr %i.h, align 8
  %i.bu = call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE10AddNewNodeINS1_21ChangeIntPtrToFloat64EJEEEPT_St16initializer_listIPNS1_9ValueNodeEEDpOT0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr nonnull %i.h, i64 1) ; 2 uses
  store ptr %i.bu, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #33
  br label %_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread

bb.u:                                             ; preds = %bb.f, %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.v:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18) #32
  unreachable

_ZNK2v88internal6maglev8NodeInfo16AlternativeNodes7float64Ev.exit.thread: ; preds = %.lr.ph.i.i, %bb.e, %.thread, %bb.n, %bb.o, %bb.q, %bb.r, %bb.t, %.thread60, %bb.m, %bb.k, %bb.i, %bb.a
  %.4 = phi ptr [ %.0.i.i.i, %.thread ], [ %1, %bb.a ], [ %i.bk, %bb.i ], [ %i.bq, %bb.n ], [ %i.br, %bb.o ], [ %i.bs, %bb.q ], [ %i.bt, %bb.r ], [ %i.bu, %bb.t ], [ %i.bp, %.thread60 ], [ %i.bo, %bb.m ], [ %i.bm, %bb.k ], [ %i.au, %bb.e ], [ %i.ba, %.lr.ph.i.i ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal6maglev18MaglevGraphBuilder21GetFloat64ForToNumberENS0_11interpreter8RegisterENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21GetFloat64ForToNumberEPNS1_9ValueNodeENS1_8NodeTypeE(ptr noundef nonnull align 8 dereferenceable(953) %0, ptr noundef %i.e, i32 noundef %2)
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19TryGetInt32ConstantEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16
  switch i16 %i.c, label %bb.g [
    i16 222, label %bb.b
    i16 223, label %bb.c
    i16 226, label %bb.d
    i16 221, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp sgt i32 %i.g, -1
  %spec.select32 = zext i1 %i.h to i64
  br label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 8
  %i.j = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  br label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i1233 = load double, ptr %i.l, align 8 ; 5 uses
  %i.m = fcmp oge double %.sroa.0.0.copyload.i1233, f0xC1E0000000000000
  %i.n = fcmp ole double %.sroa.0.0.copyload.i1233, f0x41DFFFFFFFC00000
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.f, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef i1 @llvm.is.fpclass.f64(double %.sroa.0.0.copyload.i1233, /* (nzero) */ i32 32)
  br i1 %i.o, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread, label %_ZN2v88internal13IsInt32DoubleEd.exit

_ZN2v88internal13IsInt32DoubleEd.exit:            ; preds = %bb.f
  %i.p = fptosi double %.sroa.0.0.copyload.i1233 to i32 ; 2 uses
  %i.q = sitofp i32 %i.p to double
  %i.r = fcmp oeq double %.sroa.0.0.copyload.i1233, %i.q
  %spec.select34 = zext i1 %i.r to i64
  br label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 728
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.w, %bb.g ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.x, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ult ptr %i.z, %1                   ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i.i.i, %i.x
  br i1 %i.ab, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = icmp ult ptr %1, %i.ad
  br i1 %i.ae, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread, label %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 88
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = and i64 %i.ai, 65535
  %i.ak = icmp eq i64 %i.aj, 67
  br i1 %i.ak, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.ag, %bb.h ]
  %i.al = getelementptr inbounds i8, ptr %.04.i.i.i, i64 -8
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = and i64 %i.ao, 65535
  %i.aq = icmp eq i64 %i.ap, 67
  br i1 %i.aq, label %.lr.ph.i.i.i, label %.loopexit.i, !llvm.loop !62

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i, %bb.h
  %i.ar = phi i64 [ %i.ai, %bb.h ], [ %i.ao, %.lr.ph.i.i.i ]
  %.0.i7.ph.i = phi ptr [ %i.ag, %bb.h ], [ %i.am, %.lr.ph.i.i.i ]
  %i.as = trunc i64 %i.ar to i16
  %i.at = add i16 %i.as, -220
  %i.au = icmp ult i16 %i.at, 9
  br i1 %i.au, label %bb.i, label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

bb.i:                                             ; preds = %.loopexit.i
  %i.av = tail call i64 @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE19TryGetInt32ConstantEPNS1_9ValueNodeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %.0.i7.ph.i) ; 3 uses
  %.sroa.020.0.extract.trunc = trunc i64 %i.av to i32
  %.sroa.621.0.extract.shift = lshr i64 %i.av, 32
  %.sroa.13.0.extract.shift = and i64 %i.av, -1099511627776
  br label %_ZN2v88internal13IsInt32DoubleEd.exit.thread

_ZN2v88internal13IsInt32DoubleEd.exit.thread:     ; preds = %bb.g, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i, %.loopexit.i, %_ZN2v88internal13IsInt32DoubleEd.exit, %bb.c, %bb.e, %bb.f, %bb.i, %bb.d, %bb.b
  %.sroa.020.1 = phi i32 [ %i.p, %_ZN2v88internal13IsInt32DoubleEd.exit ], [ %.sroa.020.0.extract.trunc, %bb.i ], [ %i.e, %bb.b ], [ undef, %bb.f ], [ undef, %bb.e ], [ %i.k, %bb.d ], [ %i.g, %bb.c ], [ undef, %.loopexit.i ], [ undef, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i ], [ undef, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i ], [ undef, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i ], [ undef, %bb.g ]
  %.sroa.621.1 = phi i64 [ %spec.select34, %_ZN2v88internal13IsInt32DoubleEd.exit ], [ %.sroa.621.0.extract.shift, %bb.i ], [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 1, %bb.d ], [ %spec.select32, %bb.c ], [ 0, %.loopexit.i ], [ 0, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i ], [ 0, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i ], [ 0, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.13.sroa.0.1 = phi i64 [ 0, %_ZN2v88internal13IsInt32DoubleEd.exit ], [ %.sroa.13.0.extract.shift, %bb.i ], [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.loopexit.i ], [ 0, %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i ], [ 0, %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i ], [ 0, %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i ], [ 0, %bb.g ]
  %.sroa.621.0.insert.ext = shl nuw i64 %.sroa.621.1, 32
  %.sroa.621.0.insert.shift = and i64 %.sroa.621.0.insert.ext, 1095216660480
  %.sroa.020.0.insert.ext = zext i32 %.sroa.020.1 to i64
  %.sroa.621.0.insert.insert = or disjoint i64 %.sroa.13.sroa.0.1, %.sroa.020.0.insert.ext
  %.sroa.020.0.insert.insert = or disjoint i64 %.sroa.621.0.insert.insert, %.sroa.621.0.insert.shift
  ret i64 %.sroa.020.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, i8 } @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE21TryGetFloat64ConstantEPNS1_9ValueNodeENS1_29TaggedToFloat64ConversionTypeE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::ObjectRef", align 8 ; 5 uses
  %4 = alloca %"class.v8::internal::compiler::HeapNumberRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i16
  switch i16 %i.c, label %bb.o [
    i16 220, label %bb.b
    i16 222, label %bb.e
    i16 226, label %bb.f
    i16 221, label %bb.g
    i16 225, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %3, align 8
  %i.e = call noundef zeroext i1 @_ZNK2v88internal8compiler9ObjectRef12IsHeapNumberEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.f = call ptr @_ZNK2v88internal8compiler9ObjectRef12AsHeapNumberEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  store ptr %i.f, ptr %4, align 8
  %i.g = call noundef double @_ZNK2v88internal8compiler13HeapNumberRef5valueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.042.0 = phi double [ %i.g, %bb.c ], [ undef, %bb.b ]
  %.sroa.9.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sitofp i32 %i.i to double
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.k, align 8
  %i.l = lshr i64 %.sroa.0.0.copyload.i26, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = sitofp i32 %i.m to double
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i2780 = load double, ptr %i.o, align 8
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i16, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1952
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 648
  %i.y = zext i16 %i.u to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8             ; 4 uses
  %.pre = trunc i64 %i.aa to i1                   ; 3 uses
  switch i8 %2, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread [
    i8 2, label %bb.i
    i8 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  br i1 %.pre, label %bb.j, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i64 %i.aa, -1
  %i.ac = inttoptr i64 %i.ab to ptr               ; 3 uses
  %i.ad = load atomic volatile i64, ptr %i.ac monotonic, align 8
  %i.ae = add i64 %i.ad, 11
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load atomic volatile i16, ptr %i.af monotonic, align 2
  %i.ah = icmp eq i16 %i.ag, 131
  br i1 %i.ah, label %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = and i64 %i.aj, 1090921693184
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.k:                                             ; preds = %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.0.copyload.i.i.i.i = load double, ptr %i.am, align 8
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.l:                                             ; preds = %bb.h
  br i1 %.pre, label %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.l
  %i.an = add nsw i64 %i.aa, -1
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = add i64 %i.ap, 11
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load atomic volatile i16, ptr %i.ar monotonic, align 2
  %i.at = icmp eq i16 %i.as, 131
  br i1 %i.at, label %bb.m, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit

bb.m:                                             ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.0.copyload.i.i.i.i29 = load double, ptr %i.au, align 8
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.h
  br i1 %.pre, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal9IsOddballENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit, %bb.j, %_ZN2v88internal9IsBooleanENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.av = add nsw i64 %i.aa, -1
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = load atomic volatile i64, ptr %i.aw monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = icmp eq i16 %i.ba, 130
  br i1 %i.bb, label %bb.n, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.n:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.0.copyload.i.i.i.i31 = load double, ptr %i.bc, align 8
  br label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.o:                                             ; preds = %bb.a
  %i.bd = load ptr, ptr %0, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 728
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 312
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 304 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bh, %bb.o ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bi, %bb.o ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp ult ptr %i.bk, %1                  ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.bl, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.bl, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !63

_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bm = icmp eq ptr %.19.i.i.i.i.i.i, %i.bi
  br i1 %i.bm, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i

_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i: ; preds = %_ZNSt8_Rb_treeIPN2v88internal6maglev9ValueNodeESt4pairIKS4_NS2_8NodeInfoEESt10_Select1stIS8_ESt4lessIS4_ENS1_13ZoneAllocatorIS8_EEE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS6_.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = icmp ult ptr %1, %i.bo
  br i1 %i.bp, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i

_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i: ; preds = %_ZN2v88internal6maglev16KnownNodeAspects8FindInfoEPNS1_9ValueNodeE.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 88
  %i.br = load ptr, ptr %i.bq, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal6maglev16KnownNodeAspects13TryGetInfoForEPNS1_9ValueNodeE.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = and i64 %i.bt, 65535
  %i.bv = icmp eq i64 %i.bu, 67
  br i1 %i.bv, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.i.i.i
  %.04.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i ], [ %i.br, %bb.p ]
  %i.bw = getelementptr inbounds i8, ptr %.04.i.i.i, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8            ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8            ; 2 uses
  %i.ca = and i64 %i.bz, 65535
  %i.cb = icmp eq i64 %i.ca, 67
  br i1 %i.cb, label %.lr.ph.i.i.i, label %.loopexit.i, !llvm.loop !62
end_hunk_0
