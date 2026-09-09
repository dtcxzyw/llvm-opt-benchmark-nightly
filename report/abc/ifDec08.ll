Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec08?download=true
inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 26
begin_hunk_0_@If_Dec08Perform:bb.a
  %i.vx = and <2 x i64> %i.vw, <i64 4294967295, i64 -4294967296>
  %i.vy = shl <2 x i64> %i.vw, splat (i64 32)
  %i.vz = lshr <2 x i64> %i.vw, splat (i64 32)
  %i.wa = shufflevector <2 x i64> %i.vy, <2 x i64> %i.vz, <2 x i32> <i32 1, i32 2>
  %i.wb = or disjoint <2 x i64> %i.wa, %i.vx
  store <2 x i64> %i.wb, ptr %i.vv, align 8, !tbaa !12
  %indvars.iv.next156.i.i167 = or disjoint i64 %indvars.iv155.i.i166, 2 ; 2 uses
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv.next156.i.i167
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next156.i.i167
  %i.we = load <2 x i64>, ptr %i.wc, align 8, !tbaa !12 ; 3 uses
  %i.wf = and <2 x i64> %i.we, <i64 4294967295, i64 -4294967296>
  %i.wg = shl <2 x i64> %i.we, splat (i64 32)
  %i.wh = lshr <2 x i64> %i.we, splat (i64 32)
  %i.wi = shufflevector <2 x i64> %i.wg, <2 x i64> %i.wh, <2 x i32> <i32 1, i32 2>
  %i.wj = or disjoint <2 x i64> %i.wi, %i.wf
  store <2 x i64> %i.wj, ptr %i.wd, align 8, !tbaa !12
  %indvars.iv.next156.i.i167.1 = add nuw nsw i64 %indvars.iv155.i.i166, 4 ; 2 uses
  %niter726.next.1 = add nuw nsw i64 %niter726, 2 ; 2 uses
  %niter726.ncmp.1.not = icmp eq i64 %niter726.next.1, %unroll_iter725
  br i1 %niter726.ncmp.1.not, label %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, label %.lr.ph.i.i165, !llvm.loop !65

If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa: ; preds = %scalar.ph492
  br i1 %lcmp.mod729.not, label %If_Dec08SwapAdjacent.exit.i137, label %scalar.ph492.epil.preheader

scalar.ph492.epil.preheader:                      ; preds = %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa, %scalar.ph492.preheader
  %indvars.iv158.i.i169.epil.init = phi i64 [ 0, %scalar.ph492.preheader ], [ %indvars.iv.next159.i.i170.1, %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod730)
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv158.i.i169.epil.init
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !12 ; 3 uses
  %i.wm = and i64 %i.wl, %i.sk
  %i.wn = and i64 %i.wl, %i.sm
  %i.wo = shl i64 %i.wn, %i.sn
  %i.wp = or i64 %i.wo, %i.wm
  %i.wq = and i64 %i.wl, %i.sp
  %i.wr = lshr i64 %i.wq, %i.sn
  %i.ws = or i64 %i.wp, %i.wr
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv158.i.i169.epil.init
  store i64 %i.ws, ptr %i.wt, align 8, !tbaa !12
  br label %If_Dec08SwapAdjacent.exit.i137

If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa: ; preds = %.lr.ph.i.i165
  br i1 %lcmp.mod723.not.not, label %.lr.ph.i.i165.epil.preheader, label %If_Dec08SwapAdjacent.exit.i137

.lr.ph.i.i165.epil.preheader:                     ; preds = %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, %.lr.ph.i.i165.preheader
  %indvars.iv155.i.i166.epil.init = phi i64 [ 0, %.lr.ph.i.i165.preheader ], [ %indvars.iv.next156.i.i167.1, %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod724)
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv155.i.i166.epil.init
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv155.i.i166.epil.init
  %i.ww = load <2 x i64>, ptr %i.wu, align 8, !tbaa !12 ; 3 uses
  %i.wx = and <2 x i64> %i.ww, <i64 4294967295, i64 -4294967296>
  %i.wy = shl <2 x i64> %i.ww, splat (i64 32)
  %i.wz = lshr <2 x i64> %i.ww, splat (i64 32)
  %i.xa = shufflevector <2 x i64> %i.wy, <2 x i64> %i.wz, <2 x i32> <i32 1, i32 2>
  %i.xb = or disjoint <2 x i64> %i.xa, %i.wx
  store <2 x i64> %i.xb, ptr %i.wv, align 8, !tbaa !12
  br label %If_Dec08SwapAdjacent.exit.i137

If_Dec08SwapAdjacent.exit.i137:                   ; preds = %._crit_edge.us.i.i163, %.lr.ph.i.i165.epil.preheader, %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, %vector.body504, %scalar.ph492.epil.preheader, %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa, %.preheader87.lr.ph.i.i146, %bb.u, %.preheader.i.i164, %bb.s
  %i.xc = sext i32 %i.sf to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xc ; 3 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !9  ; 2 uses
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.xf ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !9
  %i.xi = add nsw i32 %i.xh, 1
  store i32 %i.xi, ptr %i.xg, align 4, !tbaa !9
  %i.xj = getelementptr i8, ptr %i.xd, i64 4      ; 2 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !9  ; 2 uses
  %i.xl = sext i32 %i.xk to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.xl ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !9
  %i.xo = add nsw i32 %i.xn, -1
  store i32 %i.xo, ptr %i.xm, align 4, !tbaa !9
  store i32 %i.xe, ptr %i.xj, align 4, !tbaa !9
  store i32 %i.xk, ptr %i.xd, align 4, !tbaa !9
  %i.xp = xor i1 %.052.i133, true
  %i.xq = load i32, ptr %i.sd, align 4, !tbaa !9  ; 2 uses
  %.not.i138 = icmp eq i32 %i.xq, %i.z
  br i1 %.not.i138, label %._crit_edge.i139, label %.lr.ph.i132, !llvm.loop !66

._crit_edge.i139:                                 ; preds = %If_Dec08SwapAdjacent.exit.i137
  %brmerge213 = select i1 %.052.i133, i1 true, i1 %i.w
  br i1 %brmerge213, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.preheader

.lr.ph.i43.i142.preheader:                        ; preds = %._crit_edge.i139
  %i.xr = sub i64 %.03751.i134476, %i.a
  %diff.check = icmp ugt i64 %i.xr, -32
  %or.cond638 = select i1 %min.iters.check478, i1 true, i1 %diff.check
  br i1 %or.cond638, label %.lr.ph.i43.i142.preheader659, label %vector.body481

.lr.ph.i43.i142.preheader659:                     ; preds = %.lr.ph.i43.i142.preheader
  br i1 %i.cy, label %.lr.ph.i43.i142.epil.preheader, label %.lr.ph.i43.i142

vector.body481:                                   ; preds = %.lr.ph.i43.i142.preheader, %vector.body481
  %index482 = phi i64 [ %index.next485, %vector.body481 ], [ 0, %.lr.ph.i43.i142.preheader ] ; 3 uses
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %index482 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %wide.load483 = load <2 x i64>, ptr %i.xs, align 8, !tbaa !12
  %wide.load484 = load <2 x i64>, ptr %i.xt, align 8, !tbaa !12
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index482 ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 16
  store <2 x i64> %wide.load483, ptr %i.xu, align 8, !tbaa !12
  store <2 x i64> %wide.load484, ptr %i.xv, align 8, !tbaa !12
  %index.next485 = add nuw i64 %index482, 4       ; 2 uses
  %i.xw = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.xw, label %If_Dec08MoveTo.exit172, label %vector.body481, !llvm.loop !83

.lr.ph.i43.i142:                                  ; preds = %.lr.ph.i43.i142.preheader659, %.lr.ph.i43.i142
  %indvars.iv.i44.i143 = phi i64 [ %indvars.iv.next.i45.i144.3, %.lr.ph.i43.i142 ], [ 0, %.lr.ph.i43.i142.preheader659 ] ; 6 uses
  %niter738 = phi i64 [ %niter738.next.3, %.lr.ph.i43.i142 ], [ 0, %.lr.ph.i43.i142.preheader659 ]
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.i44.i143
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !12
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i143
  store i64 %i.xy, ptr %i.xz, align 8, !tbaa !12
  %indvars.iv.next.i45.i144 = or disjoint i64 %indvars.iv.i44.i143, 1 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !12
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144
  store i64 %i.yb, ptr %i.yc, align 8, !tbaa !12
  %indvars.iv.next.i45.i144.1 = or disjoint i64 %indvars.iv.i44.i143, 2 ; 2 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144.1
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !12
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144.1
  store i64 %i.ye, ptr %i.yf, align 8, !tbaa !12
  %indvars.iv.next.i45.i144.2 = or disjoint i64 %indvars.iv.i44.i143, 3 ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144.2
  %i.yh = load i64, ptr %i.yg, align 8, !tbaa !12
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144.2
  store i64 %i.yh, ptr %i.yi, align 8, !tbaa !12
  %indvars.iv.next.i45.i144.3 = add nuw nsw i64 %indvars.iv.i44.i143, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, label %.lr.ph.i43.i142, !llvm.loop !84

If_Dec08MoveTo.exit172.loopexit.unr-lcssa:        ; preds = %.lr.ph.i43.i142
  br i1 %lcmp.mod735.not, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.epil.preheader

.lr.ph.i43.i142.epil.preheader:                   ; preds = %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, %.lr.ph.i43.i142.preheader659
  %indvars.iv.i44.i143.epil.init = phi i64 [ 0, %.lr.ph.i43.i142.preheader659 ], [ %indvars.iv.next.i45.i144.3, %If_Dec08MoveTo.exit172.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod736)
  br label %.lr.ph.i43.i142.epil

.lr.ph.i43.i142.epil:                             ; preds = %.lr.ph.i43.i142.epil, %.lr.ph.i43.i142.epil.preheader
  %indvars.iv.i44.i143.epil = phi i64 [ %indvars.iv.next.i45.i144.epil, %.lr.ph.i43.i142.epil ], [ %indvars.iv.i44.i143.epil.init, %.lr.ph.i43.i142.epil.preheader ] ; 3 uses
  %epil.iter734 = phi i64 [ %epil.iter734.next, %.lr.ph.i43.i142.epil ], [ 0, %.lr.ph.i43.i142.epil.preheader ]
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.i44.i143.epil
  %i.yk = load i64, ptr %i.yj, align 8, !tbaa !12
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i143.epil
  store i64 %i.yk, ptr %i.yl, align 8, !tbaa !12
  %indvars.iv.next.i45.i144.epil = add nuw nsw i64 %indvars.iv.i44.i143.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.epil, !llvm.loop !85

If_Dec08MoveTo.exit172:                           ; preds = %vector.body481, %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, %.lr.ph.i43.i142.epil, %._crit_edge.i139, %If_Dec08MoveTo.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.ym = load i64, ptr %0, align 8, !tbaa !12
  %i.yn = and i64 %i.ym, %i.ac                    ; 2 uses
  store i64 %i.yn, ptr %i.b, align 16, !tbaa !12
  %i.yo = load i64, ptr %i.af, align 8, !tbaa !12
  %i.yp = lshr i64 %i.yo, %i.ah
  %i.yq = and i64 %i.yp, %i.ac                    ; 2 uses
  %.not.i173 = icmp eq i64 %i.yq, %i.yn           ; 2 uses
  br i1 %.not.i173, label %.lr.ph.preheader.1.i, label %bb.v

bb.v:                                             ; preds = %If_Dec08MoveTo.exit172
  store i64 %i.yq, ptr %i.ai, align 8, !tbaa !12
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %bb.v, %If_Dec08MoveTo.exit172
  %.1.i = phi i32 [ 2, %bb.v ], [ 1, %If_Dec08MoveTo.exit172 ] ; 4 uses
  %i.yr = load i64, ptr %i.am, align 8, !tbaa !12
  %i.ys = lshr i64 %i.yr, %i.ao
  %i.yt = and i64 %i.ys, %i.ac                    ; 3 uses
  %wide.trip.count.1.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %i.yu = load i64, ptr %i.b, align 16, !tbaa !12
  %i.yv = icmp eq i64 %i.yt, %i.yu
  br i1 %i.yv, label %._crit_edge.1.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.preheader.1.i
  %.not.i173.not = xor i1 %.not.i173, true
  %i.yw = load i64, ptr %i.cz, align 8
  %i.yx = icmp eq i64 %i.yt, %i.yw
  %or.cond744 = select i1 %.not.i173.not, i1 %i.yx, i1 false
  br i1 %or.cond744, label %._crit_edge.1.i, label %._crit_edge.1.thread.i

._crit_edge.1.i:                                  ; preds = %bb.w, %.lr.ph.preheader.1.i
  %indvars.iv.1.i.lcssa = phi i32 [ 0, %.lr.ph.preheader.1.i ], [ 1, %bb.w ]
  %i.yy = icmp eq i32 %.1.i, %indvars.iv.1.i.lcssa
  br i1 %i.yy, label %._crit_edge.1.thread.i, label %.lr.ph.preheader.2.i

._crit_edge.1.thread.i:                           ; preds = %bb.w, %._crit_edge.1.i
  %i.yz = add nuw nsw i32 %.1.i, 1                ; 2 uses
  %i.za = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.1.i
  store i64 %i.yt, ptr %i.za, align 8, !tbaa !12
  %.pre = zext nneg i32 %i.yz to i64
  br label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge.1.thread.i, %._crit_edge.1.i
  %wide.trip.count.2.i.pre-phi = phi i64 [ %.pre, %._crit_edge.1.thread.i ], [ %wide.trip.count.1.i, %._crit_edge.1.i ] ; 8 uses
  %.1.1.i = phi i32 [ %i.yz, %._crit_edge.1.thread.i ], [ %.1.i, %._crit_edge.1.i ] ; 3 uses
  %i.zb = load i64, ptr %i.as, align 8, !tbaa !12
  %i.zc = lshr i64 %i.zb, %i.au
  %i.zd = and i64 %i.zc, %i.ac                    ; 8 uses
  %i.ze = load i64, ptr %i.b, align 16, !tbaa !12
  %i.zf = icmp eq i64 %i.zd, %i.ze
  br i1 %i.zf, label %._crit_edge.2.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.preheader.2.i
  %exitcond.2.not.i = icmp eq i64 %wide.trip.count.2.i.pre-phi, 1
  br i1 %exitcond.2.not.i, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.1

.lr.ph.2.i.1:                                     ; preds = %bb.x
  %i.zg = load i64, ptr %i.da, align 8, !tbaa !12
  %i.zh = icmp eq i64 %i.zd, %i.zg
  br i1 %i.zh, label %._crit_edge.2.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.2.i.1
  %exitcond.2.not.i.1 = icmp eq i64 %wide.trip.count.2.i.pre-phi, 2
  br i1 %exitcond.2.not.i.1, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.2

.lr.ph.2.i.2:                                     ; preds = %bb.y
  %i.zi = load i64, ptr %i.db, align 16, !tbaa !12
  %i.zj = icmp eq i64 %i.zd, %i.zi
  br i1 %i.zj, label %._crit_edge.2.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.2.i.2
  %exitcond.2.not.i.2 = icmp eq i64 %wide.trip.count.2.i.pre-phi, 3
  br i1 %exitcond.2.not.i.2, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.3

.lr.ph.2.i.3:                                     ; preds = %bb.z
  %i.zk = load i64, ptr %i.dc, align 8, !tbaa !12
  %i.zl = icmp eq i64 %i.zd, %i.zk
  br i1 %i.zl, label %._crit_edge.2.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.2.i.3
  %exitcond.2.not.i.3 = icmp eq i64 %wide.trip.count.2.i.pre-phi, 4
  br i1 %exitcond.2.not.i.3, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.4

.lr.ph.2.i.4:                                     ; preds = %bb.aa
  %i.zm = load i64, ptr %i.dd, align 16, !tbaa !12
  %i.zn = icmp eq i64 %i.zd, %i.zm
  br i1 %i.zn, label %._crit_edge.2.i, label %3

3:                                                ; preds = %.lr.ph.2.i.4
  %exitcond.2.not.i.4 = icmp eq i64 %wide.trip.count.2.i.pre-phi, 5
  br i1 %exitcond.2.not.i.4, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.5

.lr.ph.2.i.5:                                     ; preds = %3
  %i.zo = load i64, ptr %i.de, align 8, !tbaa !12
  %i.zp = icmp eq i64 %i.zd, %i.zo
  br i1 %i.zp, label %._crit_edge.2.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.2.i.5
  %exitcond.2.not.i.5 = icmp ne i64 %wide.trip.count.2.i.pre-phi, 6
  %i.zq = load i64, ptr %i.df, align 16
  %i.zr = icmp eq i64 %i.zd, %i.zq
  %or.cond746 = select i1 %exitcond.2.not.i.5, i1 %i.zr, i1 false
  br i1 %or.cond746, label %._crit_edge.2.i, label %._crit_edge.2.thread.i

._crit_edge.2.i:                                  ; preds = %bb.ab, %.lr.ph.2.i.5, %.lr.ph.2.i.4, %.lr.ph.2.i.3, %.lr.ph.2.i.2, %.lr.ph.2.i.1, %.lr.ph.preheader.2.i
  %indvars.iv.2.i.lcssa = phi i32 [ 0, %.lr.ph.preheader.2.i ], [ 1, %.lr.ph.2.i.1 ], [ 2, %.lr.ph.2.i.2 ], [ 3, %.lr.ph.2.i.3 ], [ 4, %.lr.ph.2.i.4 ], [ 5, %.lr.ph.2.i.5 ], [ 6, %bb.ab ]
  %i.zs = icmp eq i32 %.1.1.i, %indvars.iv.2.i.lcssa
  br i1 %i.zs, label %._crit_edge.2.thread.i, label %.lr.ph.preheader.3.i

._crit_edge.2.thread.i:                           ; preds = %bb.x, %bb.y, %bb.z, %bb.aa, %3, %bb.ab, %._crit_edge.2.i
  %i.zt = add nuw nsw i32 %.1.1.i, 1              ; 2 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.2.i.pre-phi
  store i64 %i.zd, ptr %i.zu, align 8, !tbaa !12
  %.pre350 = zext nneg i32 %i.zt to i64
  br label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge.2.thread.i, %._crit_edge.2.i
  %wide.trip.count.3.i.pre-phi = phi i64 [ %.pre350, %._crit_edge.2.thread.i ], [ %wide.trip.count.2.i.pre-phi, %._crit_edge.2.i ] ; 3 uses
  %.1.2.i = phi i32 [ %i.zt, %._crit_edge.2.thread.i ], [ %.1.1.i, %._crit_edge.2.i ] ; 3 uses
  %i.zv = load i64, ptr %i.ay, align 8, !tbaa !12
  %i.zw = lshr i64 %i.zv, %i.ba
  %i.zx = and i64 %i.zw, %i.ac                    ; 2 uses
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.ac, %.lr.ph.preheader.3.i
  %indvars.iv.3.i = phi i64 [ 0, %.lr.ph.preheader.3.i ], [ %indvars.iv.next.3.i, %bb.ac ] ; 3 uses
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.3.i
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !12
  %i.aaa = icmp eq i64 %i.zx, %i.zz
  br i1 %i.aaa, label %._crit_edge.3.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.3.i
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i.pre-phi
  br i1 %exitcond.3.not.i, label %._crit_edge.3.thread.i, label %.lr.ph.3.i, !llvm.loop !86

._crit_edge.3.i:                                  ; preds = %.lr.ph.3.i
  %i.aab = trunc nuw nsw i64 %indvars.iv.3.i to i32
  %i.aac = icmp eq i32 %.1.2.i, %i.aab
  br i1 %i.aac, label %._crit_edge.3.thread.i, label %.lr.ph.preheader.4.i

._crit_edge.3.thread.i:                           ; preds = %bb.ac, %._crit_edge.3.i
  %i.aad = add nuw nsw i32 %.1.2.i, 1             ; 2 uses
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.3.i.pre-phi
  store i64 %i.zx, ptr %i.aae, align 8, !tbaa !12
  %.pre351 = zext nneg i32 %i.aad to i64
  br label %.lr.ph.preheader.4.i

.lr.ph.preheader.4.i:                             ; preds = %._crit_edge.3.thread.i, %._crit_edge.3.i
  %wide.trip.count.4.i.pre-phi = phi i64 [ %.pre351, %._crit_edge.3.thread.i ], [ %wide.trip.count.3.i.pre-phi, %._crit_edge.3.i ] ; 3 uses
  %.1.3.i = phi i32 [ %i.aad, %._crit_edge.3.thread.i ], [ %.1.2.i, %._crit_edge.3.i ] ; 3 uses
  %i.aaf = load i64, ptr %i.be, align 8, !tbaa !12
  %i.aag = lshr i64 %i.aaf, %i.bg
  %i.aah = and i64 %i.aag, %i.ac                  ; 2 uses
  br label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %bb.ad, %.lr.ph.preheader.4.i
  %indvars.iv.4.i = phi i64 [ 0, %.lr.ph.preheader.4.i ], [ %indvars.iv.next.4.i, %bb.ad ] ; 3 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.4.i
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !12
  %i.aak = icmp eq i64 %i.aah, %i.aaj
  br i1 %i.aak, label %._crit_edge.4.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.4.i
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.4.i.pre-phi
  br i1 %exitcond.4.not.i, label %._crit_edge.4.thread.i, label %.lr.ph.4.i, !llvm.loop !86

._crit_edge.4.i:                                  ; preds = %.lr.ph.4.i
  %i.aal = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.aam = icmp eq i32 %.1.3.i, %i.aal
  br i1 %i.aam, label %._crit_edge.4.thread.i, label %.lr.ph.preheader.5.i

._crit_edge.4.thread.i:                           ; preds = %bb.ad, %._crit_edge.4.i
  %i.aan = add nuw nsw i32 %.1.3.i, 1             ; 2 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.4.i.pre-phi
  store i64 %i.aah, ptr %i.aao, align 8, !tbaa !12
  %.pre352 = zext nneg i32 %i.aan to i64
  br label %.lr.ph.preheader.5.i

.lr.ph.preheader.5.i:                             ; preds = %._crit_edge.4.thread.i, %._crit_edge.4.i
  %wide.trip.count.5.i.pre-phi = phi i64 [ %.pre352, %._crit_edge.4.thread.i ], [ %wide.trip.count.4.i.pre-phi, %._crit_edge.4.i ] ; 3 uses
  %.1.4.i = phi i32 [ %i.aan, %._crit_edge.4.thread.i ], [ %.1.3.i, %._crit_edge.4.i ] ; 3 uses
  %i.aap = load i64, ptr %i.bk, align 8, !tbaa !12
  %i.aaq = lshr i64 %i.aap, %i.bm
  %i.aar = and i64 %i.aaq, %i.ac                  ; 2 uses
  br label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %bb.ae, %.lr.ph.preheader.5.i
  %indvars.iv.5.i = phi i64 [ 0, %.lr.ph.preheader.5.i ], [ %indvars.iv.next.5.i, %bb.ae ] ; 3 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.5.i
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !12
  %i.aau = icmp eq i64 %i.aar, %i.aat
  br i1 %i.aau, label %._crit_edge.5.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.5.i
  %indvars.iv.next.5.i = add nuw nsw i64 %indvars.iv.5.i, 1 ; 2 uses
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.next.5.i, %wide.trip.count.5.i.pre-phi
  br i1 %exitcond.5.not.i, label %._crit_edge.5.thread.i, label %.lr.ph.5.i, !llvm.loop !86

._crit_edge.5.i:                                  ; preds = %.lr.ph.5.i
  %i.aav = trunc nuw nsw i64 %indvars.iv.5.i to i32
  %i.aaw = icmp eq i32 %.1.4.i, %i.aav
  br i1 %i.aaw, label %._crit_edge.5.thread.i, label %.lr.ph.preheader.6.i

._crit_edge.5.thread.i:                           ; preds = %bb.ae, %._crit_edge.5.i
  %i.aax = add nuw nsw i32 %.1.4.i, 1             ; 2 uses
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.5.i.pre-phi
  store i64 %i.aar, ptr %i.aay, align 8, !tbaa !12
  %.pre353 = zext nneg i32 %i.aax to i64
  br label %.lr.ph.preheader.6.i

.lr.ph.preheader.6.i:                             ; preds = %._crit_edge.5.thread.i, %._crit_edge.5.i
  %wide.trip.count.6.i.pre-phi = phi i64 [ %.pre353, %._crit_edge.5.thread.i ], [ %wide.trip.count.5.i.pre-phi, %._crit_edge.5.i ]
  %.1.5.i = phi i32 [ %i.aax, %._crit_edge.5.thread.i ], [ %.1.4.i, %._crit_edge.5.i ] ; 3 uses
  %i.aaz = load i64, ptr %i.bq, align 8, !tbaa !12
  %i.aba = lshr i64 %i.aaz, %i.bs
  %i.abb = and i64 %i.aba, %i.ac
  br label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %bb.af, %.lr.ph.preheader.6.i
  %indvars.iv.6.i = phi i64 [ 0, %.lr.ph.preheader.6.i ], [ %indvars.iv.next.6.i, %bb.af ] ; 3 uses
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.6.i
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !12
  %i.abe = icmp eq i64 %i.abb, %i.abd
  br i1 %i.abe, label %._crit_edge.6.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph.6.i
  %indvars.iv.next.6.i = add nuw nsw i64 %indvars.iv.6.i, 1 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %indvars.iv.next.6.i, %wide.trip.count.6.i.pre-phi
  br i1 %exitcond.6.not.i, label %._crit_edge.6.thread.i, label %.lr.ph.6.i, !llvm.loop !86

._crit_edge.6.i:                                  ; preds = %.lr.ph.6.i
  %i.abf = trunc nuw nsw i64 %indvars.iv.6.i to i32
  %i.abg = icmp eq i32 %.1.5.i, %i.abf
  br i1 %i.abg, label %._crit_edge.6.thread.i, label %If_Dec08CofCount.exit

._crit_edge.6.thread.i:                           ; preds = %bb.af, %._crit_edge.6.i
  %i.abh = add nuw nsw i32 %.1.5.i, 1
  br label %If_Dec08CofCount.exit

If_Dec08CofCount.exit:                            ; preds = %._crit_edge.6.i, %._crit_edge.6.thread.i
  %.1.6.i = phi i32 [ %i.abh, %._crit_edge.6.thread.i ], [ %.1.5.i, %._crit_edge.6.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.abi = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv290 ; 2 uses
  store i32 %.1.6.i, ptr %i.abi, align 4, !tbaa !9
  %i.abj = trunc nuw i64 %indvars.iv296 to i32
  %i.abk = shl nuw i32 1, %i.abj
  %i.abl = or i32 %i.fl, %i.abk
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv290
  store i32 %i.abl, ptr %i.abm, align 4, !tbaa !9
  %i.abn = icmp eq i32 %.1.6.i, 2
  %i.abo = icmp sgt i32 %.1.6.i, 5
  %or.cond = or i1 %i.abn, %i.abo
  br i1 %or.cond, label %.loopexit224, label %.preheader223

.preheader223:                                    ; preds = %If_Dec08CofCount.exit, %If_Dec08CofCount2.exit.thread
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %If_Dec08CofCount2.exit.thread ], [ 0, %If_Dec08CofCount.exit ] ; 2 uses
  %i.abp = sub nsw i64 %i.ci, %indvars.iv286      ; 4 uses
  %i.abq = icmp slt i64 %i.abp, 6
  br i1 %i.abq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.preheader223
  br i1 %i.bv, label %.lr.ph.i176, label %If_Dec08Cofactors.exit

.lr.ph.i176:                                      ; preds = %bb.ag
  %i.abr = trunc nsw i64 %i.abp to i32
  %i.abs = shl nuw nsw i32 1, %i.abr
  %i.abt = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.abp
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !12 ; 5 uses
  %i.abv = xor i64 %i.abu, -1                     ; 4 uses
  %i.abw = zext nneg i32 %i.abs to i64            ; 7 uses
  br i1 %min.iters.check448, label %scalar.ph447, label %vector.ph449

vector.ph449:                                     ; preds = %.lr.ph.i176
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.abu, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert451 = insertelement <2 x i64> poison, i64 %i.abv, i64 0
  %broadcast.splat452 = shufflevector <2 x i64> %broadcast.splatinsert451, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert453 = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %broadcast.splat454 = shufflevector <2 x i64> %broadcast.splatinsert453, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph449
  %index456 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body455 ] ; 4 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index456 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %wide.load = load <2 x i64>, ptr %i.abx, align 8, !tbaa !12 ; 2 uses
  %wide.load457 = load <2 x i64>, ptr %i.aby, align 8, !tbaa !12 ; 2 uses
  %i.abz = and <2 x i64> %wide.load, %broadcast.splat452 ; 2 uses
  %i.aca = and <2 x i64> %wide.load457, %broadcast.splat452 ; 2 uses
  %i.acb = shl <2 x i64> %i.abz, %broadcast.splat454
  %i.acc = shl <2 x i64> %i.aca, %broadcast.splat454
  %i.acd = or <2 x i64> %i.acb, %i.abz
  %i.ace = or <2 x i64> %i.acc, %i.aca
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index456 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  store <2 x i64> %i.acd, ptr %i.acf, align 16, !tbaa !12
  store <2 x i64> %i.ace, ptr %i.acg, align 16, !tbaa !12
  %i.ach = and <2 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.aci = and <2 x i64> %wide.load457, %broadcast.splat ; 2 uses
  %i.acj = lshr <2 x i64> %i.ach, %broadcast.splat454
  %i.ack = lshr <2 x i64> %i.aci, %broadcast.splat454
  %i.acl = or <2 x i64> %i.acj, %i.ach
  %i.acm = or <2 x i64> %i.ack, %i.aci
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index456 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  store <2 x i64> %i.acl, ptr %i.acn, align 16, !tbaa !12
  store <2 x i64> %i.acm, ptr %i.aco, align 16, !tbaa !12
  %index.next458 = add nuw i64 %index456, 4       ; 2 uses
end_hunk_0
