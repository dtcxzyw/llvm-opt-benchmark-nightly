Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/mark-compact?download=true
inline.NumInlined: 24171
inline.NumDeleted: 6162
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateE:bb.a
bb.db:                                            ; preds = %bb.da
  %i.wh = load atomic volatile i8, ptr %i.wb monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit552

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit552: ; preds = %bb.da, %bb.db
  %.0.in.in.i549 = phi i8 [ %i.wh, %bb.db ], [ %i.wf, %bb.da ]
  %.0.in.i550 = zext i8 %.0.in.in.i549 to i64
  %.0.i551 = shl nuw nsw i64 %.0.in.i550, 3
  %i.wi = add i64 %.sroa.2867.02842, 8
  %i.wj = add i64 %.sroa.2867.02842, 32           ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.wi, i64 %i.wj)
  %i.wk = add i64 %.0.i551, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.wj, i64 %i.wk)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dc:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.wl = add i64 %i.aq, 7
  %i.wm = inttoptr i64 %i.wl to ptr               ; 2 uses
  %i.wn = load atomic volatile i8, ptr %i.wm monotonic, align 1 ; 0 uses
  %i.wo = add i64 %i.aq, 9
  %i.wp = inttoptr i64 %i.wo to ptr
  %i.wq = load atomic volatile i8, ptr %i.wp monotonic, align 1 ; 2 uses
  %i.wr = icmp ult i8 %i.wq, 3
  br i1 %i.wr, label %bb.dd, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit556

bb.dd:                                            ; preds = %bb.dc
  %i.ws = load atomic volatile i8, ptr %i.wm monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit556

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit556: ; preds = %bb.dc, %bb.dd
  %.0.in.in.i553 = phi i8 [ %i.ws, %bb.dd ], [ %i.wq, %bb.dc ]
  %.0.in.i554 = zext i8 %.0.in.in.i553 to i64
  %.0.i555 = shl nuw nsw i64 %.0.in.i554, 3
  %i.wt = add i64 %.sroa.2867.02842, 8
  %i.wu = add i64 %.0.i555, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.wt, i64 %i.wu)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.de:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.wv = add i64 %i.aq, 7
  %i.ww = inttoptr i64 %i.wv to ptr               ; 2 uses
  %i.wx = load atomic volatile i8, ptr %i.ww monotonic, align 1 ; 0 uses
  %i.wy = add i64 %i.aq, 9
  %i.wz = inttoptr i64 %i.wy to ptr
  %i.xa = load atomic volatile i8, ptr %i.wz monotonic, align 1 ; 2 uses
  %i.xb = icmp ult i8 %i.xa, 3
  br i1 %i.xb, label %bb.df, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit560

bb.df:                                            ; preds = %bb.de
  %i.xc = load atomic volatile i8, ptr %i.ww monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit560

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit560: ; preds = %bb.de, %bb.df
  %.0.in.in.i557 = phi i8 [ %i.xc, %bb.df ], [ %i.xa, %bb.de ]
  %.0.in.i558 = zext i8 %.0.in.in.i557 to i64
  %.0.i559 = shl nuw nsw i64 %.0.in.i558, 3
  %i.xd = add i64 %.sroa.2867.02842, 8
  %i.xe = add i64 %.sroa.2867.02842, 56           ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xd, i64 %i.xe)
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xe)
  %i.xf = add i64 %.sroa.2867.02842, 64
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xf)
  %i.xg = add i64 %.sroa.2867.02842, 80
  %i.xh = add i64 %.0.i559, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xg, i64 %i.xh)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dg:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.xi = add i64 %i.aq, 7
  %i.xj = inttoptr i64 %i.xi to ptr               ; 2 uses
  %i.xk = load atomic volatile i8, ptr %i.xj monotonic, align 1 ; 0 uses
  %i.xl = add i64 %i.aq, 9
  %i.xm = inttoptr i64 %i.xl to ptr
  %i.xn = load atomic volatile i8, ptr %i.xm monotonic, align 1 ; 2 uses
  %i.xo = icmp ult i8 %i.xn, 3
  br i1 %i.xo, label %bb.dh, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit564

bb.dh:                                            ; preds = %bb.dg
  %i.xp = load atomic volatile i8, ptr %i.xj monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit564

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit564: ; preds = %bb.dg, %bb.dh
  %.0.in.in.i561 = phi i8 [ %i.xp, %bb.dh ], [ %i.xn, %bb.dg ]
  %.0.in.i562 = zext i8 %.0.in.in.i561 to i64
  %.0.i563 = shl nuw nsw i64 %.0.in.i562, 3
  %i.xq = add i64 %.sroa.2867.02842, 8
  %i.xr = add i64 %.sroa.2867.02842, 48           ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xq, i64 %i.xr)
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xr)
  %i.xs = add i64 %.sroa.2867.02842, 56
  %i.xt = add i64 %.0.i563, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xs, i64 %i.xt)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.di:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dj:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dk:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dl:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dm:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dn:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.do:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dp:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dq:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dr:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ds:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dt:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.du:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dv:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dw:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.xu = add i64 %.sroa.2867.02842, 8            ; 2 uses
  %i.xv = inttoptr i64 %i.xu to ptr
  %i.xw = load i64, ptr %i.xv, align 8
  %i.xx = shl i64 %i.xw, 3
  %i.xy = and i64 %i.xx, -34359738368
  %sext2759 = add i64 %i.xy, 68719476736
  %i.xz = ashr exact i64 %sext2759, 32
  %i.ya = add i64 %i.xz, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.xu, i64 %i.ya)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dx:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.yb = add i64 %.sroa.2867.02842, 8
  %i.yc = add i64 %.sroa.2867.02842, 32
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.yb, i64 %i.yc)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.dy:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.yd = add i64 %.sroa.2867.02842, 8            ; 3 uses
  %i.ye = inttoptr i64 %i.yd to ptr
  %i.yf = load atomic volatile i64, ptr %i.ye monotonic, align 8
  %i.yg = shl i64 %i.yf, 3
  %i.yh = and i64 %i.yg, -34359738368
  %sext2758 = add i64 %i.yh, 103079215104
  %i.yi = ashr exact i64 %sext2758, 32
  %i.yj = add i64 %i.yi, %.sroa.2867.02842        ; 2 uses
  %i.yk = icmp ult i64 %i.yd, %i.yj
  br i1 %i.yk, label %.lr.ph.i.i.i569, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

.lr.ph.i.i.i569:                                  ; preds = %bb.dy, %.lr.ph.i.i.i569
  %.sroa.0.07.i.i.i570 = phi i64 [ %i.yl, %.lr.ph.i.i.i569 ], [ %i.yd, %bb.dy ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %.sroa.0.07.i.i.i570)
  %i.yl = add i64 %.sroa.0.07.i.i.i570, 8         ; 2 uses
  %i.ym = icmp ult i64 %i.yl, %i.yj
  br i1 %i.ym, label %.lr.ph.i.i.i569, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374, !llvm.loop !12

bb.dz:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.yn = add i64 %.sroa.2867.02842, 8
  %i.yo = inttoptr i64 %i.yn to ptr               ; 9 uses
  %i.yp = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !288
  %i.yq = add i64 %.sroa.2867.02842, 24
  %i.yr = inttoptr i64 %i.yq to ptr
  %i.ys = load i64, ptr %i.yr, align 8, !noalias !289 ; 2 uses
  %i.yt = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !290
  %i.yu = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !291
  %i.yv = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !292
  %i.yw = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !293
  %i.yx = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !294
  %i.yy = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !295
  %i.yz = and i32 %i.yy, 15
  %i.za = icmp eq i32 %i.yz, 5
  br i1 %i.za, label %bb.ea, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.ea:                                            ; preds = %bb.dz
  %i.zb = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !296
  %i.zc = and i32 %i.zb, 15
  %i.zd = icmp eq i32 %i.zc, 5
  br i1 %i.zd, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ze = add i64 %.sroa.2867.02842, 48
  %i.zf = inttoptr i64 %i.ze to ptr
  %i.zg = load i64, ptr %i.zf, align 8, !noalias !295
  %i.zh = ashr i64 %i.zg, 32
  %i.zi = mul nsw i64 %i.zh, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.ec:                                            ; preds = %bb.ea
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !295
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %bb.dz, %bb.eb
  %storemerge.i.i.i.i = phi i64 [ %i.zi, %bb.eb ], [ 0, %bb.dz ]
  %i.zj = and i32 %i.yx, 15
  %i.zk = icmp eq i32 %i.zj, 5
  %i.zl = select i1 %i.zk, i64 8, i64 0
  %27 = ashr i64 %i.ys, 29
  %28 = and i64 %27, -8                           ; 2 uses
  %i.zm = and i32 %i.yp, 15
  %i.zn = icmp eq i32 %i.zm, 5
  %i.zo = select i1 %i.zn, i64 56, i64 48
  %i.zp = add nsw i64 %28, %i.zo
  %29 = icmp sgt i64 %i.ys, 322122547199
  %i.zq = select i1 %29, i64 8, i64 %28
  %i.zr = add nsw i64 %i.zp, %i.zq
  %i.zs = lshr i32 %i.yt, 7
  %i.zt = and i32 %i.zs, 8
  %i.zu = zext nneg i32 %i.zt to i64
  %i.zv = add nsw i64 %i.zr, %i.zu
  %i.zw = and i32 %i.yu, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.zw, 0
  %i.zx = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.zy = add nsw i64 %i.zv, %i.zx
  %i.zz = lshr i32 %i.yv, 11
  %i.aaa = and i32 %i.zz, 8
  %i.aab = zext nneg i32 %i.aaa to i64
  %i.aac = add nsw i64 %i.zy, %i.aab
  %i.aad = lshr i32 %i.yw, 19
  %i.aae = and i32 %i.aad, 8
  %i.aaf = zext nneg i32 %i.aae to i64
  %i.aag = add nsw i64 %i.aac, %i.aaf
  %i.aah = add nsw i64 %i.aag, %i.zl
  %i.aai = add nsw i64 %i.aah, %storemerge.i.i.i.i
  %i.aaj = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !297
  %i.aak = trunc i64 %i.aai to i32
  %i.aal = lshr i32 %i.aaj, 1
  %i.aam = and i32 %i.aal, 8
  %i.aan = add nsw i32 %i.aam, %i.aak
  %i.aao = add i64 %.sroa.2867.02842, 16
  %i.aap = sext i32 %i.aan to i64
  %i.aaq = add i64 %.sroa.2867.02842, %i.aap
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.aao, i64 %i.aaq)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ed:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.aar = add i64 %.sroa.2867.02842, 8
  %i.aas = inttoptr i64 %i.aar to ptr
  %i.aat = load i16, ptr %i.aas, align 2
  %i.aau = zext i16 %i.aat to i64
  %i.aav = mul nuw nsw i64 %i.aau, 24
  %i.aaw = add i64 %.sroa.2867.02842, 24          ; 2 uses
  %i.aax = add i64 %.sroa.2867.02842, 32
  %i.aay = add i64 %i.aax, %i.aav                 ; 2 uses
  %i.aaz = icmp ult i64 %i.aaw, %i.aay
  br i1 %i.aaz, label %.lr.ph.i.i.i572, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

.lr.ph.i.i.i572:                                  ; preds = %bb.ed, %.lr.ph.i.i.i572
  %.sroa.0.07.i.i.i573 = phi i64 [ %i.aba, %.lr.ph.i.i.i572 ], [ %i.aaw, %bb.ed ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %.sroa.0.07.i.i.i573)
  %i.aba = add i64 %.sroa.0.07.i.i.i573, 8        ; 2 uses
  %i.abb = icmp ult i64 %i.aba, %i.aay
  br i1 %i.abb, label %.lr.ph.i.i.i572, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374, !llvm.loop !12

bb.ee:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.abc = add i64 %.sroa.2867.02842, 8
  %i.abd = inttoptr i64 %i.abc to ptr
  %i.abe = load atomic volatile i16, ptr %i.abd monotonic, align 2
  %i.abf = sext i16 %i.abe to i64
  %i.abg = mul nsw i64 %i.abf, 24
  %i.abh = add i64 %.sroa.2867.02842, 24          ; 2 uses
  %i.abi = add i64 %.sroa.2867.02842, 32
  %i.abj = add i64 %i.abi, %i.abg                 ; 2 uses
  %i.abk = icmp ult i64 %i.abh, %i.abj
  br i1 %i.abk, label %.lr.ph.i.i.i574, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

.lr.ph.i.i.i574:                                  ; preds = %bb.ee, %.lr.ph.i.i.i574
  %.sroa.0.07.i.i.i575 = phi i64 [ %i.abl, %.lr.ph.i.i.i574 ], [ %i.abh, %bb.ee ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %.sroa.0.07.i.i.i575)
  %i.abl = add i64 %.sroa.0.07.i.i.i575, 8        ; 2 uses
  %i.abm = icmp ult i64 %i.abl, %i.abj
  br i1 %i.abm, label %.lr.ph.i.i.i574, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374, !llvm.loop !12

bb.ef:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.abn = add i64 %.sroa.2867.02842, 8
  %i.abo = inttoptr i64 %i.abn to ptr
  %i.abp = load i32, ptr %i.abo, align 4
  %i.abq = shl nsw i32 %i.abp, 3
  %i.abr = add nsw i32 %i.abq, 48
  %i.abs = add i64 %.sroa.2867.02842, 24          ; 2 uses
  %i.abt = sext i32 %i.abr to i64
  %i.abu = add i64 %.sroa.2867.02842, %i.abt      ; 2 uses
  %i.abv = icmp ult i64 %i.abs, %i.abu
  br i1 %i.abv, label %.lr.ph.i.i.i577, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

.lr.ph.i.i.i577:                                  ; preds = %bb.ef, %.lr.ph.i.i.i577
  %.sroa.0.07.i.i.i578 = phi i64 [ %i.abw, %.lr.ph.i.i.i577 ], [ %i.abs, %bb.ef ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %.sroa.0.07.i.i.i578)
  %i.abw = add i64 %.sroa.0.07.i.i.i578, 8        ; 2 uses
  %i.abx = icmp ult i64 %i.abw, %i.abu
  br i1 %i.abx, label %.lr.ph.i.i.i577, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374, !llvm.loop !12

bb.eg:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.aby = add i64 %.sroa.2867.02842, 8           ; 2 uses
  %i.abz = add i64 %.sroa.2867.02842, 24          ; 2 uses
  %i.aca = icmp ult i64 %i.aby, %i.abz
  br i1 %i.aca, label %.lr.ph.i.i.i580, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

.lr.ph.i.i.i580:                                  ; preds = %bb.eg, %.lr.ph.i.i.i580
  %.sroa.0.07.i.i.i581 = phi i64 [ %i.acb, %.lr.ph.i.i.i580 ], [ %i.aby, %bb.eg ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %.sroa.0.07.i.i.i581)
  %i.acb = add i64 %.sroa.0.07.i.i.i581, 8        ; 2 uses
  %i.acc = icmp ult i64 %i.acb, %i.abz
  br i1 %i.acc, label %.lr.ph.i.i.i580, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374, !llvm.loop !12

bb.eh:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acd = add i64 %.sroa.2867.02842, 8
  %i.ace = add i64 %.sroa.2867.02842, 64
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acd, i64 %i.ace)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ei:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acf = add i64 %.sroa.2867.02842, 8
  %i.acg = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acf, i64 %i.acg)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ej:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.ach = add i64 %.sroa.2867.02842, 8
  %i.aci = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.ach, i64 %i.aci)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ek:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acj = add i64 %.sroa.2867.02842, 8
  %i.ack = add i64 %.sroa.2867.02842, 16
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acj, i64 %i.ack)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.el:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acl = add i64 %.sroa.2867.02842, 8
  %i.acm = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acl, i64 %i.acm)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.em:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acn = add i64 %.sroa.2867.02842, 8
  %i.aco = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acn, i64 %i.aco)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.en:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acp = add i64 %.sroa.2867.02842, 8
  %i.acq = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acp, i64 %i.acq)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.eo:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acr = add i64 %.sroa.2867.02842, 8
  %i.acs = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acr, i64 %i.acs)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.ep:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.act = add i64 %.sroa.2867.02842, 8
  %i.acu = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.act, i64 %i.acu)
  %i.acv = add i64 %.sroa.2867.02842, 32
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acv)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.eq:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.acw = add i64 %.sroa.2867.02842, 16          ; 2 uses
  %i.acx = inttoptr i64 %i.acw to ptr
  %i.acy = load i64, ptr %i.acx, align 8
  %i.acz = lshr i64 %i.acy, 32
  %i.ada = mul i64 %i.acz, 103079215104
  %sext2757 = add i64 %i.ada, 171798691840
  %i.adb = ashr exact i64 %sext2757, 32
  %i.adc = add i64 %i.adb, %.sroa.2867.02842
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.acw, i64 %i.adc)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.er:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.add = add i64 %.sroa.2867.02842, 8
  %i.ade = add i64 %.sroa.2867.02842, 24
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.add, i64 %i.ade)
  %i.adf = add i64 %.sroa.2867.02842, 32
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.adf)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.es:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
  %i.adg = add i64 %.sroa.2867.02842, 8
  %i.adh = add i64 %.sroa.2867.02842, 104
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao, i64 %i.adg, i64 %i.adh)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit374

bb.et:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %i.ao)
end_hunk_0
begin_hunk_1_@_ZN2v88internal20MarkCompactCollector25MarkObjectsFromClientHeapEPNS0_7IsolateE:bb.a
bb.ki:                                            ; preds = %bb.kh
  %i.bfj = load atomic volatile i8, ptr %i.bfd monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit739

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit739: ; preds = %bb.kh, %bb.ki
  %.0.in.in.i736 = phi i8 [ %i.bfj, %bb.ki ], [ %i.bfh, %bb.kh ]
  %.0.in.i737 = zext i8 %.0.in.in.i736 to i64
  %.0.i738 = shl nuw nsw i64 %.0.in.i737, 3
  %i.bfk = add i64 %storemerge2847, 7
  %i.bfl = add i64 %storemerge2847, 31            ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bfk, i64 %i.bfl)
  %i.bfm = add i64 %.0.i738, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bfl, i64 %i.bfm)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kj:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bfn = add i64 %i.ajs, 7
  %i.bfo = inttoptr i64 %i.bfn to ptr             ; 2 uses
  %i.bfp = load atomic volatile i8, ptr %i.bfo monotonic, align 1 ; 0 uses
  %i.bfq = add i64 %i.ajs, 9
  %i.bfr = inttoptr i64 %i.bfq to ptr
  %i.bfs = load atomic volatile i8, ptr %i.bfr monotonic, align 1 ; 2 uses
  %i.bft = icmp ult i8 %i.bfs, 3
  br i1 %i.bft, label %bb.kk, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit743

bb.kk:                                            ; preds = %bb.kj
  %i.bfu = load atomic volatile i8, ptr %i.bfo monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit743

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit743: ; preds = %bb.kj, %bb.kk
  %.0.in.in.i740 = phi i8 [ %i.bfu, %bb.kk ], [ %i.bfs, %bb.kj ]
  %.0.in.i741 = zext i8 %.0.in.in.i740 to i64
  %.0.i742 = shl nuw nsw i64 %.0.in.i741, 3
  %i.bfv = add i64 %storemerge2847, 7
  %i.bfw = add i64 %.0.i742, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bfv, i64 %i.bfw)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kl:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bfx = add i64 %i.ajs, 7
  %i.bfy = inttoptr i64 %i.bfx to ptr             ; 2 uses
  %i.bfz = load atomic volatile i8, ptr %i.bfy monotonic, align 1 ; 0 uses
  %i.bga = add i64 %i.ajs, 9
  %i.bgb = inttoptr i64 %i.bga to ptr
  %i.bgc = load atomic volatile i8, ptr %i.bgb monotonic, align 1 ; 2 uses
  %i.bgd = icmp ult i8 %i.bgc, 3
  br i1 %i.bgd, label %bb.km, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit747

bb.km:                                            ; preds = %bb.kl
  %i.bge = load atomic volatile i8, ptr %i.bfy monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit747

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit747: ; preds = %bb.kl, %bb.km
  %.0.in.in.i744 = phi i8 [ %i.bge, %bb.km ], [ %i.bgc, %bb.kl ]
  %.0.in.i745 = zext i8 %.0.in.in.i744 to i64
  %.0.i746 = shl nuw nsw i64 %.0.in.i745, 3
  %i.bgf = add i64 %storemerge2847, 7
  %i.bgg = add i64 %storemerge2847, 55            ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgf, i64 %i.bgg)
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgg)
  %i.bgh = add i64 %storemerge2847, 63
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgh)
  %i.bgi = add i64 %storemerge2847, 79
  %i.bgj = add i64 %.0.i746, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgi, i64 %i.bgj)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kn:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bgk = add i64 %i.ajs, 7
  %i.bgl = inttoptr i64 %i.bgk to ptr             ; 2 uses
  %i.bgm = load atomic volatile i8, ptr %i.bgl monotonic, align 1 ; 0 uses
  %i.bgn = add i64 %i.ajs, 9
  %i.bgo = inttoptr i64 %i.bgn to ptr
  %i.bgp = load atomic volatile i8, ptr %i.bgo monotonic, align 1 ; 2 uses
  %i.bgq = icmp ult i8 %i.bgp, 3
  br i1 %i.bgq, label %bb.ko, label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit751

bb.ko:                                            ; preds = %bb.kn
  %i.bgr = load atomic volatile i8, ptr %i.bgl monotonic, align 1
  br label %_ZNK2v88internal3Map16UsedInstanceSizeEv.exit751

_ZNK2v88internal3Map16UsedInstanceSizeEv.exit751: ; preds = %bb.kn, %bb.ko
  %.0.in.in.i748 = phi i8 [ %i.bgr, %bb.ko ], [ %i.bgp, %bb.kn ]
  %.0.in.i749 = zext i8 %.0.in.in.i748 to i64
  %.0.i750 = shl nuw nsw i64 %.0.in.i749, 3
  %i.bgs = add i64 %storemerge2847, 7
  %i.bgt = add i64 %storemerge2847, 47            ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgs, i64 %i.bgt)
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgt)
  %i.bgu = add i64 %storemerge2847, 55
  %i.bgv = add i64 %.0.i750, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgu, i64 %i.bgv)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kp:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kq:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kr:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ks:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kt:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ku:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kv:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kw:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kx:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ky:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.kz:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.la:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lb:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lc:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ld:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bgw = add i64 %storemerge2847, 7             ; 2 uses
  %i.bgx = inttoptr i64 %i.bgw to ptr
  %i.bgy = load i64, ptr %i.bgx, align 8
  %i.bgz = shl i64 %i.bgy, 3
  %i.bha = and i64 %i.bgz, -34359738368
  %sext2774 = add i64 %i.bha, 68719476736
  %i.bhb = ashr exact i64 %sext2774, 32
  %i.bhc = add i64 %i.bhb, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bgw, i64 %i.bhc)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.le:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bhd = add i64 %storemerge2847, 7
  %i.bhe = add i64 %storemerge2847, 31
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bhd, i64 %i.bhe)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lf:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bhf = add i64 %storemerge2847, 7             ; 3 uses
  %i.bhg = inttoptr i64 %i.bhf to ptr
  %i.bhh = load atomic volatile i64, ptr %i.bhg monotonic, align 8
  %i.bhi = shl i64 %i.bhh, 3
  %i.bhj = and i64 %i.bhi, -34359738368
  %sext2773 = add i64 %i.bhj, 103079215104
  %i.bhk = ashr exact i64 %sext2773, 32
  %i.bhl = add i64 %i.bhk, %i.ajq                 ; 2 uses
  %i.bhm = icmp ult i64 %i.bhf, %i.bhl
  br i1 %i.bhm, label %.lr.ph.i.i.i756, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i756:                                  ; preds = %bb.lf, %.lr.ph.i.i.i756
  %.sroa.0.07.i.i.i757 = phi i64 [ %i.bhn, %.lr.ph.i.i.i756 ], [ %i.bhf, %bb.lf ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %.sroa.0.07.i.i.i757)
  %i.bhn = add i64 %.sroa.0.07.i.i.i757, 8        ; 2 uses
  %i.bho = icmp ult i64 %i.bhn, %i.bhl
  br i1 %i.bho, label %.lr.ph.i.i.i756, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !12

bb.lg:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bhp = add i64 %storemerge2847, 7
  %i.bhq = inttoptr i64 %i.bhp to ptr             ; 9 uses
  %i.bhr = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !298
  %i.bhs = add i64 %storemerge2847, 23
  %i.bht = inttoptr i64 %i.bhs to ptr
  %i.bhu = load i64, ptr %i.bht, align 8, !noalias !299 ; 2 uses
  %i.bhv = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !300
  %i.bhw = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !301
  %i.bhx = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !302
  %i.bhy = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !303
  %i.bhz = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !304
  %i.bia = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !305
  %i.bib = and i32 %i.bia, 15
  %i.bic = icmp eq i32 %i.bib, 5
  br i1 %i.bic, label %bb.lh, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761

bb.lh:                                            ; preds = %bb.lg
  %i.bid = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !306
  %i.bie = and i32 %i.bid, 15
  %i.bif = icmp eq i32 %i.bie, 5
  br i1 %i.bif, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.big = add i64 %storemerge2847, 47
  %i.bih = inttoptr i64 %i.big to ptr
  %i.bii = load i64, ptr %i.bih, align 8, !noalias !305
  %i.bij = ashr i64 %i.bii, 32
  %i.bik = mul nsw i64 %i.bij, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761

bb.lj:                                            ; preds = %bb.lh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !305
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761: ; preds = %bb.lg, %bb.li
  %storemerge.i.i.i.i759 = phi i64 [ %i.bik, %bb.li ], [ 0, %bb.lg ]
  %i.bil = and i32 %i.bhz, 15
  %i.bim = icmp eq i32 %i.bil, 5
  %i.bin = select i1 %i.bim, i64 8, i64 0
  %30 = ashr i64 %i.bhu, 29
  %31 = and i64 %30, -8                           ; 2 uses
  %i.bio = and i32 %i.bhr, 15
  %i.bip = icmp eq i32 %i.bio, 5
  %i.biq = select i1 %i.bip, i64 56, i64 48
  %i.bir = add nsw i64 %31, %i.biq
  %32 = icmp sgt i64 %i.bhu, 322122547199
  %i.bis = select i1 %32, i64 8, i64 %31
  %i.bit = add nsw i64 %i.bir, %i.bis
  %i.biu = lshr i32 %i.bhv, 7
  %i.biv = and i32 %i.biu, 8
  %i.biw = zext nneg i32 %i.biv to i64
  %i.bix = add nsw i64 %i.bit, %i.biw
  %i.biy = and i32 %i.bhw, 12288
  %.not.i.not.i.i.i.i.i.i.i760 = icmp eq i32 %i.biy, 0
  %i.biz = select i1 %.not.i.not.i.i.i.i.i.i.i760, i64 0, i64 16
  %i.bja = add nsw i64 %i.bix, %i.biz
  %i.bjb = lshr i32 %i.bhx, 11
  %i.bjc = and i32 %i.bjb, 8
  %i.bjd = zext nneg i32 %i.bjc to i64
  %i.bje = add nsw i64 %i.bja, %i.bjd
  %i.bjf = lshr i32 %i.bhy, 19
  %i.bjg = and i32 %i.bjf, 8
  %i.bjh = zext nneg i32 %i.bjg to i64
  %i.bji = add nsw i64 %i.bje, %i.bjh
  %i.bjj = add nsw i64 %i.bji, %i.bin
  %i.bjk = add nsw i64 %i.bjj, %storemerge.i.i.i.i759
  %i.bjl = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !307
  %i.bjm = trunc i64 %i.bjk to i32
  %i.bjn = lshr i32 %i.bjl, 1
  %i.bjo = and i32 %i.bjn, 8
  %i.bjp = add nsw i32 %i.bjo, %i.bjm
  %i.bjq = add i64 %storemerge2847, 15
  %i.bjr = sext i32 %i.bjp to i64
  %i.bjs = add i64 %i.ajq, %i.bjr
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bjq, i64 %i.bjs)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lk:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bjt = add i64 %storemerge2847, 7
  %i.bju = inttoptr i64 %i.bjt to ptr
  %i.bjv = load i16, ptr %i.bju, align 2
  %i.bjw = zext i16 %i.bjv to i64
  %i.bjx = mul nuw nsw i64 %i.bjw, 24
  %i.bjy = add i64 %storemerge2847, 23            ; 2 uses
  %i.bjz = add i64 %storemerge2847, 31
  %i.bka = add i64 %i.bjz, %i.bjx                 ; 2 uses
  %i.bkb = icmp ult i64 %i.bjy, %i.bka
  br i1 %i.bkb, label %.lr.ph.i.i.i762, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i762:                                  ; preds = %bb.lk, %.lr.ph.i.i.i762
  %.sroa.0.07.i.i.i763 = phi i64 [ %i.bkc, %.lr.ph.i.i.i762 ], [ %i.bjy, %bb.lk ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %.sroa.0.07.i.i.i763)
  %i.bkc = add i64 %.sroa.0.07.i.i.i763, 8        ; 2 uses
  %i.bkd = icmp ult i64 %i.bkc, %i.bka
  br i1 %i.bkd, label %.lr.ph.i.i.i762, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !12

bb.ll:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bke = add i64 %storemerge2847, 7
  %i.bkf = inttoptr i64 %i.bke to ptr
  %i.bkg = load atomic volatile i16, ptr %i.bkf monotonic, align 2
  %i.bkh = sext i16 %i.bkg to i64
  %i.bki = mul nsw i64 %i.bkh, 24
  %i.bkj = add i64 %storemerge2847, 23            ; 2 uses
  %i.bkk = add i64 %storemerge2847, 31
  %i.bkl = add i64 %i.bkk, %i.bki                 ; 2 uses
  %i.bkm = icmp ult i64 %i.bkj, %i.bkl
  br i1 %i.bkm, label %.lr.ph.i.i.i765, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i765:                                  ; preds = %bb.ll, %.lr.ph.i.i.i765
  %.sroa.0.07.i.i.i766 = phi i64 [ %i.bkn, %.lr.ph.i.i.i765 ], [ %i.bkj, %bb.ll ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %.sroa.0.07.i.i.i766)
  %i.bkn = add i64 %.sroa.0.07.i.i.i766, 8        ; 2 uses
  %i.bko = icmp ult i64 %i.bkn, %i.bkl
  br i1 %i.bko, label %.lr.ph.i.i.i765, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !12

bb.lm:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bkp = add i64 %storemerge2847, 7
  %i.bkq = inttoptr i64 %i.bkp to ptr
  %i.bkr = load i32, ptr %i.bkq, align 4
  %i.bks = shl nsw i32 %i.bkr, 3
  %i.bkt = add nsw i32 %i.bks, 48
  %i.bku = add i64 %storemerge2847, 23            ; 2 uses
  %i.bkv = sext i32 %i.bkt to i64
  %i.bkw = add i64 %i.ajq, %i.bkv                 ; 2 uses
  %i.bkx = icmp ult i64 %i.bku, %i.bkw
  br i1 %i.bkx, label %.lr.ph.i.i.i768, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i768:                                  ; preds = %bb.lm, %.lr.ph.i.i.i768
  %.sroa.0.07.i.i.i769 = phi i64 [ %i.bky, %.lr.ph.i.i.i768 ], [ %i.bku, %bb.lm ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %.sroa.0.07.i.i.i769)
  %i.bky = add i64 %.sroa.0.07.i.i.i769, 8        ; 2 uses
  %i.bkz = icmp ult i64 %i.bky, %i.bkw
  br i1 %i.bkz, label %.lr.ph.i.i.i768, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !12

bb.ln:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bla = add i64 %storemerge2847, 7             ; 2 uses
  %i.blb = add i64 %storemerge2847, 23            ; 2 uses
  %i.blc = icmp ult i64 %i.bla, %i.blb
  br i1 %i.blc, label %.lr.ph.i.i.i771, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i.i771:                                  ; preds = %bb.ln, %.lr.ph.i.i.i771
  %.sroa.0.07.i.i.i772 = phi i64 [ %i.bld, %.lr.ph.i.i.i771 ], [ %i.bla, %bb.ln ] ; 2 uses
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_19FullMaybeObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %.sroa.0.07.i.i.i772)
  %i.bld = add i64 %.sroa.0.07.i.i.i772, 8        ; 2 uses
  %i.ble = icmp ult i64 %i.bld, %i.blb
  br i1 %i.ble, label %.lr.ph.i.i.i771, label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !12

bb.lo:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blf = add i64 %storemerge2847, 7
  %i.blg = add i64 %storemerge2847, 63
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blf, i64 %i.blg)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lp:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blh = add i64 %storemerge2847, 7
  %i.bli = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blh, i64 %i.bli)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lq:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blj = add i64 %storemerge2847, 7
  %i.blk = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blj, i64 %i.blk)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lr:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bll = add i64 %storemerge2847, 7
  %i.blm = add i64 %storemerge2847, 15
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bll, i64 %i.blm)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ls:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bln = add i64 %storemerge2847, 7
  %i.blo = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bln, i64 %i.blo)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lt:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blp = add i64 %storemerge2847, 7
  %i.blq = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blp, i64 %i.blq)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lu:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blr = add i64 %storemerge2847, 7
  %i.bls = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blr, i64 %i.bls)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lv:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blt = add i64 %storemerge2847, 7
  %i.blu = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blt, i64 %i.blu)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lw:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.blv = add i64 %storemerge2847, 7
  %i.blw = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blv, i64 %i.blw)
  %i.blx = add i64 %storemerge2847, 31
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.blx)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lx:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bly = add i64 %storemerge2847, 15            ; 2 uses
  %i.blz = inttoptr i64 %i.bly to ptr
  %i.bma = load i64, ptr %i.blz, align 8
  %i.bmb = lshr i64 %i.bma, 32
  %i.bmc = mul i64 %i.bmb, 103079215104
  %sext2772 = add i64 %i.bmc, 171798691840
  %i.bmd = ashr exact i64 %sext2772, 32
  %i.bme = add i64 %i.bmd, %i.ajq
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bly, i64 %i.bme)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ly:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bmf = add i64 %storemerge2847, 7
  %i.bmg = add i64 %storemerge2847, 23
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bmf, i64 %i.bmg)
  %i.bmh = add i64 %storemerge2847, 31
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor12VisitPointerENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bmh)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.lz:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
  %i.bmi = add i64 %storemerge2847, 7
  %i.bmj = add i64 %storemerge2847, 103
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor13VisitPointersENS0_6TaggedINS0_10HeapObjectEEENS0_14FullObjectSlotES6_(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847, i64 %i.bmi, i64 %i.bmj)
  br label %_ZN2v88internal11HeapVisitorINS0_20MarkCompactCollector23SharedHeapObjectVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS5_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

bb.ma:                                            ; preds = %.lr.ph2849
  call void @_ZN2v88internal20MarkCompactCollector23SharedHeapObjectVisitor15VisitMapPointerENS0_6TaggedINS0_10HeapObjectEEE(ptr noundef nonnull align 8 dereferenceable(24) %24, i64 %storemerge2847)
end_hunk_1
begin_hunk_2_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE0EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  %i.cad = inttoptr i64 %i.cac to ptr
  %i.cae = load atomic volatile i64, ptr %i.cad monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cac, i64 %i.cae)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE13EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.caf = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cag = inttoptr i64 %i.caf to ptr
  %i.cah = load atomic volatile i64, ptr %i.cag monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.caf, i64 %i.cah)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE14EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cai = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.caj = inttoptr i64 %i.cai to ptr
  %i.cak = load atomic volatile i64, ptr %i.caj monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cai, i64 %i.cak)
  %i.cal = add i64 %.sroa.08.0.copyload, 7
  %i.cam = inttoptr i64 %i.cal to ptr
  %i.can = load i32, ptr %i.cam, align 4
  %i.cao = shl nsw i32 %i.can, 2
  %i.cap = and i32 %i.cao, -8
  %i.caq = add i32 %i.cap, 16
  %i.car = sext i32 %i.caq to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE15EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cas = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cat = inttoptr i64 %i.cas to ptr
  %i.cau = load atomic volatile i64, ptr %i.cat monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cas, i64 %i.cau)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE16EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cav = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.caw = inttoptr i64 %i.cav to ptr
  %i.cax = load atomic volatile i64, ptr %i.caw monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cav, i64 %i.cax)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE17EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cay = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.caz = inttoptr i64 %i.cay to ptr
  %i.cba = load atomic volatile i64, ptr %i.caz monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cay, i64 %i.cba)
  %i.cbb = add i64 %.sroa.08.0.copyload, 7
  %i.cbc = inttoptr i64 %i.cbb to ptr
  %i.cbd = load i32, ptr %i.cbc, align 4
  %i.cbe = shl i32 %i.cbd, 3
  %i.cbf = add i32 %i.cbe, 16
  %i.cbg = sext i32 %i.cbf to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE18EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbh = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbi = inttoptr i64 %i.cbh to ptr
  %i.cbj = load atomic volatile i64, ptr %i.cbi monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbh, i64 %i.cbj)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE19EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbk = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbl = inttoptr i64 %i.cbk to ptr
  %i.cbm = load atomic volatile i64, ptr %i.cbl monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbk, i64 %i.cbm)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE20EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbn = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbo = inttoptr i64 %i.cbn to ptr
  %i.cbp = load atomic volatile i64, ptr %i.cbo monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbn, i64 %i.cbp)
  %i.cbq = add i64 %.sroa.08.0.copyload, 11
  %i.cbr = inttoptr i64 %i.cbq to ptr
  %i.cbs = load i32, ptr %i.cbr, align 4
  %i.cbt = shl nsw i32 %i.cbs, 3
  %i.cbu = add nsw i32 %i.cbt, 16
  %i.cbv = sext i32 %i.cbu to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE21EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbw = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbx = inttoptr i64 %i.cbw to ptr
  %i.cby = load atomic volatile i64, ptr %i.cbx monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbw, i64 %i.cby)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE22EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbz = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cca = inttoptr i64 %i.cbz to ptr
  %i.ccb = load atomic volatile i64, ptr %i.cca monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbz, i64 %i.ccb)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ccc = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.ccd = inttoptr i64 %i.ccc to ptr
  %i.cce = load atomic volatile i64, ptr %i.ccd monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.ccc, i64 %i.cce)
  %i.ccf = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.ccg = inttoptr i64 %i.ccf to ptr
  %i.cch = load i64, ptr %i.ccg, align 8
  %i.cci = shl i64 %i.cch, 3
  %i.ccj = and i64 %i.cci, -34359738368
  %sext2365 = add i64 %i.ccj, 68719476736
  %i.cck = ashr exact i64 %sext2365, 32           ; 3 uses
  %i.ccl = add i64 %i.ccc, %i.cck                 ; 2 uses
  %i.ccm = icmp ult i64 %i.ccf, %i.ccl
  br i1 %i.ccm, label %.lr.ph.i.i631, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i631:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633
  %.sroa.021.028.i.i632 = phi i64 [ %i.ccq, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633 ], [ %i.ccf, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ccn = inttoptr i64 %.sroa.021.028.i.i632 to ptr
  %i.cco = load atomic volatile i64, ptr %i.ccn monotonic, align 8 ; 2 uses
  %i.ccp = trunc i64 %i.cco to i1
  br i1 %i.ccp, label %bb.ht, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633

bb.ht:                                            ; preds = %.lr.ph.i.i631
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i632, i64 %i.cco)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633: ; preds = %bb.ht, %.lr.ph.i.i631
  %i.ccq = add i64 %.sroa.021.028.i.i632, 8       ; 2 uses
  %i.ccr = icmp ult i64 %i.ccq, %i.ccl
  br i1 %i.ccr, label %.lr.ph.i.i631, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ccs = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cct = inttoptr i64 %i.ccs to ptr
  %i.ccu = load atomic volatile i64, ptr %i.cct monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.ccs, i64 %i.ccu)
  %i.ccv = add i64 %.sroa.08.0.copyload, 7        ; 2 uses
  %i.ccw = add i64 %.sroa.08.0.copyload, 31       ; 2 uses
  %i.ccx = icmp ult i64 %i.ccv, %i.ccw
  br i1 %i.ccx, label %.lr.ph.i.i.i635, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph.i.i.i635:                                  ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637
  %.sroa.021.028.i.i.i636 = phi i64 [ %i.cdb, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637 ], [ %i.ccv, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ccy = inttoptr i64 %.sroa.021.028.i.i.i636 to ptr
  %i.ccz = load atomic volatile i64, ptr %i.ccy monotonic, align 8 ; 2 uses
  %i.cda = trunc i64 %i.ccz to i1
  br i1 %i.cda, label %bb.hu, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637

bb.hu:                                            ; preds = %.lr.ph.i.i.i635
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i.i636, i64 %i.ccz)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637: ; preds = %bb.hu, %.lr.ph.i.i.i635
  %i.cdb = add i64 %.sroa.021.028.i.i.i636, 8     ; 2 uses
  %i.cdc = icmp ult i64 %i.cdb, %i.ccw
  br i1 %i.cdc, label %.lr.ph.i.i.i635, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cdd = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.cde = inttoptr i64 %i.cdd to ptr
  %i.cdf = load atomic volatile i64, ptr %i.cde monotonic, align 8
  %i.cdg = add i64 %.sroa.08.0.copyload, -1
  %i.cdh = shl i64 %i.cdf, 3
  %i.cdi = and i64 %i.cdh, -34359738368
  %sext2364 = add i64 %i.cdi, 103079215104
  %i.cdj = ashr exact i64 %sext2364, 32           ; 3 uses
  %i.cdk = add i64 %i.cdg, %i.cdj                 ; 2 uses
  %i.cdl = icmp ult i64 %i.cdd, %i.cdk
  br i1 %i.cdl, label %.lr.ph.i.i640, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i640:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643
  %.sroa.018.030.i.i641 = phi i64 [ %i.cdv, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643 ], [ %i.cdd, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cdm = inttoptr i64 %.sroa.018.030.i.i641 to ptr
  %i.cdn = load atomic volatile i64, ptr %i.cdm monotonic, align 8 ; 4 uses
  %i.cdo = and i64 %i.cdn, 3                      ; 2 uses
  %i.cdp = icmp eq i64 %i.cdo, 1
  br i1 %i.cdp, label %bb.hv, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642

bb.hv:                                            ; preds = %.lr.ph.i.i640
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i641, i64 %i.cdn)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642: ; preds = %.lr.ph.i.i640
  %i.cdq = icmp eq i64 %i.cdo, 3
  %i.cdr = and i64 %i.cdn, 4294967295
  %i.cds = icmp ne i64 %i.cdr, 3
  %i.cdt = and i1 %i.cdq, %i.cds
  br i1 %i.cdt, label %bb.hw, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

bb.hw:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642
  %i.cdu = and i64 %i.cdn, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i641, i64 %i.cdu)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643: ; preds = %bb.hw, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642, %bb.hv
  %i.cdv = add i64 %.sroa.018.030.i.i641, 8       ; 2 uses
  %i.cdw = icmp ult i64 %i.cdv, %i.cdk
  br i1 %i.cdw, label %.lr.ph.i.i640, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !17

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cdx = add i64 %.sroa.08.0.copyload, 7
  %i.cdy = inttoptr i64 %i.cdx to ptr             ; 9 uses
  %i.cdz = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !335
  %i.cea = add i64 %.sroa.08.0.copyload, 23
  %i.ceb = inttoptr i64 %i.cea to ptr
  %i.cec = load i64, ptr %i.ceb, align 8, !noalias !336 ; 2 uses
  %i.ced = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !337
  %i.cee = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !338
  %i.cef = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !339
  %i.ceg = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !340
  %i.ceh = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !341
  %i.cei = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !342
  %i.cej = and i32 %i.cei, 15
  %i.cek = icmp eq i32 %i.cej, 5
  br i1 %i.cek, label %bb.hx, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.hx:                                            ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.cel = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !343
  %i.cem = and i32 %i.cel, 15
  %i.cen = icmp eq i32 %i.cem, 5
  br i1 %i.cen, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.ceo = add i64 %.sroa.08.0.copyload, 47
  %i.cep = inttoptr i64 %i.ceo to ptr
  %i.ceq = load i64, ptr %i.cep, align 8, !noalias !342
  %i.cer = ashr i64 %i.ceq, 32
  %i.ces = mul nsw i64 %i.cer, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.hz:                                            ; preds = %bb.hx
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !342
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.hy
  %storemerge.i.i.i.i = phi i64 [ %i.ces, %bb.hy ], [ 0, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ]
  %i.cet = and i32 %i.ceh, 15
  %i.ceu = icmp eq i32 %i.cet, 5
  %i.cev = select i1 %i.ceu, i64 8, i64 0
  %18 = ashr i64 %i.cec, 29
  %19 = and i64 %18, -8                           ; 2 uses
  %i.cew = and i32 %i.cdz, 15
  %i.cex = icmp eq i32 %i.cew, 5
  %i.cey = select i1 %i.cex, i64 56, i64 48
  %i.cez = add nsw i64 %19, %i.cey
  %20 = icmp sgt i64 %i.cec, 322122547199
  %i.cfa = select i1 %20, i64 8, i64 %19
  %i.cfb = add nsw i64 %i.cez, %i.cfa
  %i.cfc = lshr i32 %i.ced, 7
  %i.cfd = and i32 %i.cfc, 8
  %i.cfe = zext nneg i32 %i.cfd to i64
  %i.cff = add nsw i64 %i.cfb, %i.cfe
  %i.cfg = and i32 %i.cee, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cfg, 0
  %i.cfh = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.cfi = add nsw i64 %i.cff, %i.cfh
  %i.cfj = lshr i32 %i.cef, 11
  %i.cfk = and i32 %i.cfj, 8
  %i.cfl = zext nneg i32 %i.cfk to i64
  %i.cfm = add nsw i64 %i.cfi, %i.cfl
  %i.cfn = lshr i32 %i.ceg, 19
  %i.cfo = and i32 %i.cfn, 8
  %i.cfp = zext nneg i32 %i.cfo to i64
  %i.cfq = add nsw i64 %i.cfm, %i.cfp
  %i.cfr = add nsw i64 %i.cfq, %i.cev
  %i.cfs = add nsw i64 %i.cfr, %storemerge.i.i.i.i
  %i.cft = load atomic volatile i32, ptr %i.cdy monotonic, align 4, !noalias !344
  %i.cfu = trunc i64 %i.cfs to i32
  %i.cfv = lshr i32 %i.cft, 1
  %i.cfw = and i32 %i.cfv, 8
  %i.cfx = add nsw i32 %i.cfw, %i.cfu
  %i.cfy = add i64 %.sroa.08.0.copyload, -1
  %i.cfz = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.cga = sext i32 %i.cfx to i64                 ; 3 uses
  %i.cgb = add i64 %i.cfy, %i.cga                 ; 2 uses
  %i.cgc = icmp ult i64 %i.cfz, %i.cgb
  br i1 %i.cgc, label %.lr.ph.i.i646, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i646:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648
  %.sroa.021.028.i.i647 = phi i64 [ %i.cgg, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648 ], [ %i.cfz, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.cgd = inttoptr i64 %.sroa.021.028.i.i647 to ptr
  %i.cge = load atomic volatile i64, ptr %i.cgd monotonic, align 8 ; 2 uses
  %i.cgf = trunc i64 %i.cge to i1
  br i1 %i.cgf, label %bb.ia, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648

bb.ia:                                            ; preds = %.lr.ph.i.i646
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i647, i64 %i.cge)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648: ; preds = %bb.ia, %.lr.ph.i.i646
  %i.cgg = add i64 %.sroa.021.028.i.i647, 8       ; 2 uses
  %i.cgh = icmp ult i64 %i.cgg, %i.cgb
  br i1 %i.cgh, label %.lr.ph.i.i646, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

bb.ib:                                            ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cgj = load i32, ptr %i.cgi, align 8
  %i.cgk = and i32 %i.cgj, 3                      ; 3 uses
  %i.cgl = add i64 %.sroa.08.0.copyload, 11
  %i.cgm = inttoptr i64 %i.cgl to ptr             ; 3 uses
  %i.cgn = add i64 %.sroa.08.0.copyload, 9
  %i.cgo = inttoptr i64 %i.cgn to ptr             ; 2 uses
  %i.cgp = add i64 %.sroa.08.0.copyload, 7
  %i.cgq = inttoptr i64 %i.cgp to ptr             ; 2 uses
  br label %bb.ic

bb.ic:                                            ; preds = %.backedge, %bb.ib
  %i.cgr = load atomic volatile i32, ptr %i.cgm monotonic, align 4 ; 5 uses
  %i.cgs = trunc i32 %i.cgr to i16
  %i.cgt = lshr i16 %i.cgs, 2                     ; 2 uses
  %i.cgu = lshr i32 %i.cgr, 16                    ; 2 uses
  %i.cgv = and i32 %i.cgr, 3
  %.not.i655 = icmp eq i32 %i.cgk, %i.cgv
  br i1 %.not.i655, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.cgw = zext nneg i16 %i.cgt to i32
  %i.cgx = add nuw nsw i32 %i.cgu, %i.cgw         ; 3 uses
  %i.cgy = icmp eq i32 %i.cgx, 0
  br i1 %i.cgy, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.cgz = load atomic volatile i16, ptr %i.cgo monotonic, align 2
  %.not18.i = icmp eq i16 %i.cgz, 0
  %..i656 = select i1 %.not18.i, ptr %i.cgq, ptr %i.cgo
  %i.cha = load atomic volatile i16, ptr %..i656 monotonic, align 2 ; 2 uses
  %i.chb = zext i16 %i.cha to i32
  %i.chc = shl nuw nsw i32 %i.chb, 2
  %i.chd = or disjoint i32 %i.chc, %i.cgk
  %i.che = cmpxchg volatile ptr %i.cgm, i32 %i.cgr, i32 %i.chd acq_rel acquire, align 4
  %i.chf = extractvalue { i32, i1 } %i.che, 1
  br i1 %i.chf, label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit, label %.backedge, !llvm.loop !24

bb.if:                                            ; preds = %bb.id
  %i.chg = icmp eq i32 %i.cgu, 0
  br i1 %i.chg, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.chh = shl nuw nsw i32 %i.cgx, 2
  %i.chi = and i32 %i.chh, 262140
  %i.chj = or disjoint i32 %i.chi, %i.cgk
  %i.chk = cmpxchg volatile ptr %i.cgm, i32 %i.cgr, i32 %i.chj acq_rel acquire, align 4
  %i.chl = extractvalue { i32, i1 } %i.chk, 1
  br i1 %i.chl, label %.split.loop.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.ig, %bb.ie
  br label %bb.ic, !llvm.loop !24

.split.loop.exit.i:                               ; preds = %bb.ig
  %i.chm = trunc i32 %i.cgx to i16
  br label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit

_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit: ; preds = %bb.ie, %.split.loop.exit.i
  %.sroa.035.0.insert.ext.pre-phi.i = phi i16 [ %i.cgt, %.split.loop.exit.i ], [ 0, %bb.ie ] ; 3 uses
  %.sroa.4.2.ph.i = phi i16 [ %i.chm, %.split.loop.exit.i ], [ %i.cha, %bb.ie ] ; 2 uses
  %.not.i93 = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, %.sroa.4.2.ph.i
  br i1 %.not.i93, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347, label %bb.ih

bb.ih:                                            ; preds = %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.2.ph.i to i64
  %i.chn = zext nneg i16 %.sroa.035.0.insert.ext.pre-phi.i to i64
  %i.cho = mul nuw nsw i64 %i.chn, 24
  %i.chp = add i64 %.sroa.08.0.copyload, 31       ; 4 uses
  %i.chq = add i64 %i.chp, %i.cho                 ; 2 uses
  %i.chr = mul nuw nsw i64 %.sroa.4.0.insert.ext.i, 24
  %i.chs = add i64 %i.chp, %i.chr                 ; 2 uses
  %i.cht = icmp ult i64 %i.chq, %i.chs
  br i1 %i.cht, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i

.lr.ph:                                           ; preds = %bb.ih, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660
  %.sroa.01510.02564 = phi i64 [ %i.cid, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660 ], [ %i.chq, %bb.ih ] ; 4 uses
  %i.chu = inttoptr i64 %.sroa.01510.02564 to ptr
  %i.chv = load atomic volatile i64, ptr %i.chu monotonic, align 8 ; 4 uses
  %i.chw = and i64 %i.chv, 3                      ; 2 uses
  %i.chx = icmp eq i64 %i.chw, 1
  br i1 %i.chx, label %bb.ii, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659

bb.ii:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01510.02564, i64 %i.chv)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659: ; preds = %.lr.ph
  %i.chy = icmp eq i64 %i.chw, 3
  %i.chz = and i64 %i.chv, 4294967295
  %i.cia = icmp ne i64 %i.chz, 3
  %i.cib = and i1 %i.chy, %i.cia
  br i1 %i.cib, label %bb.ij, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

bb.ij:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659
  %i.cic = and i64 %i.chv, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01510.02564, i64 %i.cic)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660: ; preds = %bb.ii, %bb.ij, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659
  %i.cid = add i64 %.sroa.01510.02564, 8          ; 2 uses
  %i.cie = icmp ult i64 %i.cid, %i.chs
  br i1 %i.cie, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i, !llvm.loop !17

_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660, %bb.ih
  %i.cif = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, 0
  br i1 %i.cif, label %bb.ik, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347

bb.ik:                                            ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i
  %i.cig = load i16, ptr %i.cgq, align 2
  %i.cih = zext i16 %i.cig to i64
  %i.cii = mul nuw nsw i64 %i.cih, 24
  %i.cij = add nuw nsw i64 %i.cii, 32             ; 2 uses
  %i.cik = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cil = icmp ult i64 %i.cik, %i.chp
  br i1 %i.cil, label %.lr.ph2566, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph2566:                                       ; preds = %bb.ik, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663
  %.sroa.01496.02565 = phi i64 [ %i.cip, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663 ], [ %i.cik, %bb.ik ] ; 3 uses
  %i.cim = inttoptr i64 %.sroa.01496.02565 to ptr
  %i.cin = load atomic volatile i64, ptr %i.cim monotonic, align 8 ; 2 uses
  %i.cio = trunc i64 %i.cin to i1
  br i1 %i.cio, label %bb.il, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663

bb.il:                                            ; preds = %.lr.ph2566
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01496.02565, i64 %i.cin)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663: ; preds = %bb.il, %.lr.ph2566
  %i.cip = add i64 %.sroa.01496.02565, 8          ; 2 uses
  %i.ciq = icmp ult i64 %i.cip, %i.chp
  br i1 %i.ciq, label %.lr.ph2566, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cir = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.cis = inttoptr i64 %i.cir to ptr
  %i.cit = load atomic volatile i64, ptr %i.cis monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cir, i64 %i.cit)
  %i.ciu = add i64 %.sroa.08.0.copyload, 7
  %i.civ = inttoptr i64 %i.ciu to ptr
  %i.ciw = load atomic volatile i16, ptr %i.civ monotonic, align 2
  %i.cix = sext i16 %i.ciw to i64
  %i.ciy = mul nsw i64 %i.cix, 24
  %i.ciz = add nsw i64 %i.ciy, 32                 ; 3 uses
  %i.cja = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cjb = add i64 %i.cir, %i.ciz                 ; 2 uses
  %i.cjc = icmp ult i64 %i.cja, %i.cjb
  br i1 %i.cjc, label %.lr.ph.i.i664, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i664:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i667
  %.sroa.018.030.i.i665 = phi i64 [ %i.cjm, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i667 ], [ %i.cja, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cjd = inttoptr i64 %.sroa.018.030.i.i665 to ptr
  %i.cje = load atomic volatile i64, ptr %i.cjd monotonic, align 8 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  %i.ceh = inttoptr i64 %i.ceg to ptr
  %i.cei = load atomic volatile i64, ptr %i.ceh monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.ceg, i64 %i.cei)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE13EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cej = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cek = inttoptr i64 %i.cej to ptr
  %i.cel = load atomic volatile i64, ptr %i.cek monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cej, i64 %i.cel)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE14EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cem = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cen = inttoptr i64 %i.cem to ptr
  %i.ceo = load atomic volatile i64, ptr %i.cen monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cem, i64 %i.ceo)
  %i.cep = add i64 %.sroa.08.0.copyload, 7
  %i.ceq = inttoptr i64 %i.cep to ptr
  %i.cer = load i32, ptr %i.ceq, align 4
  %i.ces = shl nsw i32 %i.cer, 2
  %i.cet = and i32 %i.ces, -8
  %i.ceu = add i32 %i.cet, 16
  %i.cev = sext i32 %i.ceu to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE15EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cew = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cex = inttoptr i64 %i.cew to ptr
  %i.cey = load atomic volatile i64, ptr %i.cex monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cew, i64 %i.cey)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE16EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cez = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfa = inttoptr i64 %i.cez to ptr
  %i.cfb = load atomic volatile i64, ptr %i.cfa monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cez, i64 %i.cfb)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE17EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfc = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfd = inttoptr i64 %i.cfc to ptr
  %i.cfe = load atomic volatile i64, ptr %i.cfd monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cfc, i64 %i.cfe)
  %i.cff = add i64 %.sroa.08.0.copyload, 7
  %i.cfg = inttoptr i64 %i.cff to ptr
  %i.cfh = load i32, ptr %i.cfg, align 4
  %i.cfi = shl i32 %i.cfh, 3
  %i.cfj = add i32 %i.cfi, 16
  %i.cfk = sext i32 %i.cfj to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE18EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfl = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfm = inttoptr i64 %i.cfl to ptr
  %i.cfn = load atomic volatile i64, ptr %i.cfm monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cfl, i64 %i.cfn)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE19EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfo = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfp = inttoptr i64 %i.cfo to ptr
  %i.cfq = load atomic volatile i64, ptr %i.cfp monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cfo, i64 %i.cfq)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE20EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfr = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfs = inttoptr i64 %i.cfr to ptr
  %i.cft = load atomic volatile i64, ptr %i.cfs monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cfr, i64 %i.cft)
  %i.cfu = add i64 %.sroa.08.0.copyload, 11
  %i.cfv = inttoptr i64 %i.cfu to ptr
  %i.cfw = load i32, ptr %i.cfv, align 4
  %i.cfx = shl nsw i32 %i.cfw, 3
  %i.cfy = add nsw i32 %i.cfx, 16
  %i.cfz = sext i32 %i.cfy to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE21EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cga = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cgb = inttoptr i64 %i.cga to ptr
  %i.cgc = load atomic volatile i64, ptr %i.cgb monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cga, i64 %i.cgc)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE22EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgd = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cge = inttoptr i64 %i.cgd to ptr
  %i.cgf = load atomic volatile i64, ptr %i.cge monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cgd, i64 %i.cgf)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgg = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.cgh = inttoptr i64 %i.cgg to ptr
  %i.cgi = load atomic volatile i64, ptr %i.cgh monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cgg, i64 %i.cgi)
  %i.cgj = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.cgk = inttoptr i64 %i.cgj to ptr
  %i.cgl = load i64, ptr %i.cgk, align 8
  %i.cgm = shl i64 %i.cgl, 3
  %i.cgn = and i64 %i.cgm, -34359738368
  %sext2442 = add i64 %i.cgn, 68719476736
  %i.cgo = ashr exact i64 %sext2442, 32           ; 3 uses
  %i.cgp = add i64 %i.cgg, %i.cgo                 ; 2 uses
  %i.cgq = icmp ult i64 %i.cgj, %i.cgp
  br i1 %i.cgq, label %.lr.ph.i.i674, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i674:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i676
  %.sroa.021.028.i.i675 = phi i64 [ %i.cgu, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i676 ], [ %i.cgj, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.cgr = inttoptr i64 %.sroa.021.028.i.i675 to ptr
  %i.cgs = load atomic volatile i64, ptr %i.cgr monotonic, align 8 ; 2 uses
  %i.cgt = trunc i64 %i.cgs to i1
  br i1 %i.cgt, label %bb.io, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i676

bb.io:                                            ; preds = %.lr.ph.i.i674
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i675, i64 %i.cgs)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i676

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i676: ; preds = %bb.io, %.lr.ph.i.i674
  %i.cgu = add i64 %.sroa.021.028.i.i675, 8       ; 2 uses
  %i.cgv = icmp ult i64 %i.cgu, %i.cgp
  br i1 %i.cgv, label %.lr.ph.i.i674, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgw = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cgx = inttoptr i64 %i.cgw to ptr
  %i.cgy = load atomic volatile i64, ptr %i.cgx monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cgw, i64 %i.cgy)
  %i.cgz = add i64 %.sroa.08.0.copyload, 7        ; 2 uses
  %i.cha = add i64 %.sroa.08.0.copyload, 31       ; 2 uses
  %i.chb = icmp ult i64 %i.cgz, %i.cha
  br i1 %i.chb, label %.lr.ph.i.i.i678, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph.i.i.i678:                                  ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i680
  %.sroa.021.028.i.i.i679 = phi i64 [ %i.chf, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i680 ], [ %i.cgz, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.chc = inttoptr i64 %.sroa.021.028.i.i.i679 to ptr
  %i.chd = load atomic volatile i64, ptr %i.chc monotonic, align 8 ; 2 uses
  %i.che = trunc i64 %i.chd to i1
  br i1 %i.che, label %bb.ip, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i680

bb.ip:                                            ; preds = %.lr.ph.i.i.i678
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i.i679, i64 %i.chd)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i680

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i680: ; preds = %bb.ip, %.lr.ph.i.i.i678
  %i.chf = add i64 %.sroa.021.028.i.i.i679, 8     ; 2 uses
  %i.chg = icmp ult i64 %i.chf, %i.cha
  br i1 %i.chg, label %.lr.ph.i.i.i678, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.chh = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.chi = inttoptr i64 %i.chh to ptr
  %i.chj = load atomic volatile i64, ptr %i.chi monotonic, align 8
  %i.chk = add i64 %.sroa.08.0.copyload, -1
  %i.chl = shl i64 %i.chj, 3
  %i.chm = and i64 %i.chl, -34359738368
  %sext2441 = add i64 %i.chm, 103079215104
  %i.chn = ashr exact i64 %sext2441, 32           ; 3 uses
  %i.cho = add i64 %i.chk, %i.chn                 ; 2 uses
  %i.chp = icmp ult i64 %i.chh, %i.cho
  br i1 %i.chp, label %.lr.ph.i.i683, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i683:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686
  %.sroa.018.030.i.i684 = phi i64 [ %i.chz, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686 ], [ %i.chh, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.chq = inttoptr i64 %.sroa.018.030.i.i684 to ptr
  %i.chr = load atomic volatile i64, ptr %i.chq monotonic, align 8 ; 4 uses
  %i.chs = and i64 %i.chr, 3                      ; 2 uses
  %i.cht = icmp eq i64 %i.chs, 1
  br i1 %i.cht, label %bb.iq, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685

bb.iq:                                            ; preds = %.lr.ph.i.i683
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i684, i64 %i.chr)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685: ; preds = %.lr.ph.i.i683
  %i.chu = icmp eq i64 %i.chs, 3
  %i.chv = and i64 %i.chr, 4294967295
  %i.chw = icmp ne i64 %i.chv, 3
  %i.chx = and i1 %i.chu, %i.chw
  br i1 %i.chx, label %bb.ir, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686

bb.ir:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685
  %i.chy = and i64 %i.chr, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i684, i64 %i.chy)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i686: ; preds = %bb.ir, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685, %bb.iq
  %i.chz = add i64 %.sroa.018.030.i.i684, 8       ; 2 uses
  %i.cia = icmp ult i64 %i.chz, %i.cho
  br i1 %i.cia, label %.lr.ph.i.i683, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !17

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cib = add i64 %.sroa.08.0.copyload, 7
  %i.cic = inttoptr i64 %i.cib to ptr             ; 9 uses
  %i.cid = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !382
  %i.cie = add i64 %.sroa.08.0.copyload, 23
  %i.cif = inttoptr i64 %i.cie to ptr
  %i.cig = load i64, ptr %i.cif, align 8, !noalias !383 ; 2 uses
  %i.cih = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !384
  %i.cii = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !385
  %i.cij = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !386
  %i.cik = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !387
  %i.cil = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !388
  %i.cim = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !389
  %i.cin = and i32 %i.cim, 15
  %i.cio = icmp eq i32 %i.cin, 5
  br i1 %i.cio, label %bb.is, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.is:                                            ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.cip = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !390
  %i.ciq = and i32 %i.cip, 15
  %i.cir = icmp eq i32 %i.ciq, 5
  br i1 %i.cir, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.cis = add i64 %.sroa.08.0.copyload, 47
  %i.cit = inttoptr i64 %i.cis to ptr
  %i.ciu = load i64, ptr %i.cit, align 8, !noalias !389
  %i.civ = ashr i64 %i.ciu, 32
  %i.ciw = mul nsw i64 %i.civ, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.iu:                                            ; preds = %bb.is
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !389
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.it
  %storemerge.i.i.i.i = phi i64 [ %i.ciw, %bb.it ], [ 0, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ]
  %i.cix = and i32 %i.cil, 15
  %i.ciy = icmp eq i32 %i.cix, 5
  %i.ciz = select i1 %i.ciy, i64 8, i64 0
  %18 = ashr i64 %i.cig, 29
  %19 = and i64 %18, -8                           ; 2 uses
  %i.cja = and i32 %i.cid, 15
  %i.cjb = icmp eq i32 %i.cja, 5
  %i.cjc = select i1 %i.cjb, i64 56, i64 48
  %i.cjd = add nsw i64 %19, %i.cjc
  %20 = icmp sgt i64 %i.cig, 322122547199
  %i.cje = select i1 %20, i64 8, i64 %19
  %i.cjf = add nsw i64 %i.cjd, %i.cje
  %i.cjg = lshr i32 %i.cih, 7
  %i.cjh = and i32 %i.cjg, 8
  %i.cji = zext nneg i32 %i.cjh to i64
  %i.cjj = add nsw i64 %i.cjf, %i.cji
  %i.cjk = and i32 %i.cii, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cjk, 0
  %i.cjl = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.cjm = add nsw i64 %i.cjj, %i.cjl
  %i.cjn = lshr i32 %i.cij, 11
  %i.cjo = and i32 %i.cjn, 8
  %i.cjp = zext nneg i32 %i.cjo to i64
  %i.cjq = add nsw i64 %i.cjm, %i.cjp
  %i.cjr = lshr i32 %i.cik, 19
  %i.cjs = and i32 %i.cjr, 8
  %i.cjt = zext nneg i32 %i.cjs to i64
  %i.cju = add nsw i64 %i.cjq, %i.cjt
  %i.cjv = add nsw i64 %i.cju, %i.ciz
  %i.cjw = add nsw i64 %i.cjv, %storemerge.i.i.i.i
  %i.cjx = load atomic volatile i32, ptr %i.cic monotonic, align 4, !noalias !391
  %i.cjy = trunc i64 %i.cjw to i32
  %i.cjz = lshr i32 %i.cjx, 1
  %i.cka = and i32 %i.cjz, 8
  %i.ckb = add nsw i32 %i.cka, %i.cjy
  %i.ckc = add i64 %.sroa.08.0.copyload, -1
  %i.ckd = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.cke = sext i32 %i.ckb to i64                 ; 3 uses
  %i.ckf = add i64 %i.ckc, %i.cke                 ; 2 uses
  %i.ckg = icmp ult i64 %i.ckd, %i.ckf
  br i1 %i.ckg, label %.lr.ph.i.i689, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i689:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i691
  %.sroa.021.028.i.i690 = phi i64 [ %i.ckk, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i691 ], [ %i.ckd, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ckh = inttoptr i64 %.sroa.021.028.i.i690 to ptr
  %i.cki = load atomic volatile i64, ptr %i.ckh monotonic, align 8 ; 2 uses
  %i.ckj = trunc i64 %i.cki to i1
  br i1 %i.ckj, label %bb.iv, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i691

bb.iv:                                            ; preds = %.lr.ph.i.i689
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i690, i64 %i.cki)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i691

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i691: ; preds = %bb.iv, %.lr.ph.i.i689
  %i.ckk = add i64 %.sroa.021.028.i.i690, 8       ; 2 uses
  %i.ckl = icmp ult i64 %i.ckk, %i.ckf
  br i1 %i.ckl, label %.lr.ph.i.i689, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

bb.iw:                                            ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.ckn = load i32, ptr %i.ckm, align 8
  %i.cko = and i32 %i.ckn, 3                      ; 3 uses
  %i.ckp = add i64 %.sroa.08.0.copyload, 11
  %i.ckq = inttoptr i64 %i.ckp to ptr             ; 3 uses
  %i.ckr = add i64 %.sroa.08.0.copyload, 9
  %i.cks = inttoptr i64 %i.ckr to ptr             ; 2 uses
  %i.ckt = add i64 %.sroa.08.0.copyload, 7
  %i.cku = inttoptr i64 %i.ckt to ptr             ; 2 uses
  br label %bb.ix

bb.ix:                                            ; preds = %.backedge, %bb.iw
  %i.ckv = load atomic volatile i32, ptr %i.ckq monotonic, align 4 ; 5 uses
  %i.ckw = trunc i32 %i.ckv to i16
  %i.ckx = lshr i16 %i.ckw, 2                     ; 2 uses
  %i.cky = lshr i32 %i.ckv, 16                    ; 2 uses
  %i.ckz = and i32 %i.ckv, 3
  %.not.i698 = icmp eq i32 %i.cko, %i.ckz
  br i1 %.not.i698, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cla = zext nneg i16 %i.ckx to i32
  %i.clb = add nuw nsw i32 %i.cky, %i.cla         ; 3 uses
  %i.clc = icmp eq i32 %i.clb, 0
  br i1 %i.clc, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.cld = load atomic volatile i16, ptr %i.cks monotonic, align 2
  %.not18.i = icmp eq i16 %i.cld, 0
  %..i699 = select i1 %.not18.i, ptr %i.cku, ptr %i.cks
  %i.cle = load atomic volatile i16, ptr %..i699 monotonic, align 2 ; 2 uses
  %i.clf = zext i16 %i.cle to i32
  %i.clg = shl nuw nsw i32 %i.clf, 2
  %i.clh = or disjoint i32 %i.clg, %i.cko
  %i.cli = cmpxchg volatile ptr %i.ckq, i32 %i.ckv, i32 %i.clh acq_rel acquire, align 4
  %i.clj = extractvalue { i32, i1 } %i.cli, 1
  br i1 %i.clj, label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit, label %.backedge, !llvm.loop !24

bb.ja:                                            ; preds = %bb.iy
  %i.clk = icmp eq i32 %i.cky, 0
  br i1 %i.clk, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2423, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.cll = shl nuw nsw i32 %i.clb, 2
  %i.clm = and i32 %i.cll, 262140
  %i.cln = or disjoint i32 %i.clm, %i.cko
  %i.clo = cmpxchg volatile ptr %i.ckq, i32 %i.ckv, i32 %i.cln acq_rel acquire, align 4
  %i.clp = extractvalue { i32, i1 } %i.clo, 1
  br i1 %i.clp, label %.split.loop.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.jb, %bb.iz
  br label %bb.ix, !llvm.loop !24

.split.loop.exit.i:                               ; preds = %bb.jb
  %i.clq = trunc i32 %i.clb to i16
  br label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit

_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit: ; preds = %bb.iz, %.split.loop.exit.i
  %.sroa.035.0.insert.ext.pre-phi.i = phi i16 [ %i.ckx, %.split.loop.exit.i ], [ 0, %bb.iz ] ; 3 uses
  %.sroa.4.2.ph.i = phi i16 [ %i.clq, %.split.loop.exit.i ], [ %i.cle, %bb.iz ] ; 2 uses
  %.not.i111 = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, %.sroa.4.2.ph.i
  br i1 %.not.i111, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2423, label %bb.jc

bb.jc:                                            ; preds = %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.2.ph.i to i64
  %i.clr = zext nneg i16 %.sroa.035.0.insert.ext.pre-phi.i to i64
  %i.cls = mul nuw nsw i64 %i.clr, 24
  %i.clt = add i64 %.sroa.08.0.copyload, 31       ; 4 uses
  %i.clu = add i64 %i.clt, %i.cls                 ; 2 uses
  %i.clv = mul nuw nsw i64 %.sroa.4.0.insert.ext.i, 24
  %i.clw = add i64 %i.clt, %i.clv                 ; 2 uses
  %i.clx = icmp ult i64 %i.clu, %i.clw
  br i1 %i.clx, label %.lr.ph2660, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i

.lr.ph2660:                                       ; preds = %bb.jc, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703
  %.sroa.01578.02658 = phi i64 [ %i.cmh, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703 ], [ %i.clu, %bb.jc ] ; 4 uses
  %i.cly = inttoptr i64 %.sroa.01578.02658 to ptr
  %i.clz = load atomic volatile i64, ptr %i.cly monotonic, align 8 ; 4 uses
  %i.cma = and i64 %i.clz, 3                      ; 2 uses
  %i.cmb = icmp eq i64 %i.cma, 1
  br i1 %i.cmb, label %bb.jd, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit702

bb.jd:                                            ; preds = %.lr.ph2660
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.01578.02658, i64 %i.clz)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit702: ; preds = %.lr.ph2660
  %i.cmc = icmp eq i64 %i.cma, 3
  %i.cmd = and i64 %i.clz, 4294967295
  %i.cme = icmp ne i64 %i.cmd, 3
  %i.cmf = and i1 %i.cmc, %i.cme
  br i1 %i.cmf, label %bb.je, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703

bb.je:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit702
  %i.cmg = and i64 %i.clz, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.01578.02658, i64 %i.cmg)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703: ; preds = %bb.jd, %bb.je, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit702
  %i.cmh = add i64 %.sroa.01578.02658, 8          ; 2 uses
  %i.cmi = icmp ult i64 %i.cmh, %i.clw
  br i1 %i.cmi, label %.lr.ph2660, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i, !llvm.loop !17

_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit703, %bb.jc
  %i.cmj = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, 0
  br i1 %i.cmj, label %bb.jf, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2423

bb.jf:                                            ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i
  %i.cmk = load i16, ptr %i.cku, align 2
  %i.cml = zext i16 %i.cmk to i64
  %i.cmm = mul nuw nsw i64 %i.cml, 24
  %i.cmn = add nuw nsw i64 %i.cmm, 32             ; 2 uses
  %i.cmo = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cmp = icmp ult i64 %i.cmo, %i.clt
  br i1 %i.cmp, label %.lr.ph2663, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph2663:                                       ; preds = %bb.jf, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit706
  %.sroa.01564.02661 = phi i64 [ %i.cmt, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit706 ], [ %i.cmo, %bb.jf ] ; 3 uses
  %i.cmq = inttoptr i64 %.sroa.01564.02661 to ptr
  %i.cmr = load atomic volatile i64, ptr %i.cmq monotonic, align 8 ; 2 uses
  %i.cms = trunc i64 %i.cmr to i1
  br i1 %i.cms, label %bb.jg, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit706

bb.jg:                                            ; preds = %.lr.ph2663
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %.sroa.01564.02661, i64 %i.cmr)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit706

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit706: ; preds = %bb.jg, %.lr.ph2663
  %i.cmt = add i64 %.sroa.01564.02661, 8          ; 2 uses
  %i.cmu = icmp ult i64 %i.cmt, %i.clt
  br i1 %i.cmu, label %.lr.ph2663, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cmv = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.cmw = inttoptr i64 %i.cmv to ptr
  %i.cmx = load atomic volatile i64, ptr %i.cmw monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gf, i64 %.sroa.08.0.copyload, i64 %i.cmv, i64 %i.cmx)
  %i.cmy = add i64 %.sroa.08.0.copyload, 7
  %i.cmz = inttoptr i64 %i.cmy to ptr
  %i.cna = load atomic volatile i16, ptr %i.cmz monotonic, align 2
  %i.cnb = sext i16 %i.cna to i64
  %i.cnc = mul nsw i64 %i.cnb, 24
  %i.cnd = add nsw i64 %i.cnc, 32                 ; 3 uses
  %i.cne = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cnf = add i64 %i.cmv, %i.cnd                 ; 2 uses
  %i.cng = icmp ult i64 %i.cne, %i.cnf
  br i1 %i.cng, label %.lr.ph.i.i707, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i707:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i710
  %.sroa.018.030.i.i708 = phi i64 [ %i.cnq, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i710 ], [ %i.cne, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cnh = inttoptr i64 %.sroa.018.030.i.i708 to ptr
  %i.cni = load atomic volatile i64, ptr %i.cnh monotonic, align 8 ; 4 uses
end_hunk_3
