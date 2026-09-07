Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-revec-reducer?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1948
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12ProcessBlockERKNS2_5BlockE:bb.a
  %.not102 = icmp eq i32 %.sroa.0.0.copyload.i.i37, %.sroa.0.0.copyload.i.i38
  br i1 %.not102, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit
  %i.cu = load i8, ptr %i.cq, align 4             ; 2 uses
  %i.cv = load i8, ptr %i.ct, align 4
  %i.cw = icmp eq i8 %i.cu, %i.cv
  br i1 %i.cw, label %bb.m, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

bb.m:                                             ; preds = %bb.l
  switch i8 %i.cu, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread [
    i8 37, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 36, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 39, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 42, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
    i8 41, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
  ]

_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit: ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cy = load i8, ptr %i.cx, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.da = load i8, ptr %i.cz, align 4
  %i.db = icmp eq i8 %i.cy, %i.da
  br i1 %i.db, label %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread, label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread: ; preds = %bb.m, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit
  %i.dc = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.dd = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.de = icmp ult ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit, label %bb.n, !prof !15

bb.n:                                             ; preds = %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread
  %i.df = load ptr, ptr %i.u, align 8
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.dj, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %i.dk)
  %.pre.i.i = load ptr, ptr %i.r, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread, %bb.n
  %i.dl = phi ptr [ %i.dc, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit.thread ], [ %.pre.i.i, %bb.n ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.r, align 8
  %.sroa.465.0.insert.shift = shl nuw i64 %i.cr, 32
  %.sroa.064.0.insert.insert = or disjoint i64 %.sroa.465.0.insert.shift, %i.co
  store i64 %.sroa.064.0.insert.insert, ptr %i.dl, align 4
  br label %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread

_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit.thread: ; preds = %bb.c, %bb.k, %thread-pre-split, %_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer21IsSupportedReduceSeedERKNS2_9OperationE.exit, %bb.l, %_ZN2v88internal8compiler10turboshaft19IsSameSimd128OpKindERKNS2_9OperationES5_.exit, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit
  %i.dn = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %i.z
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = zext i16 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 3
  %i.ds = sub i32 %.sroa.074.0106, %i.dr          ; 2 uses
  %.not.i.i = icmp eq i32 %i.ds, %.sroa.01.0.copyload.i
  br i1 %.not.i.i, label %._crit_edge, label %bb.b

_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader: ; preds = %._crit_edge
  %i.dt = load ptr, ptr %i.f, align 8
  %i.du = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.dt) #24 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.d
  br i1 %i.dv, label %.loopexit, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %.thread.jt0
  %.sroa.062.0107 = phi ptr [ %i.du, %.lr.ph.i.preheader.lr.ph ], [ %i.gc, %.thread.jt0 ] ; 12 uses
  %i.ea = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.062.0107) #24 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !noalias !90
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !90
  %.not.i42 = icmp eq ptr %i.ee, %i.eg
  br i1 %.not.i42, label %bb.o, label %.thread.jt0

bb.o:                                             ; preds = %.lr.ph.i.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 48
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !90
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !90
  %.not6.i43 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not6.i43, label %bb.p, label %.thread.jt0

bb.p:                                             ; preds = %bb.o
  %i.el = load ptr, ptr %i.ec, align 8, !noalias !90 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load ptr, ptr %i.eb, align 8, !noalias !90 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i8, ptr %i.em, align 1, !noalias !90
  %i.eq = load i8, ptr %i.eo, align 1, !noalias !90
  %i.er = xor i8 %i.eq, %i.ep
  %i.es = and i8 %i.er, 127
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.q, label %.thread.jt0

bb.q:                                             ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 6
  %i.ev = load i8, ptr %i.eu, align 2, !noalias !90
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  %i.ex = load i8, ptr %i.ew, align 2, !noalias !90
  %.not7.i = icmp eq i8 %i.ev, %i.ex
  br i1 %.not7.i, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit, label %.thread.jt0

_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit: ; preds = %bb.q
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.062.0107, i64 56
  %i.ez = load i64, ptr %i.ey, align 8, !noalias !90 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.fb = load i64, ptr %i.fa, align 8, !noalias !90 ; 2 uses
  %.not.i.i44 = icmp uge i64 %i.ez, %i.fb
  %i.fc = sub nuw i64 %i.ez, %i.fb
  %i.fd = icmp eq i64 %i.fc, 16
  %or.cond = select i1 %.not.i.i44, i1 %i.fd, i1 false
  br i1 %or.cond, label %bb.r, label %.thread.jt0

bb.r:                                             ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit
  %i.fe = load ptr, ptr %i.i, align 8, !nonnull !13, !align !17
  %i.ff = ptrtoint ptr %i.en to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = ptrtoint ptr %i.fh to i64               ; 2 uses
  %i.fj = sub i64 %i.ff, %i.fi
  %i.fk = ptrtoint ptr %i.el to i64
  %i.fl = sub i64 %i.fk, %i.fi
  %i.fm = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.fn = load ptr, ptr %i.dx, align 8            ; 2 uses
  %i.fo = icmp ult ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46, label %bb.s, !prof !15

bb.s:                                             ; preds = %bb.r
  %i.fp = load ptr, ptr %i.dz, align 8
  %i.fq = ptrtoint ptr %i.fn to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3
  %i.fu = add nsw i64 %i.ft, 1
  call preserve_mostcc void @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 noundef %i.fu)
  %.pre.i.i45 = load ptr, ptr %i.dw, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46: ; preds = %bb.r, %bb.s
  %i.fv = phi ptr [ %i.fm, %bb.r ], [ %.pre.i.i45, %bb.s ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fw, ptr %i.dw, align 8
  %.sroa.4.0.insert.ext = shl i64 %i.fl, 32
  %.sroa.054.0.insert.ext = and i64 %i.fj, 4294967295
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.ext, %.sroa.054.0.insert.ext
  store i64 %.sroa.054.0.insert.insert, ptr %i.fv, align 4
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46, %.lr.ph.i47
  %.05.i = phi i64 [ %i.fy, %.lr.ph.i47 ], [ 0, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46 ] ; 2 uses
  %.sroa.02.04.i = phi ptr [ %i.fx, %.lr.ph.i47 ], [ %.sroa.062.0107, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE9push_backEOS6_.exit46 ]
  %i.fx = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.02.04.i) #24 ; 2 uses
  %i.fy = add nuw nsw i64 %.05.i, 1
  %i.fz = icmp eq ptr %i.fx, %i.d
  br i1 %i.fz, label %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit, label %.lr.ph.i47, !llvm.loop !87

_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit: ; preds = %.lr.ph.i47
  %i.ga = icmp eq i64 %.05.i, 0
  br i1 %i.ga, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit
  %i.gb = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.0107) #24
  br label %.thread.jt0, !llvm.loop !88

.thread.jt0:                                      ; preds = %bb.p, %bb.o, %.lr.ph.i.preheader, %bb.q, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit, %.preheader.preheader
  %.sink = phi ptr [ %i.gb, %.preheader.preheader ], [ %.sroa.062.0107, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft10OffsetDiffEE5valueEv.exit ], [ %.sroa.062.0107, %bb.q ], [ %.sroa.062.0107, %.lr.ph.i.preheader ], [ %.sroa.062.0107, %bb.o ], [ %.sroa.062.0107, %bb.p ]
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sink) #24 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.d
  br i1 %i.gd, label %.loopexit, label %.lr.ph.i.preheader, !llvm.loop !88

.loopexit:                                        ; preds = %.thread.jt0, %_ZSt10__distanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St18input_iterator_tag.exit, %bb.a, %_ZSt9__advanceISt23_Rb_tree_const_iteratorIN2v88internal8compiler10turboshaft13StoreLoadInfoINS4_7StoreOpEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.preheader, %._crit_edge
  %i.ge = load ptr, ptr %i.e, align 8
  call void @_ZNSt8_Rb_treeIN2v88internal8compiler10turboshaft13StoreLoadInfoINS3_7StoreOpEEES6_St9_IdentityIS6_ENS3_16StoreInfoCompareENS1_13ZoneAllocatorIS6_EEE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.ge)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv(ptr noundef nonnull align 8 dereferenceable(464) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.v8::internal::ZoneVector.58", align 8 ; 7 uses
  %2 = alloca %"class.v8::internal::compiler::turboshaft::NodeGroup", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::turboshaft::SLPTree", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.039.045 = phi ptr [ %i.n, %.lr.ph ], [ %i.g, %bb.a ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.039.045, i64 -8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12ProcessBlockERKNS2_5BlockE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(100) %i.o)
  %i.p = icmp eq ptr %i.n, %i.e
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv, i32 noundef 1474) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.53) #21
  br label %bb.t

bb.e:                                             ; preds = %bb.b, %._crit_edge
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.54) #21
  %i.z = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not46 = icmp eq ptr %i.z, %i.aa
  br i1 %.not46, label %._crit_edge50, label %.lr.ph49

._crit_edge50:                                    ; preds = %.lr.ph49, %bb.f
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.58) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not3051 = icmp eq ptr %i.ac, %i.ae
  br i1 %.not3051, label %.loopexit, label %.lr.ph54

.lr.ph49:                                         ; preds = %bb.f, %.lr.ph49
  %.02947 = phi ptr [ %i.av, %.lr.ph49 ], [ %i.z, %bb.f ] ; 2 uses
  %i.af = load i64, ptr %.02947, align 4          ; 4 uses
  %.sroa.037.0.extract.trunc = trunc i64 %i.af to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.af, 32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.55) #21
  %i.ag = lshr i32 %.sroa.037.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ag) #21
  %i.ah = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.af, 4294967295
  %i.am = add i64 %i.al, %i.ak
  %i.an = inttoptr i64 %i.am to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.an) #21
  %sum.shift = lshr i64 %i.af, 36
  %i.ao = trunc nuw nsw i64 %sum.shift to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ao) #21
  %i.ap = load ptr, ptr %i.b, align 8, !nonnull !13, !align !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = add i64 %.sroa.5.0.extract.shift, %i.as
  %i.au = inttoptr i64 %i.at to ptr
  tail call void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4) %i.au) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.av = getelementptr inbounds nuw i8, ptr %.02947, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.aa
  br i1 %.not, label %._crit_edge50, label %.lr.ph49

.lr.ph54:                                         ; preds = %._crit_edge50, %.lr.ph54
  %.02852 = phi ptr [ %i.az, %.lr.ph54 ], [ %i.ac, %._crit_edge50 ] ; 2 uses
  %i.aw = load i64, ptr %.02852, align 4          ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.aw to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.59) #21
  %i.ax = lshr i32 %.sroa.0.0.extract.trunc, 4
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.60, i32 noundef %i.ax) #21
  %sum.shift44 = lshr i64 %i.aw, 36
  %i.ay = trunc nuw nsw i64 %sum.shift44 to i32
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.56, i32 noundef %i.ay) #21
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.57) #21
  %i.az = getelementptr inbounds nuw i8, ptr %.02852, i64 8 ; 2 uses
  %.not30 = icmp eq ptr %i.az, %i.ae
  br i1 %.not30, label %.loopexit, label %.lr.ph54

.loopexit:                                        ; preds = %.lr.ph54, %._crit_edge50, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.ba = load ptr, ptr %i.k, align 8             ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  store ptr %i.bd, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %.not.i = icmp eq ptr %i.bb, %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr null, i64 %i.bj ; 3 uses
  store ptr %i.bk, ptr %i.bg, align 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit

bb.g:                                             ; preds = %.loopexit
  %i.bl = icmp sgt i64 %i.bj, -1
  br i1 %i.bl, label %bb.i, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ugt i64 %i.bj, %i.bq
  br i1 %i.br, label %bb.j, label %.lr.ph.preheader.i, !prof !16

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 noundef %i.bj) #21
  %.pre.i.i.i = load i64, ptr %i.bo, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.bp, %bb.i ] ; 2 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 3 uses
  %i.bu = add i64 %i.bs, %i.bj
  store i64 %i.bu, ptr %i.bo, align 8
  store ptr %i.bt, ptr %i.be, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj ; 4 uses
  store ptr %i.bv, ptr %i.bg, align 8
  store ptr %i.bv, ptr %i.bf, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.014.i = phi ptr [ %i.by, %.lr.ph.i ], [ %i.bt, %.lr.ph.preheader.i ] ; 2 uses
  %.01113.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.ba, %.lr.ph.preheader.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.bx = load i64, ptr %.01113.i, align 4
  store i64 %i.bx, ptr %.014.i, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %i.bz = icmp ult ptr %i.by, %i.bv
  br i1 %i.bz, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit, !llvm.loop !91

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %.thread.i
  %i.ca = phi ptr [ %i.bk, %.thread.i ], [ %i.bv, %.lr.ph.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8            ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64               ; 7 uses
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = ashr exact i64 %i.ch, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cj = call noundef ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE19PrepareForInsertionEPKS6_mPm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ca, i64 noundef %i.ci, ptr noundef nonnull %i.a) ; 8 uses
  %i.ck = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i = shl i64 %i.ck, 3                      ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx.i
  %.not.i35 = icmp eq i64 %i.ck, 0
  br i1 %.not.i35, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit
  %i.cm = add i64 %.idx.i, %i.cg
  %i.cn = add i64 %i.cg, 8
  %i.co = call i64 @llvm.umax.i64(i64 %i.cm, i64 %i.cn)
  %i.cp = xor i64 %i.cg, -1
  %i.cq = add i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 3
  %i.cs = add nuw nsw i64 %i.cr, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cq, 168
  br i1 %min.iters.check, label %.lr.ph.i36.preheader82, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i36.preheader
  %i.ct = add i64 %.idx.i, %i.cg
  %i.cu = add i64 %i.cg, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cu)
  %i.cv = xor i64 %i.cg, -1
  %i.cw = add i64 %umax, %i.cv
  %i.cx = and i64 %i.cw, -8
  %i.cy = add i64 %i.cx, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cj, i64 %i.cy
  %scevgep72 = getelementptr i8, ptr %i.cc, i64 %i.cy
  %bound0 = icmp ult ptr %i.cj, %scevgep72
  %bound1 = icmp ult ptr %i.cc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i36.preheader82, label %vector.ph
end_hunk_0
