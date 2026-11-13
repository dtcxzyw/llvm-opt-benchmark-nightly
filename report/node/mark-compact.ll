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
  %i.yp = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !598
  %i.yq = add i64 %.sroa.2867.02842, 24
  %i.yr = inttoptr i64 %i.yq to ptr
  %i.ys = load i64, ptr %i.yr, align 8, !noalias !599 ; 2 uses
  %i.yt = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !600
  %i.yu = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !601
  %i.yv = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !602
  %i.yw = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !603
  %i.yx = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !604
  %i.yy = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !605
  %i.yz = and i32 %i.yy, 15
  %i.za = icmp eq i32 %i.yz, 5
  br i1 %i.za, label %bb.ea, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.ea:                                            ; preds = %bb.dz
  %i.zb = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !606
  %i.zc = and i32 %i.zb, 15
  %i.zd = icmp eq i32 %i.zc, 5
  br i1 %i.zd, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ze = add i64 %.sroa.2867.02842, 48
  %i.zf = inttoptr i64 %i.ze to ptr
  %i.zg = load i64, ptr %i.zf, align 8, !noalias !605
  %i.zh = ashr i64 %i.zg, 32
  %i.zi = mul nsw i64 %i.zh, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.ec:                                            ; preds = %bb.ea
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !605
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
  %i.aaj = load atomic volatile i32, ptr %i.yo monotonic, align 4, !noalias !607
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
  %i.bhr = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !608
  %i.bhs = add i64 %storemerge2847, 23
  %i.bht = inttoptr i64 %i.bhs to ptr
  %i.bhu = load i64, ptr %i.bht, align 8, !noalias !609 ; 2 uses
  %i.bhv = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !610
  %i.bhw = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !611
  %i.bhx = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !612
  %i.bhy = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !613
  %i.bhz = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !614
  %i.bia = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !615
  %i.bib = and i32 %i.bia, 15
  %i.bic = icmp eq i32 %i.bib, 5
  br i1 %i.bic, label %bb.lh, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761

bb.lh:                                            ; preds = %bb.lg
  %i.bid = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !616
  %i.bie = and i32 %i.bid, 15
  %i.bif = icmp eq i32 %i.bie, 5
  br i1 %i.bif, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.big = add i64 %storemerge2847, 47
  %i.bih = inttoptr i64 %i.big to ptr
  %i.bii = load i64, ptr %i.bih, align 8, !noalias !615
  %i.bij = ashr i64 %i.bii, 32
  %i.bik = mul nsw i64 %i.bij, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit761

bb.lj:                                            ; preds = %bb.lh
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !615
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
  %i.bjl = load atomic volatile i32, ptr %i.bhq monotonic, align 4, !noalias !617
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
  %i.caf = inttoptr i64 %i.cae to ptr
  %i.cag = load atomic volatile i64, ptr %i.caf monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cae, i64 %i.cag)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE13EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cah = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cai = inttoptr i64 %i.cah to ptr
  %i.caj = load atomic volatile i64, ptr %i.cai monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cah, i64 %i.caj)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE14EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cak = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cal = inttoptr i64 %i.cak to ptr
  %i.cam = load atomic volatile i64, ptr %i.cal monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cak, i64 %i.cam)
  %i.can = add i64 %.sroa.08.0.copyload, 7
  %i.cao = inttoptr i64 %i.can to ptr
  %i.cap = load i32, ptr %i.cao, align 4
  %i.caq = shl nsw i32 %i.cap, 2
  %i.car = and i32 %i.caq, -8
  %i.cas = add i32 %i.car, 16
  %i.cat = sext i32 %i.cas to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE15EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cau = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cav = inttoptr i64 %i.cau to ptr
  %i.caw = load atomic volatile i64, ptr %i.cav monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cau, i64 %i.caw)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE16EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cax = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cay = inttoptr i64 %i.cax to ptr
  %i.caz = load atomic volatile i64, ptr %i.cay monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cax, i64 %i.caz)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE17EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cba = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbb = inttoptr i64 %i.cba to ptr
  %i.cbc = load atomic volatile i64, ptr %i.cbb monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cba, i64 %i.cbc)
  %i.cbd = add i64 %.sroa.08.0.copyload, 7
  %i.cbe = inttoptr i64 %i.cbd to ptr
  %i.cbf = load i32, ptr %i.cbe, align 4
  %i.cbg = shl i32 %i.cbf, 3
  %i.cbh = add i32 %i.cbg, 16
  %i.cbi = sext i32 %i.cbh to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE18EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbj = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbk = inttoptr i64 %i.cbj to ptr
  %i.cbl = load atomic volatile i64, ptr %i.cbk monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbj, i64 %i.cbl)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE19EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbm = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbn = inttoptr i64 %i.cbm to ptr
  %i.cbo = load atomic volatile i64, ptr %i.cbn monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbm, i64 %i.cbo)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE20EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cbp = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbq = inttoptr i64 %i.cbp to ptr
  %i.cbr = load atomic volatile i64, ptr %i.cbq monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cbp, i64 %i.cbr)
  %i.cbs = add i64 %.sroa.08.0.copyload, 11
  %i.cbt = inttoptr i64 %i.cbs to ptr
  %i.cbu = load i32, ptr %i.cbt, align 4
  %i.cbv = shl nsw i32 %i.cbu, 3
  %i.cbw = add nsw i32 %i.cbv, 16
  %i.cbx = sext i32 %i.cbw to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE21EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cby = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cbz = inttoptr i64 %i.cby to ptr
  %i.cca = load atomic volatile i64, ptr %i.cbz monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cby, i64 %i.cca)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE22EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ccb = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.ccc = inttoptr i64 %i.ccb to ptr
  %i.ccd = load atomic volatile i64, ptr %i.ccc monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.ccb, i64 %i.ccd)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cce = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.ccf = inttoptr i64 %i.cce to ptr
  %i.ccg = load atomic volatile i64, ptr %i.ccf monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cce, i64 %i.ccg)
  %i.cch = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.cci = inttoptr i64 %i.cch to ptr
  %i.ccj = load i64, ptr %i.cci, align 8
  %i.cck = shl i64 %i.ccj, 3
  %i.ccl = and i64 %i.cck, -34359738368
  %sext2365 = add i64 %i.ccl, 68719476736
  %i.ccm = ashr exact i64 %sext2365, 32           ; 3 uses
  %i.ccn = add i64 %i.cce, %i.ccm                 ; 2 uses
  %i.cco = icmp ult i64 %i.cch, %i.ccn
  br i1 %i.cco, label %.lr.ph.i.i631, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i631:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633
  %.sroa.021.028.i.i632 = phi i64 [ %i.ccs, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633 ], [ %i.cch, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ccp = inttoptr i64 %.sroa.021.028.i.i632 to ptr
  %i.ccq = load atomic volatile i64, ptr %i.ccp monotonic, align 8 ; 2 uses
  %i.ccr = trunc i64 %i.ccq to i1
  br i1 %i.ccr, label %bb.ht, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633

bb.ht:                                            ; preds = %.lr.ph.i.i631
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i632, i64 %i.ccq)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i633: ; preds = %bb.ht, %.lr.ph.i.i631
  %i.ccs = add i64 %.sroa.021.028.i.i632, 8       ; 2 uses
  %i.cct = icmp ult i64 %i.ccs, %i.ccn
  br i1 %i.cct, label %.lr.ph.i.i631, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ccu = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.ccv = inttoptr i64 %i.ccu to ptr
  %i.ccw = load atomic volatile i64, ptr %i.ccv monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.ccu, i64 %i.ccw)
  %i.ccx = add i64 %.sroa.08.0.copyload, 7        ; 2 uses
  %i.ccy = add i64 %.sroa.08.0.copyload, 31       ; 2 uses
  %i.ccz = icmp ult i64 %i.ccx, %i.ccy
  br i1 %i.ccz, label %.lr.ph.i.i.i635, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph.i.i.i635:                                  ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637
  %.sroa.021.028.i.i.i636 = phi i64 [ %i.cdd, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637 ], [ %i.ccx, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.cda = inttoptr i64 %.sroa.021.028.i.i.i636 to ptr
  %i.cdb = load atomic volatile i64, ptr %i.cda monotonic, align 8 ; 2 uses
  %i.cdc = trunc i64 %i.cdb to i1
  br i1 %i.cdc, label %bb.hu, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637

bb.hu:                                            ; preds = %.lr.ph.i.i.i635
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i.i636, i64 %i.cdb)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i637: ; preds = %bb.hu, %.lr.ph.i.i.i635
  %i.cdd = add i64 %.sroa.021.028.i.i.i636, 8     ; 2 uses
  %i.cde = icmp ult i64 %i.cdd, %i.ccy
  br i1 %i.cde, label %.lr.ph.i.i.i635, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cdf = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.cdg = inttoptr i64 %i.cdf to ptr
  %i.cdh = load atomic volatile i64, ptr %i.cdg monotonic, align 8
  %i.cdi = add i64 %.sroa.08.0.copyload, -1
  %i.cdj = shl i64 %i.cdh, 3
  %i.cdk = and i64 %i.cdj, -34359738368
  %sext2364 = add i64 %i.cdk, 103079215104
  %i.cdl = ashr exact i64 %sext2364, 32           ; 3 uses
  %i.cdm = add i64 %i.cdi, %i.cdl                 ; 2 uses
  %i.cdn = icmp ult i64 %i.cdf, %i.cdm
  br i1 %i.cdn, label %.lr.ph.i.i640, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i640:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643
  %.sroa.018.030.i.i641 = phi i64 [ %i.cdx, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643 ], [ %i.cdf, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cdo = inttoptr i64 %.sroa.018.030.i.i641 to ptr
  %i.cdp = load atomic volatile i64, ptr %i.cdo monotonic, align 8 ; 4 uses
  %i.cdq = and i64 %i.cdp, 3                      ; 2 uses
  %i.cdr = icmp eq i64 %i.cdq, 1
  br i1 %i.cdr, label %bb.hv, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642

bb.hv:                                            ; preds = %.lr.ph.i.i640
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i641, i64 %i.cdp)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642: ; preds = %.lr.ph.i.i640
  %i.cds = icmp eq i64 %i.cdq, 3
  %i.cdt = and i64 %i.cdp, 4294967295
  %i.cdu = icmp ne i64 %i.cdt, 3
  %i.cdv = and i1 %i.cds, %i.cdu
  br i1 %i.cdv, label %bb.hw, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

bb.hw:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642
  %i.cdw = and i64 %i.cdp, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i641, i64 %i.cdw)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i643: ; preds = %bb.hw, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i642, %bb.hv
  %i.cdx = add i64 %.sroa.018.030.i.i641, 8       ; 2 uses
  %i.cdy = icmp ult i64 %i.cdx, %i.cdm
  br i1 %i.cdy, label %.lr.ph.i.i640, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !17

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cdz = add i64 %.sroa.08.0.copyload, 7
  %i.cea = inttoptr i64 %i.cdz to ptr             ; 9 uses
  %i.ceb = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !650
  %i.cec = add i64 %.sroa.08.0.copyload, 23
  %i.ced = inttoptr i64 %i.cec to ptr
  %i.cee = load i64, ptr %i.ced, align 8, !noalias !651 ; 2 uses
  %i.cef = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !652
  %i.ceg = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !653
  %i.ceh = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !654
  %i.cei = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !655
  %i.cej = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !656
  %i.cek = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !657
  %i.cel = and i32 %i.cek, 15
  %i.cem = icmp eq i32 %i.cel, 5
  br i1 %i.cem, label %bb.hx, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.hx:                                            ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.cen = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !658
  %i.ceo = and i32 %i.cen, 15
  %i.cep = icmp eq i32 %i.ceo, 5
  br i1 %i.cep, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.ceq = add i64 %.sroa.08.0.copyload, 47
  %i.cer = inttoptr i64 %i.ceq to ptr
  %i.ces = load i64, ptr %i.cer, align 8, !noalias !657
  %i.cet = ashr i64 %i.ces, 32
  %i.ceu = mul nsw i64 %i.cet, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.hz:                                            ; preds = %bb.hx
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !657
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.hy
  %storemerge.i.i.i.i = phi i64 [ %i.ceu, %bb.hy ], [ 0, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ]
  %i.cev = and i32 %i.cej, 15
  %i.cew = icmp eq i32 %i.cev, 5
  %i.cex = select i1 %i.cew, i64 8, i64 0
  %18 = ashr i64 %i.cee, 29
  %19 = and i64 %18, -8                           ; 2 uses
  %i.cey = and i32 %i.ceb, 15
  %i.cez = icmp eq i32 %i.cey, 5
  %i.cfa = select i1 %i.cez, i64 56, i64 48
  %i.cfb = add nsw i64 %19, %i.cfa
  %20 = icmp sgt i64 %i.cee, 322122547199
  %i.cfc = select i1 %20, i64 8, i64 %19
  %i.cfd = add nsw i64 %i.cfb, %i.cfc
  %i.cfe = lshr i32 %i.cef, 7
  %i.cff = and i32 %i.cfe, 8
  %i.cfg = zext nneg i32 %i.cff to i64
  %i.cfh = add nsw i64 %i.cfd, %i.cfg
  %i.cfi = and i32 %i.ceg, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cfi, 0
  %i.cfj = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.cfk = add nsw i64 %i.cfh, %i.cfj
  %i.cfl = lshr i32 %i.ceh, 11
  %i.cfm = and i32 %i.cfl, 8
  %i.cfn = zext nneg i32 %i.cfm to i64
  %i.cfo = add nsw i64 %i.cfk, %i.cfn
  %i.cfp = lshr i32 %i.cei, 19
  %i.cfq = and i32 %i.cfp, 8
  %i.cfr = zext nneg i32 %i.cfq to i64
  %i.cfs = add nsw i64 %i.cfo, %i.cfr
  %i.cft = add nsw i64 %i.cfs, %i.cex
  %i.cfu = add nsw i64 %i.cft, %storemerge.i.i.i.i
  %i.cfv = load atomic volatile i32, ptr %i.cea monotonic, align 4, !noalias !659
  %i.cfw = trunc i64 %i.cfu to i32
  %i.cfx = lshr i32 %i.cfv, 1
  %i.cfy = and i32 %i.cfx, 8
  %i.cfz = add nsw i32 %i.cfy, %i.cfw
  %i.cga = add i64 %.sroa.08.0.copyload, -1
  %i.cgb = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.cgc = sext i32 %i.cfz to i64                 ; 3 uses
  %i.cgd = add i64 %i.cga, %i.cgc                 ; 2 uses
  %i.cge = icmp ult i64 %i.cgb, %i.cgd
  br i1 %i.cge, label %.lr.ph.i.i646, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i646:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648
  %.sroa.021.028.i.i647 = phi i64 [ %i.cgi, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648 ], [ %i.cgb, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.cgf = inttoptr i64 %.sroa.021.028.i.i647 to ptr
  %i.cgg = load atomic volatile i64, ptr %i.cgf monotonic, align 8 ; 2 uses
  %i.cgh = trunc i64 %i.cgg to i1
  br i1 %i.cgh, label %bb.ia, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648

bb.ia:                                            ; preds = %.lr.ph.i.i646
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i647, i64 %i.cgg)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i648: ; preds = %bb.ia, %.lr.ph.i.i646
  %i.cgi = add i64 %.sroa.021.028.i.i647, 8       ; 2 uses
  %i.cgj = icmp ult i64 %i.cgi, %i.cgd
  br i1 %i.cgj, label %.lr.ph.i.i646, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

bb.ib:                                            ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cgl = load i32, ptr %i.cgk, align 8
  %i.cgm = and i32 %i.cgl, 3                      ; 3 uses
  %i.cgn = add i64 %.sroa.08.0.copyload, 11
  %i.cgo = inttoptr i64 %i.cgn to ptr             ; 3 uses
  %i.cgp = add i64 %.sroa.08.0.copyload, 9
  %i.cgq = inttoptr i64 %i.cgp to ptr             ; 2 uses
  %i.cgr = add i64 %.sroa.08.0.copyload, 7
  %i.cgs = inttoptr i64 %i.cgr to ptr             ; 2 uses
  br label %bb.ic

bb.ic:                                            ; preds = %.backedge, %bb.ib
  %i.cgt = load atomic volatile i32, ptr %i.cgo monotonic, align 4 ; 5 uses
  %i.cgu = trunc i32 %i.cgt to i16
  %i.cgv = lshr i16 %i.cgu, 2                     ; 2 uses
  %i.cgw = lshr i32 %i.cgt, 16                    ; 2 uses
  %i.cgx = and i32 %i.cgt, 3
  %.not.i655 = icmp eq i32 %i.cgm, %i.cgx
  br i1 %.not.i655, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.cgy = zext nneg i16 %i.cgv to i32
  %i.cgz = add nuw nsw i32 %i.cgw, %i.cgy         ; 3 uses
  %i.cha = icmp eq i32 %i.cgz, 0
  br i1 %i.cha, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.chb = load atomic volatile i16, ptr %i.cgq monotonic, align 2
  %.not18.i = icmp eq i16 %i.chb, 0
  %..i656 = select i1 %.not18.i, ptr %i.cgs, ptr %i.cgq
  %i.chc = load atomic volatile i16, ptr %..i656 monotonic, align 2 ; 2 uses
  %i.chd = zext i16 %i.chc to i32
  %i.che = shl nuw nsw i32 %i.chd, 2
  %i.chf = or disjoint i32 %i.che, %i.cgm
  %i.chg = cmpxchg volatile ptr %i.cgo, i32 %i.cgt, i32 %i.chf acq_rel acquire, align 4
  %i.chh = extractvalue { i32, i1 } %i.chg, 1
  br i1 %i.chh, label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit, label %.backedge, !llvm.loop !24

bb.if:                                            ; preds = %bb.id
  %i.chi = icmp eq i32 %i.cgw, 0
  br i1 %i.chi, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.chj = shl nuw nsw i32 %i.cgz, 2
  %i.chk = and i32 %i.chj, 262140
  %i.chl = or disjoint i32 %i.chk, %i.cgm
  %i.chm = cmpxchg volatile ptr %i.cgo, i32 %i.cgt, i32 %i.chl acq_rel acquire, align 4
  %i.chn = extractvalue { i32, i1 } %i.chm, 1
  br i1 %i.chn, label %.split.loop.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.ig, %bb.ie
  br label %bb.ic

.split.loop.exit.i:                               ; preds = %bb.ig
  %i.cho = trunc i32 %i.cgz to i16
  br label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit

_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit: ; preds = %bb.ie, %.split.loop.exit.i
  %.sroa.035.0.insert.ext.pre-phi.i = phi i16 [ %i.cgv, %.split.loop.exit.i ], [ 0, %bb.ie ] ; 3 uses
  %.sroa.4.2.ph.i = phi i16 [ %i.cho, %.split.loop.exit.i ], [ %i.chc, %bb.ie ] ; 2 uses
  %.not.i93 = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, %.sroa.4.2.ph.i
  br i1 %.not.i93, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347, label %bb.ih

bb.ih:                                            ; preds = %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.2.ph.i to i64
  %i.chp = zext nneg i16 %.sroa.035.0.insert.ext.pre-phi.i to i64
  %i.chq = mul nuw nsw i64 %i.chp, 24
  %i.chr = add i64 %.sroa.08.0.copyload, 31       ; 4 uses
  %i.chs = add i64 %i.chr, %i.chq                 ; 2 uses
  %i.cht = mul nuw nsw i64 %.sroa.4.0.insert.ext.i, 24
  %i.chu = add i64 %i.chr, %i.cht                 ; 2 uses
  %i.chv = icmp ult i64 %i.chs, %i.chu
  br i1 %i.chv, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i

.lr.ph:                                           ; preds = %bb.ih, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660
  %.sroa.01510.02562 = phi i64 [ %i.cif, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660 ], [ %i.chs, %bb.ih ] ; 4 uses
  %i.chw = inttoptr i64 %.sroa.01510.02562 to ptr
  %i.chx = load atomic volatile i64, ptr %i.chw monotonic, align 8 ; 4 uses
  %i.chy = and i64 %i.chx, 3                      ; 2 uses
  %i.chz = icmp eq i64 %i.chy, 1
  br i1 %i.chz, label %bb.ii, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659

bb.ii:                                            ; preds = %.lr.ph
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01510.02562, i64 %i.chx)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659: ; preds = %.lr.ph
  %i.cia = icmp eq i64 %i.chy, 3
  %i.cib = and i64 %i.chx, 4294967295
  %i.cic = icmp ne i64 %i.cib, 3
  %i.cid = and i1 %i.cia, %i.cic
  br i1 %i.cid, label %bb.ij, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

bb.ij:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659
  %i.cie = and i64 %i.chx, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01510.02562, i64 %i.cie)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660: ; preds = %bb.ii, %bb.ij, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit659
  %i.cif = add i64 %.sroa.01510.02562, 8          ; 2 uses
  %i.cig = icmp ult i64 %i.cif, %i.chu
  br i1 %i.cig, label %.lr.ph, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i, !llvm.loop !17

_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit660, %bb.ih
  %i.cih = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, 0
  br i1 %i.cih, label %bb.ik, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2347

bb.ik:                                            ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i
  %i.cii = load i16, ptr %i.cgs, align 2
  %i.cij = zext i16 %i.cii to i64
  %i.cik = mul nuw nsw i64 %i.cij, 24
  %i.cil = add nuw nsw i64 %i.cik, 32             ; 2 uses
  %i.cim = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cin = icmp ult i64 %i.cim, %i.chr
  br i1 %i.cin, label %.lr.ph2564, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph2564:                                       ; preds = %bb.ik, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663
  %.sroa.01496.02563 = phi i64 [ %i.cir, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663 ], [ %i.cim, %bb.ik ] ; 3 uses
  %i.cio = inttoptr i64 %.sroa.01496.02563 to ptr
  %i.cip = load atomic volatile i64, ptr %i.cio monotonic, align 8 ; 2 uses
  %i.ciq = trunc i64 %i.cip to i1
  br i1 %i.ciq, label %bb.il, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663

bb.il:                                            ; preds = %.lr.ph2564
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %.sroa.01496.02563, i64 %i.cip)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit663: ; preds = %bb.il, %.lr.ph2564
  %i.cir = add i64 %.sroa.01496.02563, 8          ; 2 uses
  %i.cis = icmp ult i64 %i.cir, %i.chr
  br i1 %i.cis, label %.lr.ph2564, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cit = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.ciu = inttoptr i64 %i.cit to ptr
  %i.civ = load atomic volatile i64, ptr %i.ciu monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.cb, i64 %.sroa.08.0.copyload, i64 %i.cit, i64 %i.civ)
  %i.ciw = add i64 %.sroa.08.0.copyload, 7
  %i.cix = inttoptr i64 %i.ciw to ptr
  %i.ciy = load atomic volatile i16, ptr %i.cix monotonic, align 2
  %i.ciz = sext i16 %i.ciy to i64
  %i.cja = mul nsw i64 %i.ciz, 24
  %i.cjb = add nsw i64 %i.cja, 32                 ; 3 uses
  %i.cjc = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cjd = add i64 %i.cit, %i.cjb                 ; 2 uses
  %i.cje = icmp ult i64 %i.cjc, %i.cjd
  br i1 %i.cje, label %.lr.ph.i.i664, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i664:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i667
  %.sroa.018.030.i.i665 = phi i64 [ %i.cjo, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i667 ], [ %i.cjc, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cjf = inttoptr i64 %.sroa.018.030.i.i665 to ptr
  %i.cjg = load atomic volatile i64, ptr %i.cjf monotonic, align 8 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal20MarkCompactCollector22ProcessMarkingWorklistILNS1_29MarkingWorklistProcessingModeE1EEESt4pairImmENS_4base9TimeDeltaEm:bb.a
  %i.cek = inttoptr i64 %i.cej to ptr
  %i.cel = load atomic volatile i64, ptr %i.cek monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cej, i64 %i.cel)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE13EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cem = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cen = inttoptr i64 %i.cem to ptr
  %i.ceo = load atomic volatile i64, ptr %i.cen monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cem, i64 %i.ceo)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE14EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cep = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.ceq = inttoptr i64 %i.cep to ptr
  %i.cer = load atomic volatile i64, ptr %i.ceq monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cep, i64 %i.cer)
  %i.ces = add i64 %.sroa.08.0.copyload, 7
  %i.cet = inttoptr i64 %i.ces to ptr
  %i.ceu = load i32, ptr %i.cet, align 4
  %i.cev = shl nsw i32 %i.ceu, 2
  %i.cew = and i32 %i.cev, -8
  %i.cex = add i32 %i.cew, 16
  %i.cey = sext i32 %i.cex to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE15EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cez = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfa = inttoptr i64 %i.cez to ptr
  %i.cfb = load atomic volatile i64, ptr %i.cfa monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cez, i64 %i.cfb)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE16EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfc = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfd = inttoptr i64 %i.cfc to ptr
  %i.cfe = load atomic volatile i64, ptr %i.cfd monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cfc, i64 %i.cfe)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE17EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cff = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfg = inttoptr i64 %i.cff to ptr
  %i.cfh = load atomic volatile i64, ptr %i.cfg monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cff, i64 %i.cfh)
  %i.cfi = add i64 %.sroa.08.0.copyload, 7
  %i.cfj = inttoptr i64 %i.cfi to ptr
  %i.cfk = load i32, ptr %i.cfj, align 4
  %i.cfl = shl i32 %i.cfk, 3
  %i.cfm = add i32 %i.cfl, 16
  %i.cfn = sext i32 %i.cfm to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE18EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfo = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfp = inttoptr i64 %i.cfo to ptr
  %i.cfq = load atomic volatile i64, ptr %i.cfp monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cfo, i64 %i.cfq)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE19EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfr = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfs = inttoptr i64 %i.cfr to ptr
  %i.cft = load atomic volatile i64, ptr %i.cfs monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cfr, i64 %i.cft)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE20EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cfu = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cfv = inttoptr i64 %i.cfu to ptr
  %i.cfw = load atomic volatile i64, ptr %i.cfv monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cfu, i64 %i.cfw)
  %i.cfx = add i64 %.sroa.08.0.copyload, 11
  %i.cfy = inttoptr i64 %i.cfx to ptr
  %i.cfz = load i32, ptr %i.cfy, align 4
  %i.cga = shl nsw i32 %i.cfz, 3
  %i.cgb = add nsw i32 %i.cga, 16
  %i.cgc = sext i32 %i.cgb to i64
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE21EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgd = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cge = inttoptr i64 %i.cgd to ptr
  %i.cgf = load atomic volatile i64, ptr %i.cge monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cgd, i64 %i.cgf)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE22EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgg = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cgh = inttoptr i64 %i.cgg to ptr
  %i.cgi = load atomic volatile i64, ptr %i.cgh monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cgg, i64 %i.cgi)
  br label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgj = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.cgk = inttoptr i64 %i.cgj to ptr
  %i.cgl = load atomic volatile i64, ptr %i.cgk monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cgj, i64 %i.cgl)
  %i.cgm = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.cgn = inttoptr i64 %i.cgm to ptr
  %i.cgo = load i64, ptr %i.cgn, align 8
  %i.cgp = shl i64 %i.cgo, 3
  %i.cgq = and i64 %i.cgp, -34359738368
  %sext2441 = add i64 %i.cgq, 68719476736
  %i.cgr = ashr exact i64 %sext2441, 32           ; 3 uses
  %i.cgs = add i64 %i.cgj, %i.cgr                 ; 2 uses
  %i.cgt = icmp ult i64 %i.cgm, %i.cgs
  br i1 %i.cgt, label %.lr.ph.i.i673, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i673:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i675
  %.sroa.021.028.i.i674 = phi i64 [ %i.cgx, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i675 ], [ %i.cgm, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE105EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.cgu = inttoptr i64 %.sroa.021.028.i.i674 to ptr
  %i.cgv = load atomic volatile i64, ptr %i.cgu monotonic, align 8 ; 2 uses
  %i.cgw = trunc i64 %i.cgv to i1
  br i1 %i.cgw, label %bb.io, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i675

bb.io:                                            ; preds = %.lr.ph.i.i673
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i674, i64 %i.cgv)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i675

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i675: ; preds = %bb.io, %.lr.ph.i.i673
  %i.cgx = add i64 %.sroa.021.028.i.i674, 8       ; 2 uses
  %i.cgy = icmp ult i64 %i.cgx, %i.cgs
  br i1 %i.cgy, label %.lr.ph.i.i673, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cgz = add i64 %.sroa.08.0.copyload, -1       ; 2 uses
  %i.cha = inttoptr i64 %i.cgz to ptr
  %i.chb = load atomic volatile i64, ptr %i.cha monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cgz, i64 %i.chb)
  %i.chc = add i64 %.sroa.08.0.copyload, 7        ; 2 uses
  %i.chd = add i64 %.sroa.08.0.copyload, 31       ; 2 uses
  %i.che = icmp ult i64 %i.chc, %i.chd
  br i1 %i.che, label %.lr.ph.i.i.i677, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph.i.i.i677:                                  ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i679
  %.sroa.021.028.i.i.i678 = phi i64 [ %i.chi, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i679 ], [ %i.chc, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE106EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.chf = inttoptr i64 %.sroa.021.028.i.i.i678 to ptr
  %i.chg = load atomic volatile i64, ptr %i.chf monotonic, align 8 ; 2 uses
  %i.chh = trunc i64 %i.chg to i1
  br i1 %i.chh, label %bb.ip, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i679

bb.ip:                                            ; preds = %.lr.ph.i.i.i677
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i.i678, i64 %i.chg)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i679

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i.i679: ; preds = %bb.ip, %.lr.ph.i.i.i677
  %i.chi = add i64 %.sroa.021.028.i.i.i678, 8     ; 2 uses
  %i.chj = icmp ult i64 %i.chi, %i.chd
  br i1 %i.chj, label %.lr.ph.i.i.i677, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.chk = add i64 %.sroa.08.0.copyload, 7        ; 3 uses
  %i.chl = inttoptr i64 %i.chk to ptr
  %i.chm = load atomic volatile i64, ptr %i.chl monotonic, align 8
  %i.chn = add i64 %.sroa.08.0.copyload, -1
  %i.cho = shl i64 %i.chm, 3
  %i.chp = and i64 %i.cho, -34359738368
  %sext2440 = add i64 %i.chp, 103079215104
  %i.chq = ashr exact i64 %sext2440, 32           ; 3 uses
  %i.chr = add i64 %i.chn, %i.chq                 ; 2 uses
  %i.chs = icmp ult i64 %i.chk, %i.chr
  br i1 %i.chs, label %.lr.ph.i.i682, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i682:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685
  %.sroa.018.030.i.i683 = phi i64 [ %i.cic, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685 ], [ %i.chk, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE107EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cht = inttoptr i64 %.sroa.018.030.i.i683 to ptr
  %i.chu = load atomic volatile i64, ptr %i.cht monotonic, align 8 ; 4 uses
  %i.chv = and i64 %i.chu, 3                      ; 2 uses
  %i.chw = icmp eq i64 %i.chv, 1
  br i1 %i.chw, label %bb.iq, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i684

bb.iq:                                            ; preds = %.lr.ph.i.i682
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i683, i64 %i.chu)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i684: ; preds = %.lr.ph.i.i682
  %i.chx = icmp eq i64 %i.chv, 3
  %i.chy = and i64 %i.chu, 4294967295
  %i.chz = icmp ne i64 %i.chy, 3
  %i.cia = and i1 %i.chx, %i.chz
  br i1 %i.cia, label %bb.ir, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685

bb.ir:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i684
  %i.cib = and i64 %i.chu, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.018.030.i.i683, i64 %i.cib)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i685: ; preds = %bb.ir, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i684, %bb.iq
  %i.cic = add i64 %.sroa.018.030.i.i683, 8       ; 2 uses
  %i.cid = icmp ult i64 %i.cic, %i.chr
  br i1 %i.cid, label %.lr.ph.i.i682, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !17

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cie = add i64 %.sroa.08.0.copyload, 7
  %i.cif = inttoptr i64 %i.cie to ptr             ; 9 uses
  %i.cig = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !703
  %i.cih = add i64 %.sroa.08.0.copyload, 23
  %i.cii = inttoptr i64 %i.cih to ptr
  %i.cij = load i64, ptr %i.cii, align 8, !noalias !704 ; 2 uses
  %i.cik = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !705
  %i.cil = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !706
  %i.cim = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !707
  %i.cin = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !708
  %i.cio = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !709
  %i.cip = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !710
  %i.ciq = and i32 %i.cip, 15
  %i.cir = icmp eq i32 %i.ciq, 5
  br i1 %i.cir, label %bb.is, label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.is:                                            ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit
  %i.cis = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !711
  %i.cit = and i32 %i.cis, 15
  %i.ciu = icmp eq i32 %i.cit, 5
  br i1 %i.ciu, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.civ = add i64 %.sroa.08.0.copyload, 47
  %i.ciw = inttoptr i64 %i.civ to ptr
  %i.cix = load i64, ptr %i.ciw, align 8, !noalias !710
  %i.ciy = ashr i64 %i.cix, 32
  %i.ciz = mul nsw i64 %i.ciy, 24
  br label %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit

bb.iu:                                            ; preds = %bb.is
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.231) #34, !noalias !710
  unreachable

_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %bb.it
  %storemerge.i.i.i.i = phi i64 [ %i.ciz, %bb.it ], [ 0, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE108EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ]
  %i.cja = and i32 %i.cio, 15
  %i.cjb = icmp eq i32 %i.cja, 5
  %i.cjc = select i1 %i.cjb, i64 8, i64 0
  %18 = ashr i64 %i.cij, 29
  %19 = and i64 %18, -8                           ; 2 uses
  %i.cjd = and i32 %i.cig, 15
  %i.cje = icmp eq i32 %i.cjd, 5
  %i.cjf = select i1 %i.cje, i64 56, i64 48
  %i.cjg = add nsw i64 %19, %i.cjf
  %20 = icmp sgt i64 %i.cij, 322122547199
  %i.cjh = select i1 %20, i64 8, i64 %19
  %i.cji = add nsw i64 %i.cjg, %i.cjh
  %i.cjj = lshr i32 %i.cik, 7
  %i.cjk = and i32 %i.cjj, 8
  %i.cjl = zext nneg i32 %i.cjk to i64
  %i.cjm = add nsw i64 %i.cji, %i.cjl
  %i.cjn = and i32 %i.cil, 12288
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cjn, 0
  %i.cjo = select i1 %.not.i.not.i.i.i.i.i.i.i, i64 0, i64 16
  %i.cjp = add nsw i64 %i.cjm, %i.cjo
  %i.cjq = lshr i32 %i.cim, 11
  %i.cjr = and i32 %i.cjq, 8
  %i.cjs = zext nneg i32 %i.cjr to i64
  %i.cjt = add nsw i64 %i.cjp, %i.cjs
  %i.cju = lshr i32 %i.cin, 19
  %i.cjv = and i32 %i.cju, 8
  %i.cjw = zext nneg i32 %i.cjv to i64
  %i.cjx = add nsw i64 %i.cjt, %i.cjw
  %i.cjy = add nsw i64 %i.cjx, %i.cjc
  %i.cjz = add nsw i64 %i.cjy, %storemerge.i.i.i.i
  %i.cka = load atomic volatile i32, ptr %i.cif monotonic, align 4, !noalias !712
  %i.ckb = trunc i64 %i.cjz to i32
  %i.ckc = lshr i32 %i.cka, 1
  %i.ckd = and i32 %i.ckc, 8
  %i.cke = add nsw i32 %i.ckd, %i.ckb
  %i.ckf = add i64 %.sroa.08.0.copyload, -1
  %i.ckg = add i64 %.sroa.08.0.copyload, 15       ; 2 uses
  %i.ckh = sext i32 %i.cke to i64                 ; 3 uses
  %i.cki = add i64 %i.ckf, %i.ckh                 ; 2 uses
  %i.ckj = icmp ult i64 %i.ckg, %i.cki
  br i1 %i.ckj, label %.lr.ph.i.i688, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i688:                                    ; preds = %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i690
  %.sroa.021.028.i.i689 = phi i64 [ %i.ckn, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i690 ], [ %i.ckg, %_ZN2v88internal9ScopeInfo14BodyDescriptor6SizeOfENS0_6TaggedINS0_3MapEEENS3_INS0_10HeapObjectEEE.exit ] ; 3 uses
  %i.ckk = inttoptr i64 %.sroa.021.028.i.i689 to ptr
  %i.ckl = load atomic volatile i64, ptr %i.ckk monotonic, align 8 ; 2 uses
  %i.ckm = trunc i64 %i.ckl to i1
  br i1 %i.ckm, label %bb.iv, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i690

bb.iv:                                            ; preds = %.lr.ph.i.i688
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.021.028.i.i689, i64 %i.ckl)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i690

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i690: ; preds = %bb.iv, %.lr.ph.i.i688
  %i.ckn = add i64 %.sroa.021.028.i.i689, 8       ; 2 uses
  %i.cko = icmp ult i64 %i.ckn, %i.cki
  br i1 %i.cko, label %.lr.ph.i.i688, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit, !llvm.loop !16

bb.iw:                                            ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.ckp = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.ckq = load i32, ptr %i.ckp, align 8
  %i.ckr = and i32 %i.ckq, 3                      ; 3 uses
  %i.cks = add i64 %.sroa.08.0.copyload, 11
  %i.ckt = inttoptr i64 %i.cks to ptr             ; 3 uses
  %i.cku = add i64 %.sroa.08.0.copyload, 9
  %i.ckv = inttoptr i64 %i.cku to ptr             ; 2 uses
  %i.ckw = add i64 %.sroa.08.0.copyload, 7
  %i.ckx = inttoptr i64 %i.ckw to ptr             ; 2 uses
  br label %bb.ix

bb.ix:                                            ; preds = %.backedge, %bb.iw
  %i.cky = load atomic volatile i32, ptr %i.ckt monotonic, align 4 ; 5 uses
  %i.ckz = trunc i32 %i.cky to i16
  %i.cla = lshr i16 %i.ckz, 2                     ; 2 uses
  %i.clb = lshr i32 %i.cky, 16                    ; 2 uses
  %i.clc = and i32 %i.cky, 3
  %.not.i697 = icmp eq i32 %i.ckr, %i.clc
  br i1 %.not.i697, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cld = zext nneg i16 %i.cla to i32
  %i.cle = add nuw nsw i32 %i.clb, %i.cld         ; 3 uses
  %i.clf = icmp eq i32 %i.cle, 0
  br i1 %i.clf, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.clg = load atomic volatile i16, ptr %i.ckv monotonic, align 2
  %.not18.i = icmp eq i16 %i.clg, 0
  %..i698 = select i1 %.not18.i, ptr %i.ckx, ptr %i.ckv
  %i.clh = load atomic volatile i16, ptr %..i698 monotonic, align 2 ; 2 uses
  %i.cli = zext i16 %i.clh to i32
  %i.clj = shl nuw nsw i32 %i.cli, 2
  %i.clk = or disjoint i32 %i.clj, %i.ckr
  %i.cll = cmpxchg volatile ptr %i.ckt, i32 %i.cky, i32 %i.clk acq_rel acquire, align 4
  %i.clm = extractvalue { i32, i1 } %i.cll, 1
  br i1 %i.clm, label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit, label %.backedge, !llvm.loop !24

bb.ja:                                            ; preds = %bb.iy
  %i.cln = icmp eq i32 %i.clb, 0
  br i1 %i.cln, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2422, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.clo = shl nuw nsw i32 %i.cle, 2
  %i.clp = and i32 %i.clo, 262140
  %i.clq = or disjoint i32 %i.clp, %i.ckr
  %i.clr = cmpxchg volatile ptr %i.ckt, i32 %i.cky, i32 %i.clq acq_rel acquire, align 4
  %i.cls = extractvalue { i32, i1 } %i.clr, 1
  br i1 %i.cls, label %.split.loop.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.jb, %bb.iz
  br label %bb.ix

.split.loop.exit.i:                               ; preds = %bb.jb
  %i.clt = trunc i32 %i.cle to i16
  br label %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit

_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit: ; preds = %bb.iz, %.split.loop.exit.i
  %.sroa.035.0.insert.ext.pre-phi.i = phi i16 [ %i.cla, %.split.loop.exit.i ], [ 0, %bb.iz ] ; 3 uses
  %.sroa.4.2.ph.i = phi i16 [ %i.clt, %.split.loop.exit.i ], [ %i.clh, %bb.iz ] ; 2 uses
  %.not.i111 = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, %.sroa.4.2.ph.i
  br i1 %.not.i111, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2422, label %bb.jc

bb.jc:                                            ; preds = %_ZN2v88internal27DescriptorArrayMarkingState28AcquireDescriptorRangeToMarkEjNS0_6TaggedINS0_15DescriptorArrayEEE.exit
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.2.ph.i to i64
  %i.clu = zext nneg i16 %.sroa.035.0.insert.ext.pre-phi.i to i64
  %i.clv = mul nuw nsw i64 %i.clu, 24
  %i.clw = add i64 %.sroa.08.0.copyload, 31       ; 4 uses
  %i.clx = add i64 %i.clw, %i.clv                 ; 2 uses
  %i.cly = mul nuw nsw i64 %.sroa.4.0.insert.ext.i, 24
  %i.clz = add i64 %i.clw, %i.cly                 ; 2 uses
  %i.cma = icmp ult i64 %i.clx, %i.clz
  br i1 %i.cma, label %.lr.ph2657, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i

.lr.ph2657:                                       ; preds = %bb.jc, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702
  %.sroa.01577.02655 = phi i64 [ %i.cmk, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702 ], [ %i.clx, %bb.jc ] ; 4 uses
  %i.cmb = inttoptr i64 %.sroa.01577.02655 to ptr
  %i.cmc = load atomic volatile i64, ptr %i.cmb monotonic, align 8 ; 4 uses
  %i.cmd = and i64 %i.cmc, 3                      ; 2 uses
  %i.cme = icmp eq i64 %i.cmd, 1
  br i1 %i.cme, label %bb.jd, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit701

bb.jd:                                            ; preds = %.lr.ph2657
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.01577.02655, i64 %i.cmc)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit701: ; preds = %.lr.ph2657
  %i.cmf = icmp eq i64 %i.cmd, 3
  %i.cmg = and i64 %i.cmc, 4294967295
  %i.cmh = icmp ne i64 %i.cmg, 3
  %i.cmi = and i1 %i.cmf, %i.cmh
  br i1 %i.cmi, label %bb.je, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702

bb.je:                                            ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit701
  %i.cmj = and i64 %i.cmc, -3
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE21ProcessWeakHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.01577.02655, i64 %i.cmj)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702: ; preds = %bb.jd, %bb.je, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit701
  %i.cmk = add i64 %.sroa.01577.02655, 8          ; 2 uses
  %i.cml = icmp ult i64 %i.cmk, %i.clz
  br i1 %i.cml, label %.lr.ph2657, label %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i, !llvm.loop !17

_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i: ; preds = %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit702, %bb.jc
  %i.cmm = icmp eq i16 %.sroa.035.0.insert.ext.pre-phi.i, 0
  br i1 %i.cmm, label %bb.jf, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread2422

bb.jf:                                            ; preds = %_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE17VisitPointersImplINS0_19FullMaybeObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S9_.exit.i
  %i.cmn = load i16, ptr %i.ckx, align 2
  %i.cmo = zext i16 %i.cmn to i64
  %i.cmp = mul nuw nsw i64 %i.cmo, 24
  %i.cmq = add nuw nsw i64 %i.cmp, 32             ; 2 uses
  %i.cmr = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cms = icmp ult i64 %i.cmr, %i.clw
  br i1 %i.cms, label %.lr.ph2660, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread

.lr.ph2660:                                       ; preds = %bb.jf, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit705
  %.sroa.01563.02658 = phi i64 [ %i.cmw, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit705 ], [ %i.cmr, %bb.jf ] ; 3 uses
  %i.cmt = inttoptr i64 %.sroa.01563.02658 to ptr
  %i.cmu = load atomic volatile i64, ptr %i.cmt monotonic, align 8 ; 2 uses
  %i.cmv = trunc i64 %i.cmu to i1
  br i1 %i.cmv, label %bb.jg, label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit705

bb.jg:                                            ; preds = %.lr.ph2660
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_18FullHeapObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %.sroa.01563.02658, i64 %i.cmu)
  br label %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit705

_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE1EmE21GetHeapObjectIfStrongEPNS0_6TaggedINS0_10HeapObjectEEE.exit705: ; preds = %bb.jg, %.lr.ph2660
  %i.cmw = add i64 %.sroa.01563.02658, 8          ; 2 uses
  %i.cmx = icmp ult i64 %i.cmw, %i.clw
  br i1 %i.cmx, label %.lr.ph2660, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit.thread, !llvm.loop !16

_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit: ; preds = %_ZN2v88internal16MarkingWorklists5Local15SwitchToContextEm.exit
  %i.cmy = add i64 %.sroa.08.0.copyload, -1       ; 3 uses
  %i.cmz = inttoptr i64 %i.cmy to ptr
  %i.cna = load atomic volatile i64, ptr %i.cmz monotonic, align 8
  call void @_ZN2v88internal18MarkingVisitorBaseINS0_18MainMarkingVisitorEE23ProcessStrongHeapObjectINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S8_(ptr noundef nonnull align 8 dereferenceable(61) %i.gg, i64 %.sroa.08.0.copyload, i64 %i.cmy, i64 %i.cna)
  %i.cnb = add i64 %.sroa.08.0.copyload, 7
  %i.cnc = inttoptr i64 %i.cnb to ptr
  %i.cnd = load atomic volatile i16, ptr %i.cnc monotonic, align 2
  %i.cne = sext i16 %i.cnd to i64
  %i.cnf = mul nsw i64 %i.cne, 24
  %i.cng = add nsw i64 %i.cnf, 32                 ; 3 uses
  %i.cnh = add i64 %.sroa.08.0.copyload, 23       ; 2 uses
  %i.cni = add i64 %i.cmy, %i.cng                 ; 2 uses
  %i.cnj = icmp ult i64 %i.cnh, %i.cni
  br i1 %i.cnj, label %.lr.ph.i.i706, label %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE5VisitENS0_6TaggedINS0_3MapEEENS4_INS0_10HeapObjectEEENS0_15MaybeObjectSizeE.exit

.lr.ph.i.i706:                                    ; preds = %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i709
  %.sroa.018.030.i.i707 = phi i64 [ %i.cnt, %_ZNK2v88internal10TaggedImplILNS0_23HeapObjectReferenceTypeE0EmE19GetHeapObjectIfWeakEPNS0_6TaggedINS0_10HeapObjectEEE.exit.i.i709 ], [ %i.cnh, %_ZN2v88internal11HeapVisitorINS0_18MainMarkingVisitorEE23VisitMapPointerIfNeededILNS0_9VisitorIdE110EEEvNS0_6TaggedINS0_10HeapObjectEEE.exit ] ; 4 uses
  %i.cnk = inttoptr i64 %.sroa.018.030.i.i707 to ptr
  %i.cnl = load atomic volatile i64, ptr %i.cnk monotonic, align 8 ; 4 uses
end_hunk_3
