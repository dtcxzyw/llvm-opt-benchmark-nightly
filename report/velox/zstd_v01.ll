inline.NumInlined: 186
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ZSTD_decompressBlock:bb.a
  %.sroa.0.0.copyload.i188.i.i.i.i.i.i = load i16, ptr %i.wk, align 4, !tbaa !19
  %.sroa.4.0..sroa_idx.i189.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  %.sroa.4.0.copyload.i190.i.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i189.i.i.i.i.i.i, align 2, !tbaa !8
  %.sroa.5.0..sroa_idx.i191.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wk, i64 3
  %.sroa.5.0.copyload.i192.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i191.i.i.i.i.i.i, align 1, !tbaa !8
  %i.wl = zext i8 %.sroa.5.0.copyload.i192.i.i.i.i.i.i to i32 ; 2 uses
  %i.wm = and i32 %.sroa.26.10.i.i.i.i.i.i, 63
  %i.wn = zext nneg i32 %i.wm to i64
  %i.wo = shl i64 %.sroa.0210.8.i.i.i.i.i.i, %i.wn
  %i.wp = lshr i64 %i.wo, 1
  %i.wq = and i32 %i.wl, 63
  %i.wr = xor i32 %i.wq, 63
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = lshr i64 %i.wp, %i.ws
  %i.wu = add i32 %.sroa.26.10.i.i.i.i.i.i, %i.wl ; 3 uses
  %i.wv = zext i16 %.sroa.0.0.copyload.i188.i.i.i.i.i.i to i64
  %i.ww = add nuw i64 %i.wt, %i.wv                ; 2 uses
  %.add.i.i.i.i.i.i.i = add nuw nsw i64 %.1.idx.i491.i.i.i.i.i.i, 2 ; 2 uses
  store i8 %.sroa.4.0.copyload.i190.i.i.i.i.i.i, ptr %.ptr.ptr.i.i.i.i.i.i.i, align 1, !tbaa !8
  %i.wx = icmp ugt i32 %i.wu, 64
  br i1 %i.wx, label %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i, label %.lr.ph493.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i: ; preds = %FSE_endOfDStream.exit170.thread.i.i.i.i.i.i
  %.sroa.60231.9.ph.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hb, i64 %.sroa.60231.9.ph.idx624.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i: ; preds = %bb.ci, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i, %FSE_initDState.exit123.i.i.i.i.i.i, %FSE_initDState.exit115.i.i.i.i.i.i
  %.sroa.60231.1.idx.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.60231.8.idx.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %.sroa.60231.10.idx.i.i.i.i.i.i, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %.sroa.60231.5.ptr.add.i.i.i.i.i.i, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %.sroa.60231.5.idx.i.i.i.i.i.i, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %.sroa.60231.8.idx.i.i.i.i.i.i, %bb.ci ]
  %.sroa.0.1.lcssa.ph470.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i110.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.ww, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.rw, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.rw, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.ux, %bb.ci ]
  %.sroa.26.2.ph472.i.i.i.i.i.i = phi i32 [ %.sroa.26.8.i.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.wu, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.sh, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.rx, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.uv, %bb.ci ]
  %.sroa.0202.2.ph473.i.i.i.i.i.i = phi i64 [ %.sroa.0202.0.i109.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %i.vy, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ %i.rg, %FSE_initDState.exit123.i.i.i.i.i.i ], [ %i.rg, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %i.ui, %bb.ci ]
  %.2.idx.i.ph474.i.i.i.i.i.i = phi i64 [ %.0.idx.i.i111.i.i.i.i.i, %.preheader.i26.i.i.i.i.i ], [ %.add.i.i.i.i.i.i.i, %FSE_endOfDStream.exit187.thread.i.i.i.i.i.i ], [ 0, %FSE_initDState.exit123.i.i.i.i.i.i ], [ 0, %FSE_initDState.exit115.i.i.i.i.i.i ], [ %.0.add.i.i.i.i.i.i.i, %bb.ci ]
  %.sroa.60231.1.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hb, i64 %.sroa.60231.1.idx.lcssa.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i: ; preds = %FSE_reloadDStream.exit186.i.i.i.i.i.i
  %.sroa.60231.10.ptr.le.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.hb, i64 %.sroa.60231.10.idx.i.i.i.i.i.i
  br label %FSE_reloadDStream.exit169.i.i.i.i.i.i

FSE_reloadDStream.exit169.i.i.i.i.i.i:            ; preds = %bb.cq, %bb.cl, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.0.1.lcssa.ph470.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %.sroa.0.1490.i.i.i.i.i.i, %bb.cl ], [ 0, %bb.cq ]
  %.sroa.60231.2.i.i.i.i.i.i = phi ptr [ %.sroa.60231.1.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.60231.10.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.sroa.60231.9.ph.ptr.le.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %i.hb, %bb.cl ], [ %i.hb, %bb.cq ]
  %.sroa.26.2.i.i.i.i.i.i = phi i32 [ %.sroa.26.2.ph472.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %.sroa.26.10.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %i.vw, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ 64, %bb.cl ], [ 64, %bb.cq ]
  %.sroa.0202.2.i.i.i.i.i.i = phi i64 [ %.sroa.0202.2.ph473.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ %i.vy, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %i.vy, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ 0, %bb.cl ], [ %i.vy, %bb.cq ]
  %.2.idx.i.i.i.i.i.i.i = phi i64 [ %.2.idx.i.ph474.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit469.i.i.i.i.i.i ], [ 255, %FSE_reloadDStream.exit169.split.loop.exit475.i.i.i.i.i.i ], [ %.add51.i.i.i.i.i.i.i, %FSE_reloadDStream.exit169.split.loop.exit463.i.i.i.i.i.i ], [ %.1.idx.i491.i.i.i.i.i.i, %bb.cl ], [ %.add51.i.i.i.i.i.i.i, %bb.cq ]
  %i.wy = icmp eq ptr %.sroa.60231.2.i.i.i.i.i.i, %i.hb
  %.not401.i.i.i.i.i.i = icmp eq i32 %.sroa.26.2.i.i.i.i.i.i, 64
  %or.cond412.i.i.i.i.i.i = and i1 %i.wy, %.not401.i.i.i.i.i.i
  %.not402.i.i.i.i.i.i = icmp eq i64 %.sroa.0202.2.i.i.i.i.i.i, 0
  %or.cond413.i.i.i.i.i.i = select i1 %or.cond412.i.i.i.i.i.i, i1 %.not402.i.i.i.i.i.i, i1 false
  %.not403.i.i.i.i.i.i = icmp eq i64 %.sroa.0.1.lcssa.i.i.i.i.i.i, 0
  %or.cond414.i.i.i.i.i.i = select i1 %or.cond413.i.i.i.i.i.i, i1 %.not403.i.i.i.i.i.i, i1 false
  br i1 %or.cond414.i.i.i.i.i.i, label %FSE_decompress.exit.i.i.i.i, label %FSE_decompress.exit.thread.i.i.i.i

FSE_decompress.exit.thread.i.i.i.i:               ; preds = %FSE_reloadDStream.exit169.i.i.i.i.i.i, %FSE_initDStream.exit107.i.i.i.i.i.i, %bb.bx, %bb.bp, %FSE_reloadDStream.exit77.i.i.i.i.i.i, %FSE_initDStream.exit.i.i.i.i.i.i, %bb.au, %bb.am, %FSE_buildDTable.exit.thread.i.i.i.i.i, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %HUF_readDTable.exit.thread.i.i.i

FSE_decompress.exit.i.i.i.i:                      ; preds = %FSE_reloadDStream.exit169.i.i.i.i.i.i, %FSE_reloadDStream.exit77.i.i.i.i.i.i
  %.0.i.i.i.i.i = phi i64 [ %.2.idx.i.i.i.i.i.i.i, %FSE_reloadDStream.exit169.i.i.i.i.i.i ], [ %.2.idx.i18.i.i.i.i.i.i, %FSE_reloadDStream.exit77.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  %i.wz = icmp ult i64 %.0.i.i.i.i.i, -7
  br i1 %i.wz, label %.loopexit.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.loopexit.i.i.i.i:                                ; preds = %FSE_decompress.exit.i.i.i.i, %bb.n
  %.085.i.i.i.i = phi i64 [ 0, %bb.n ], [ %i.bn, %FSE_decompress.exit.i.i.i.i ]
  %.084.i.i.i.i = phi i64 [ %i.bt, %bb.n ], [ %.0.i.i.i.i.i, %FSE_decompress.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.p, i8 0, i64 68, i1 false)
  %.not200.i.i.i.i = icmp eq i64 %.084.i.i.i.i, 0
  br i1 %.not200.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i, label %.lr.ph188.preheader.i.i.i.i

.lr.ph188.preheader.i.i.i.i:                      ; preds = %.loopexit.i.i.i.i, %.loopexit.thread.i.i.i.i
  %.084337.i.i.i.i = phi i64 [ %i.bu, %.loopexit.thread.i.i.i.i ], [ %.084.i.i.i.i, %.loopexit.i.i.i.i ] ; 3 uses
  %.085335.i.i.i.i = phi i64 [ %i.bw, %.loopexit.thread.i.i.i.i ], [ %.085.i.i.i.i, %.loopexit.i.i.i.i ]
  br label %.lr.ph188.i.i.i.i

.lr.ph188.i.i.i.i:                                ; preds = %bb.cr, %.lr.ph188.preheader.i.i.i.i
  %i.xa = phi i64 [ %i.xn, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %.183187.i.i.i.i = phi i32 [ %i.xm, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %.086186.i.i.i.i = phi i32 [ %i.xl, %bb.cr ], [ 0, %.lr.ph188.preheader.i.i.i.i ]
  %i.xb = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !8   ; 3 uses
  %i.xd = icmp ugt i8 %i.xc, 15
  br i1 %i.xd, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph188.i.i.i.i
  %i.xe = zext nneg i8 %i.xc to i64
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.xe ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !9
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.xf, align 4, !tbaa !9
  %i.xi = zext nneg i8 %i.xc to i32
  %i.xj = shl nuw nsw i32 1, %i.xi
  %i.xk = lshr i32 %i.xj, 1
  %i.xl = add i32 %i.xk, %.086186.i.i.i.i         ; 4 uses
  %i.xm = add i32 %.183187.i.i.i.i, 1             ; 2 uses
  %i.xn = zext i32 %i.xm to i64                   ; 2 uses
  %i.xo = icmp ugt i64 %.084337.i.i.i.i, %i.xn
  br i1 %i.xo, label %.lr.ph188.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !31

._crit_edge.i.i.i.i:                              ; preds = %bb.cr
  %i.xp = icmp eq i32 %i.xl, 0
  br i1 %i.xp, label %HUF_readDTable.exit.thread.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge.i.i.i.i
  %i.xq = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xl, i1 true) ; 4 uses
  %i.xr = xor i32 %i.xq, 31                       ; 3 uses
  %.not100.i.i.i.i = icmp samesign ult i32 %i.xr, 12
  br i1 %.not100.i.i.i.i, label %bb.ct, label %HUF_readDTable.exit.thread.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.xs = trunc nuw nsw i32 %i.xq to i16
  %i.xt = sub nuw nsw i16 32, %i.xs               ; 2 uses
  store i16 %i.xt, ptr %i.q, align 16, !tbaa !19
  %i.xu = shl nuw nsw i32 2, %i.xr
  %i.xv = sub i32 %i.xu, %i.xl                    ; 2 uses
  %i.xw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.xv, i1 true) ; 2 uses
  %i.xx = lshr exact i32 -2147483648, %i.xw
  %.not101.i.i.i.i = icmp eq i32 %i.xx, %i.xv
  br i1 %.not101.i.i.i.i, label %bb.cu, label %HUF_readDTable.exit.thread.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.xy = sub nuw nsw i32 32, %i.xw               ; 2 uses
  %i.xz = trunc nuw nsw i32 %i.xy to i8
  %i.ya = getelementptr inbounds nuw i8, ptr %i.o, i64 %.084337.i.i.i.i
  store i8 %i.xz, ptr %i.ya, align 1, !tbaa !8
  %i.yb = zext nneg i32 %i.xy to i64
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.yb ; 2 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !9
  %i.ye = add i32 %i.yd, 1
  store i32 %i.ye, ptr %i.yc, align 4, !tbaa !9
  %i.yf = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !9  ; 2 uses
  %i.yh = icmp ugt i32 %i.yg, 1
  %i.yi = and i32 %i.yg, 1
  %.not102.i.i.i.i = icmp eq i32 %i.yi, 0
  %or.cond.i.i.i.i = and i1 %i.yh, %.not102.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.preheader109.preheader.i.i.i.i, label %HUF_readDTable.exit.thread.i.i.i

.preheader109.preheader.i.i.i.i:                  ; preds = %bb.cu
  %i.yj = sub nuw nsw i32 33, %i.xq
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.yj to i64
  %i.yk = add nsw i64 %wide.trip.count.i.i.i.i, -1 ; 3 uses
  %xtraiter729 = and i64 %i.yk, 1
  %i.yl = icmp eq i32 %i.xq, 31
  br i1 %i.yl, label %.preheader109.i.i.i.i.epil.preheader, label %.preheader109.preheader.i.i.i.i.new

.preheader109.preheader.i.i.i.i.new:              ; preds = %.preheader109.preheader.i.i.i.i
  %unroll_iter732 = and i64 %i.yk, -2
  br label %.preheader109.i.i.i.i

.preheader.i.i.i.i.unr-lcssa:                     ; preds = %.preheader109.i.i.i.i
  %lcmp.mod730.not = icmp eq i64 %xtraiter729, 0
  br i1 %lcmp.mod730.not, label %.preheader.i.i.i.i, label %.preheader109.i.i.i.i.epil.preheader

.preheader109.i.i.i.i.epil.preheader:             ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.preheader.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 1, %.preheader109.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.preheader.i.i.i.i.unr-lcssa ]
  %.081190.i.i.i.i.epil.init = phi i32 [ 0, %.preheader109.preheader.i.i.i.i ], [ %i.za, %.preheader.i.i.i.i.unr-lcssa ]
  %lcmp.mod731 = trunc i64 %i.yk to i1
  tail call void @llvm.assume(i1 %lcmp.mod731)
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i.epil.init
  store i32 %.081190.i.i.i.i.epil.init, ptr %i.ym, align 4, !tbaa !9
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.unr-lcssa, %.preheader109.i.i.i.i.epil.preheader
  %i.yn = trunc nuw nsw i32 %i.xr to i8
  %i.yo = add nuw nsw i8 %i.yn, 2
  br label %bb.cv

.preheader109.i.i.i.i:                            ; preds = %.preheader109.i.i.i.i, %.preheader109.preheader.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.preheader109.preheader.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.preheader109.i.i.i.i ] ; 4 uses
  %.081190.i.i.i.i = phi i32 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %i.za, %.preheader109.i.i.i.i ] ; 2 uses
  %niter733 = phi i64 [ 0, %.preheader109.preheader.i.i.i.i.new ], [ %niter733.next.1, %.preheader109.i.i.i.i ]
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !9
  %i.yr = trunc i64 %indvars.iv.i.i.i.i to i32
  %i.ys = add nsw i32 %i.yr, -1
  %i.yt = shl i32 %i.yq, %i.ys
  %i.yu = add i32 %i.yt, %.081190.i.i.i.i         ; 2 uses
  store i32 %.081190.i.i.i.i, ptr %i.yp, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.next.i.i.i.i ; 2 uses
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !9
  %i.yx = trunc i64 %indvars.iv.next.i.i.i.i to i32
  %i.yy = add i32 %i.yx, -1
  %i.yz = shl i32 %i.yw, %i.yy
  %i.za = add i32 %i.yz, %i.yu                    ; 2 uses
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !9
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter733.next.1 = add nuw i64 %niter733, 2     ; 2 uses
  %niter733.ncmp.1 = icmp eq i64 %niter733.next.1, %unroll_iter732
  br i1 %niter733.ncmp.1, label %.preheader.i.i.i.i.unr-lcssa, label %.preheader109.i.i.i.i, !llvm.loop !32

bb.cv:                                            ; preds = %._crit_edge194.i.i.i.i, %.preheader.i.i.i.i
  %indvars.iv283.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %indvars.iv.next284.i.i.i.i, %._crit_edge194.i.i.i.i ] ; 3 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv283.i.i.i.i
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !8   ; 3 uses
  %i.zd = zext nneg i8 %i.zc to i32
  %i.ze = shl nuw i32 1, %i.zd
  %i.zf = ashr i32 %i.ze, 1
  %i.zg = trunc i64 %indvars.iv283.i.i.i.i to i8  ; 3 uses
  %i.zh = sub i8 %i.yo, %i.zc                     ; 3 uses
  %i.zi = zext i8 %i.zc to i64
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.zi ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !9  ; 3 uses
  %i.zl = add i32 %i.zf, %i.zk                    ; 3 uses
  %i.zm = icmp ult i32 %i.zk, %i.zl
  br i1 %i.zm, label %iter.check545, label %._crit_edge194.i.i.i.i

iter.check545:                                    ; preds = %bb.cv
  %i.zn = zext i32 %i.zk to i64                   ; 6 uses
  %wide.trip.count281.i.i.i.i = zext i32 %i.zl to i64 ; 2 uses
  %i.zo = sub nsw i64 %wide.trip.count281.i.i.i.i, %i.zn ; 7 uses
  %min.iters.check530 = icmp ult i64 %i.zo, 4
  br i1 %min.iters.check530, label %.lr.ph193.i.i.i.i.preheader, label %vector.main.loop.iter.check531

vector.main.loop.iter.check531:                   ; preds = %iter.check545
  %min.iters.check532 = icmp ult i64 %i.zo, 16
  br i1 %min.iters.check532, label %vec.epilog.ph549, label %vector.ph533

vector.ph533:                                     ; preds = %vector.main.loop.iter.check531
  %i.zp = and i64 %i.zo, 12
  %n.vec534 = and i64 %i.zo, -16                  ; 4 uses
  %i.zq = add nsw i64 %n.vec534, %i.zn
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.zg, i64 0
  %broadcast.splatinsert535 = insertelement <8 x i8> poison, i8 %i.zh, i64 0
  %interleaved.vec539 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert535, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph533
  %index538 = phi i64 [ 0, %vector.ph533 ], [ %index.next541, %vector.body537 ] ; 2 uses
  %i.zr = add nuw i64 %index538, %i.zn            ; 2 uses
  %i.zs = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %i.zr
  %i.zt = getelementptr [2 x i8], ptr %i.bl, i64 %i.zr
  %i.zu = getelementptr i8, ptr %i.zt, i64 16
  store <16 x i8> %interleaved.vec539, ptr %i.zs, align 2, !tbaa !8
  store <16 x i8> %interleaved.vec539, ptr %i.zu, align 2, !tbaa !8
  %index.next541 = add nuw i64 %index538, 16      ; 2 uses
  %i.zv = icmp eq i64 %index.next541, %n.vec534
  br i1 %i.zv, label %middle.block542, label %vector.body537, !llvm.loop !33

middle.block542:                                  ; preds = %vector.body537
  %cmp.n543 = icmp eq i64 %i.zo, %n.vec534
  br i1 %cmp.n543, label %._crit_edge194.i.i.i.i, label %vec.epilog.iter.check547

vec.epilog.iter.check547:                         ; preds = %middle.block542
  %min.epilog.iters.check548 = icmp eq i64 %i.zp, 0
  br i1 %min.epilog.iters.check548, label %.lr.ph193.i.i.i.i.preheader, label %vec.epilog.ph549, !prof !10

vec.epilog.ph549:                                 ; preds = %vector.main.loop.iter.check531, %vec.epilog.iter.check547
  %vec.epilog.resume.val544 = phi i64 [ %n.vec534, %vec.epilog.iter.check547 ], [ 0, %vector.main.loop.iter.check531 ]
  %n.vec550 = and i64 %i.zo, -4                   ; 3 uses
  %i.zw = add nsw i64 %n.vec550, %i.zn
  %broadcast.splatinsert551 = insertelement <4 x i8> poison, i8 %i.zg, i64 0
  %broadcast.splatinsert553 = insertelement <4 x i8> poison, i8 %i.zh, i64 0
  %invariant.gep = getelementptr [2 x i8], ptr %i.bl, i64 %i.zn
  %interleaved.vec557 = shufflevector <4 x i8> %broadcast.splatinsert551, <4 x i8> %broadcast.splatinsert553, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph549
  %index556 = phi i64 [ %vec.epilog.resume.val544, %vec.epilog.ph549 ], [ %index.next558, %vec.epilog.vector.body555 ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index556
  store <8 x i8> %interleaved.vec557, ptr %gep, align 2, !tbaa !8
  %index.next558 = add nuw i64 %index556, 4       ; 2 uses
  %i.zx = icmp eq i64 %index.next558, %n.vec550
  br i1 %i.zx, label %vec.epilog.middle.block559, label %vec.epilog.vector.body555, !llvm.loop !34

vec.epilog.middle.block559:                       ; preds = %vec.epilog.vector.body555
  %cmp.n560 = icmp eq i64 %i.zo, %n.vec550
  br i1 %cmp.n560, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i.preheader

.lr.ph193.i.i.i.i.preheader:                      ; preds = %iter.check545, %vec.epilog.iter.check547, %vec.epilog.middle.block559
  %indvars.iv277.i.i.i.i.ph = phi i64 [ %i.zn, %iter.check545 ], [ %i.zq, %vec.epilog.iter.check547 ], [ %i.zw, %vec.epilog.middle.block559 ]
  br label %.lr.ph193.i.i.i.i

.lr.ph193.i.i.i.i:                                ; preds = %.lr.ph193.i.i.i.i.preheader, %.lr.ph193.i.i.i.i
  %indvars.iv277.i.i.i.i = phi i64 [ %indvars.iv.next278.i.i.i.i, %.lr.ph193.i.i.i.i ], [ %indvars.iv277.i.i.i.i.ph, %.lr.ph193.i.i.i.i.preheader ] ; 2 uses
  %i.zy = getelementptr inbounds nuw [2 x i8], ptr %i.bl, i64 %indvars.iv277.i.i.i.i ; 2 uses
  store i8 %i.zg, ptr %i.zy, align 2, !tbaa !8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.zy, i64 1
  store i8 %i.zh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !8
  %indvars.iv.next278.i.i.i.i = add nuw nsw i64 %indvars.iv277.i.i.i.i, 1 ; 2 uses
  %exitcond282.not.i.i.i.i = icmp eq i64 %indvars.iv.next278.i.i.i.i, %wide.trip.count281.i.i.i.i
  br i1 %exitcond282.not.i.i.i.i, label %._crit_edge194.i.i.i.i, label %.lr.ph193.i.i.i.i, !llvm.loop !35

._crit_edge194.i.i.i.i:                           ; preds = %.lr.ph193.i.i.i.i, %middle.block542, %vec.epilog.middle.block559, %bb.cv
  store i32 %i.zl, ptr %i.zj, align 4, !tbaa !9
  %indvars.iv.next284.i.i.i.i = add i64 %indvars.iv283.i.i.i.i, 1 ; 2 uses
  %7 = and i64 %indvars.iv.next284.i.i.i.i, 4294967295
  %.not104.i.i.i.i = icmp ult i64 %.084337.i.i.i.i, %7
  br i1 %.not104.i.i.i.i, label %HUF_readDTable.exit.i.i.i, label %bb.cv, !llvm.loop !36

HUF_readDTable.exit.thread.i.i.i:                 ; preds = %.lr.ph188.i.i.i.i, %bb.cu, %bb.ct, %bb.cs, %._crit_edge.i.i.i.i, %.loopexit.i.i.i.i, %FSE_decompress.exit.i.i.i.i, %FSE_decompress.exit.thread.i.i.i.i, %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  br label %.sink.split.i.i

HUF_readDTable.exit.i.i.i:                        ; preds = %._crit_edge194.i.i.i.i
  %i.zz = add nuw nsw i64 %.085335.i.i.i.i, 1     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  %.not17.i.i.i = icmp ult i64 %i.zz, %i.bk
  br i1 %.not17.i.i.i, label %bb.cw, label %.sink.split.i.i

bb.cw:                                            ; preds = %HUF_readDTable.exit.i.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.zz ; 12 uses
  %i.aab = sub nuw nsw i64 %i.bk, %i.zz           ; 3 uses
  %i.aac = icmp ult i64 %i.aab, 6
  br i1 %i.aac, label %.sink.split.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.aad = icmp samesign ult i64 %i.bf, 15
  %i.aae = getelementptr inbounds i8, ptr %i.r, i64 -15
  %i.aaf = select i1 %i.aad, ptr %i.bi, ptr %i.aae ; 2 uses
  %i.aag = zext nneg i16 %i.xt to i32             ; 2 uses
  %.val123.i.i.i.i = load i16, ptr %i.aaa, align 1 ; 5 uses
  %i.aah = zext i16 %.val123.i.i.i.i to i64       ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaa, i64 2
  %.val122.i.i.i.i = load i16, ptr %i.aai, align 1 ; 5 uses
  %i.aaj = zext i16 %.val122.i.i.i.i to i64       ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %.val.i.i.i.i = load i16, ptr %i.aak, align 1   ; 5 uses
  %i.aal = zext i16 %.val.i.i.i.i to i64          ; 2 uses
  %i.aam = add nsw i64 %i.aab, -6
  %i.aan = add nuw nsw i64 %i.aaj, %i.aah
  %i.aao = add nuw nsw i64 %i.aan, %i.aal         ; 2 uses
  %i.aap = sub nsw i64 %i.aam, %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaa, i64 6 ; 12 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 %i.aah ; 13 uses
  %i.aas = getelementptr i8, ptr %i.aar, i64 %i.aaj ; 16 uses
  %i.aat = getelementptr i8, ptr %i.aas, i64 %i.aal ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.aau = add nuw nsw i64 %i.aao, 6
  %.not.i18.i.i.i = icmp uge i64 %i.aau, %i.aab
  %i.aav = icmp eq i16 %.val123.i.i.i.i, 0
  %or.cond.i19.i.i.i = or i1 %i.aav, %.not.i18.i.i.i
  br i1 %or.cond.i19.i.i.i, label %HUF_decompress.exit.thread257.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aaw = icmp ugt i16 %.val123.i.i.i.i, 7
  br i1 %i.aaw, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.aax = getelementptr i8, ptr %i.aar, i64 -1
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !8 ; 2 uses
  %i.aaz = icmp eq i8 %i.aay, 0
  br i1 %i.aaz, label %HUF_decompress.exit.thread257.i.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.cz
  %i.aba = getelementptr inbounds i8, ptr %i.aar, i64 -8 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.aba, align 1
  %i.abb = zext i8 %i.aay to i32
  %i.abc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.abb, i1 true)
  %i.abd = xor i32 %i.abc, 31
  %i.abe = sub nuw nsw i32 8, %i.abd
  br label %bb.di

bb.da:                                            ; preds = %bb.cy
  %i.abf = load i8, ptr %i.aaq, align 1, !tbaa !8
  %i.abg = zext i8 %i.abf to i64                  ; 7 uses
  switch i16 %.val123.i.i.i.i, label %bb.dh [
    i16 7, label %bb.db
    i16 6, label %bb.dc
    i16 5, label %bb.dd
    i16 4, label %bb.de
    i16 3, label %bb.df
    i16 2, label %bb.dg
  ]

bb.db:                                            ; preds = %bb.da
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aaa, i64 12
  %i.abi = load i8, ptr %i.abh, align 1, !tbaa !8
  %i.abj = zext i8 %i.abi to i64
  %i.abk = shl nuw nsw i64 %i.abj, 48
  %i.abl = or disjoint i64 %i.abk, %i.abg
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.abm = phi i64 [ %i.abl, %bb.db ], [ %i.abg, %bb.da ]
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aaa, i64 11
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !8
  %i.abp = zext i8 %i.abo to i64
  %i.abq = shl nuw nsw i64 %i.abp, 40
  %i.abr = add nuw nsw i64 %i.abq, %i.abm
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.da
  %i.abs = phi i64 [ %i.abr, %bb.dc ], [ %i.abg, %bb.da ]
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aaa, i64 10
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !8
  %i.abv = zext i8 %i.abu to i64
  %i.abw = shl nuw nsw i64 %i.abv, 32
  %i.abx = add nuw nsw i64 %i.abw, %i.abs
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.da
  %i.aby = phi i64 [ %i.abx, %bb.dd ], [ %i.abg, %bb.da ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aaa, i64 9
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !8
  %i.acb = zext i8 %i.aca to i64
  %i.acc = shl nuw nsw i64 %i.acb, 24
  %i.acd = add nuw nsw i64 %i.acc, %i.aby
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.da
  %i.ace = phi i64 [ %i.acd, %bb.de ], [ %i.abg, %bb.da ]
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !8
  %i.ach = zext i8 %i.acg to i64
  %i.aci = shl nuw nsw i64 %i.ach, 16
  %i.acj = add nuw nsw i64 %i.aci, %i.ace
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.da
  %i.ack = phi i64 [ %i.acj, %bb.df ], [ %i.abg, %bb.da ]
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aaa, i64 7
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !8
  %i.acn = zext i8 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 8
  %i.acp = add nuw nsw i64 %i.aco, %i.ack
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.da
  %.sroa.0218.1.i.i.i.i = phi i64 [ %i.abg, %bb.da ], [ %i.acp, %bb.dg ]
  %i.acq = getelementptr i8, ptr %i.aar, i64 -1
  %i.acr = load i8, ptr %i.acq, align 1, !tbaa !8 ; 2 uses
  %i.acs = icmp eq i8 %i.acr, 0
  br i1 %i.acs, label %HUF_decompress.exit.thread257.i.i, label %.thread48.i.i.i.i.i

.thread48.i.i.i.i.i:                              ; preds = %bb.dh
  %i.act = zext i8 %i.acr to i32
  %i.acu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.act, i1 true)
  %i.acv = shl nuw nsw i16 %.val123.i.i.i.i, 3
  %i.acw = zext nneg i16 %i.acv to i32
  %reass.sub134 = sub nsw i32 %i.acu, %i.acw
  %i.acx = add nsw i32 %reass.sub134, 41
  br label %bb.di

bb.di:                                            ; preds = %.thread48.i.i.i.i.i, %.thread.i.i.i.i.i
  %.sroa.17.1.i.i.i.i = phi i32 [ %i.abe, %.thread.i.i.i.i.i ], [ %i.acx, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.0218.2.i.i.i.i = phi i64 [ %.val.i.i.i.i.i, %.thread.i.i.i.i.i ], [ %.sroa.0218.1.i.i.i.i, %.thread48.i.i.i.i.i ] ; 2 uses
  %.sroa.31228.1.i.i.i.i = phi ptr [ %i.aba, %.thread.i.i.i.i.i ], [ %i.aaq, %.thread48.i.i.i.i.i ] ; 2 uses
  %i.acy = icmp eq i16 %.val122.i.i.i.i, 0
  br i1 %i.acy, label %HUF_decompress.exit.thread257.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acz = icmp ugt i16 %.val122.i.i.i.i, 7
  %i.ada = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.aar, ptr %i.ada, align 8, !tbaa !37
  br i1 %i.acz, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.adb = getelementptr inbounds i8, ptr %i.aas, i64 -8 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.adb, ptr %i.adc, align 8, !tbaa !42
  %.val.i126.i.i.i.i = load i64, ptr %i.adb, align 1 ; 2 uses
  store i64 %.val.i126.i.i.i.i, ptr %5, align 8, !tbaa !43
  %i.add = lshr i64 %.val.i126.i.i.i.i, 56        ; 2 uses
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %HUF_decompress.exit.thread257.i.i, label %.thread.i127.i.i.i.i

.thread.i127.i.i.i.i:                             ; preds = %bb.dk
  %i.adf = trunc nuw nsw i64 %i.add to i32
  %i.adg = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adf, i1 true)
  %i.adh = xor i32 %i.adg, 31
  %i.adi = sub nuw nsw i32 8, %i.adh
  %i.adj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.adi, ptr %i.adj, align 8, !tbaa !44
  br label %bb.dt

bb.dl:                                            ; preds = %bb.dj
  %i.adk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.aar, ptr %i.adk, align 8, !tbaa !42
  %i.adl = load i8, ptr %i.aar, align 1, !tbaa !8
  %i.adm = zext i8 %i.adl to i64                  ; 7 uses
  store i64 %i.adm, ptr %5, align 8, !tbaa !43
  switch i16 %.val122.i.i.i.i, label %bb.ds [
    i16 7, label %bb.dm
    i16 6, label %bb.dn
    i16 5, label %bb.do
    i16 4, label %bb.dp
    i16 3, label %bb.dq
    i16 2, label %bb.dr
  ]

bb.dm:                                            ; preds = %bb.dl
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aar, i64 6
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !8
  %i.adp = zext i8 %i.ado to i64
end_hunk_0
