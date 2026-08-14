inline.NumInlined: 30
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dvdsub_decode:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !54 ; 6 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !63 ; 5 uses
  %i.uy = icmp slt i32 %i.ux, 1
  br i1 %i.uy, label %find_smallest_bounding_rectangle.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 12
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !64 ; 6 uses
  %i.vb = icmp slt i32 %i.va, 1
  br i1 %i.vb, label %find_smallest_bounding_rectangle.exit.thread, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.cd
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !58 ; 4 uses
  %i.ve = icmp sgt i32 %i.vd, 0
  br i1 %i.ve, label %.lr.ph.i62, label %find_smallest_bounding_rectangle.exit.thread

.lr.ph.i62:                                       ; preds = %.preheader138.i
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !57 ; 3 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.d, i64 65896 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.vd to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.vi = icmp eq i32 %i.vd, 1
  br i1 %i.vi, label %.epil.preheader, label %.lr.ph.i62.new

.lr.ph.i62.new:                                   ; preds = %.lr.ph.i62
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ck, %.lr.ph.i62.new
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph.i62.new ], [ %indvars.iv.next.i66.1, %bb.ck ] ; 5 uses
  %.0148.i = phi i32 [ 1, %.lr.ph.i62.new ], [ %.1.i65.1, %bb.ck ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i62.new ], [ %niter.next.1, %bb.ck ]
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv.i63
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !34
  %i.vl = icmp ult i32 %i.vk, 16777216
  br i1 %i.vl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i63
  store i8 1, ptr %i.vm, align 2, !tbaa !31
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vh, i64 %indvars.iv.i63
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !31
  %.not102.i = icmp eq i8 %i.vo, 0
  %spec.select.i64 = select i1 %.not102.i, i32 %.0148.i, i32 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.i65 = phi i32 [ %.0148.i, %bb.cf ], [ %spec.select.i64, %bb.cg ] ; 2 uses
  %indvars.iv.next.i66 = or disjoint i64 %indvars.iv.i63, 1 ; 3 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv.next.i66
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !34
  %i.vr = icmp ult i32 %i.vq, 16777216
  br i1 %i.vr, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vh, i64 %indvars.iv.next.i66
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !31
  %.not102.i.1 = icmp eq i8 %i.vt, 0
  %spec.select.i64.1 = select i1 %.not102.i.1, i32 %.1.i65, i32 0
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.vu = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i66
  store i8 1, ptr %i.vu, align 1, !tbaa !31
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1.i65.1 = phi i32 [ %.1.i65, %bb.cj ], [ %spec.select.i64.1, %bb.ci ] ; 3 uses
  %indvars.iv.next.i66.1 = add nuw nsw i64 %indvars.iv.i63, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i68.unr-lcssa, label %bb.ce, !llvm.loop !68

._crit_edge.i68.unr-lcssa:                        ; preds = %bb.ck
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i68, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i68.unr-lcssa, %.lr.ph.i62
  %indvars.iv.i63.epil.init = phi i64 [ 0, %.lr.ph.i62 ], [ %indvars.iv.next.i66.1, %._crit_edge.i68.unr-lcssa ] ; 3 uses
  %.0148.i.epil.init = phi i32 [ 1, %.lr.ph.i62 ], [ %.1.i65.1, %._crit_edge.i68.unr-lcssa ] ; 2 uses
  %lcmp.mod171 = trunc i32 %i.vd to i1
  tail call void @llvm.assume(i1 %lcmp.mod171)
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.vg, i64 %indvars.iv.i63.epil.init
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !34
  %i.vx = icmp ult i32 %i.vw, 16777216
  br i1 %i.vx, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.epil.preheader
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vh, i64 %indvars.iv.i63.epil.init
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !31
  %.not102.i.epil = icmp eq i8 %i.vz, 0
  %spec.select.i64.epil = select i1 %.not102.i.epil, i32 %.0148.i.epil.init, i32 0
  br label %._crit_edge.i68

bb.cm:                                            ; preds = %.epil.preheader
  %i.wa = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i63.epil.init
  store i8 1, ptr %i.wa, align 1, !tbaa !31
  br label %._crit_edge.i68

._crit_edge.i68:                                  ; preds = %bb.cl, %bb.cm, %._crit_edge.i68.unr-lcssa
  %.1.i65.lcssa = phi i32 [ %.1.i65.1, %._crit_edge.i68.unr-lcssa ], [ %.0148.i.epil.init, %bb.cm ], [ %spec.select.i64.epil, %bb.cl ]
  %i.wb = icmp eq i32 %.1.i65.lcssa, 0
  br i1 %i.wb, label %.lr.ph150.i, label %find_smallest_bounding_rectangle.exit.thread

.lr.ph150.i:                                      ; preds = %._crit_edge.i68
  %i.wc = getelementptr inbounds nuw i8, ptr %i.uv, i64 24 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !57 ; 4 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.uv, i64 56
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !34
  %i.wg = sext i32 %i.wf to i64                   ; 4 uses
  %i.wh = zext nneg i32 %i.va to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.lr.ph150.i
  %indvars.iv178.i = phi i64 [ 0, %.lr.ph150.i ], [ %indvars.iv.next179.i, %bb.cp ] ; 6 uses
  %i.wi = mul nsw i64 %indvars.iv178.i, %i.wg
  %i.wj = getelementptr inbounds i8, ptr %i.wd, i64 %i.wi
  br label %.lr.ph.i.i69

.lr.ph.i.i69:                                     ; preds = %bb.co, %bb.cn
  %.010.i.i = phi i32 [ %i.wp, %bb.co ], [ 0, %bb.cn ]
  %.089.i.i = phi ptr [ %i.wo, %bb.co ], [ %i.wj, %bb.cn ] ; 2 uses
  %i.wk = load i8, ptr %.089.i.i, align 1, !tbaa !31
  %i.wl = zext i8 %i.wk to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !31
  %.not.i.i70 = icmp eq i8 %i.wn, 0
  br i1 %.not.i.i70, label %.critedge.i71, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i69
  %i.wo = getelementptr inbounds nuw i8, ptr %.089.i.i, i64 1
  %i.wp = add nuw nsw i32 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wp, %i.ux
  br i1 %exitcond.not.i.i, label %bb.cp, label %.lr.ph.i.i69, !llvm.loop !69

bb.cp:                                            ; preds = %bb.co
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next179.i, %i.wh
  br i1 %exitcond182.not.i, label %.critedge.thread.i, label %bb.cn, !llvm.loop !70

.critedge.i71:                                    ; preds = %.lr.ph.i.i69
  %i.wq = trunc nuw nsw i64 %indvars.iv178.i to i32 ; 3 uses
  %.not165.i = icmp eq i32 %i.va, 1
  br i1 %.not165.i, label %.critedge2.i, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %.critedge.i71
  %.087152.i = add nsw i32 %i.va, -1
  %i.wr = zext nneg i32 %.087152.i to i64
  br label %bb.cq

.critedge.thread.i:                               ; preds = %bb.cp
  tail call void @av_freep(ptr noundef nonnull %i.wc) #13
  %i.ws = load ptr, ptr %i.ut, align 8, !tbaa !52
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !54 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 12
  store i32 0, ptr %i.wu, align 4, !tbaa !64
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  store i32 0, ptr %i.wv, align 8, !tbaa !63
  br label %find_smallest_bounding_rectangle.exit.thread

bb.cq:                                            ; preds = %is_transp.exit109.i, %.lr.ph154.i
  %indvars.iv183.i = phi i64 [ %i.wr, %.lr.ph154.i ], [ %indvars.iv.next184.i, %is_transp.exit109.i ] ; 4 uses
  %i.ww = mul nsw i64 %indvars.iv183.i, %i.wg
  %i.wx = getelementptr inbounds i8, ptr %i.wd, i64 %i.ww
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %bb.cr, %bb.cq
  %.010.i105.i = phi i32 [ %i.xd, %bb.cr ], [ 0, %bb.cq ]
  %.089.i106.i = phi ptr [ %i.xc, %bb.cr ], [ %i.wx, %bb.cq ] ; 2 uses
  %i.wy = load i8, ptr %.089.i106.i, align 1, !tbaa !31
  %i.wz = zext i8 %i.wy to i64
  %i.xa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wz
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !31
  %.not.i107.i = icmp eq i8 %i.xb, 0
  br i1 %.not.i107.i, label %.critedge2.loopexit.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i104.i
  %i.xc = getelementptr inbounds nuw i8, ptr %.089.i106.i, i64 1
  %i.xd = add nuw nsw i32 %.010.i105.i, 1         ; 2 uses
  %exitcond.not.i108.i = icmp eq i32 %i.xd, %i.ux
  br i1 %exitcond.not.i108.i, label %is_transp.exit109.i, label %.lr.ph.i104.i, !llvm.loop !69

is_transp.exit109.i:                              ; preds = %bb.cr
  %indvars.iv.next184.i = add nsw i64 %indvars.iv183.i, -1
  %i.xe = icmp sgt i64 %indvars.iv183.i, 1
  br i1 %i.xe, label %bb.cq, label %.critedge2.i, !llvm.loop !71

.critedge2.loopexit.i:                            ; preds = %.lr.ph.i104.i
  %i.xf = trunc nsw i64 %indvars.iv183.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %is_transp.exit109.i, %.critedge2.loopexit.i, %.critedge.i71
  %.087144.i = phi i32 [ %i.xf, %.critedge2.loopexit.i ], [ 0, %.critedge.i71 ], [ 0, %is_transp.exit109.i ] ; 2 uses
  %i.xg = add nsw i32 %i.ux, -1                   ; 3 uses
  %.not166.i = icmp eq i32 %i.ux, 1
  br i1 %.not166.i, label %.critedge6.i, label %.lr.ph.i111.lr.ph.i

.lr.ph.i111.lr.ph.i:                              ; preds = %.critedge2.i
  %i.xh = zext nneg i32 %i.xg to i64
  br label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %bb.cu, %.lr.ph.i111.lr.ph.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph.i111.lr.ph.i ], [ %indvars.iv.next187.i, %bb.cu ] ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wd, i64 %indvars.iv186.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.lr.ph.i111.i
  %.010.i112.i = phi i32 [ 0, %.lr.ph.i111.i ], [ %i.xo, %bb.ct ]
  %.089.i113.i = phi ptr [ %i.xi, %.lr.ph.i111.i ], [ %i.xn, %bb.ct ] ; 2 uses
  %i.xj = load i8, ptr %.089.i113.i, align 1, !tbaa !31
  %i.xk = zext i8 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !31
  %.not.i114.i = icmp eq i8 %i.xm, 0
  br i1 %.not.i114.i, label %.critedge4.loopexit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xn = getelementptr inbounds i8, ptr %.089.i113.i, i64 %i.wg
  %i.xo = add nuw nsw i32 %.010.i112.i, 1         ; 2 uses
  %exitcond.not.i115.i = icmp eq i32 %i.xo, %i.va
  br i1 %exitcond.not.i115.i, label %bb.cu, label %bb.cs, !llvm.loop !69

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next187.i, %i.xh
  br i1 %exitcond191.not.i, label %.critedge4.i, label %.lr.ph.i111.i, !llvm.loop !72

.critedge4.loopexit.i:                            ; preds = %bb.cs
  %i.xp = trunc nuw nsw i64 %indvars.iv186.i to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.cu, %.critedge4.loopexit.i
  %.090142.i = phi i32 [ %i.xp, %.critedge4.loopexit.i ], [ %i.xg, %bb.cu ] ; 2 uses
  br label %.lr.ph.i118.i

.lr.ph.i118.i:                                    ; preds = %is_transp.exit123.i, %.critedge4.i
  %.089159.i = phi i32 [ %i.xg, %.critedge4.i ], [ %.089.i, %is_transp.exit123.i ] ; 4 uses
  %4 = zext nneg i32 %.089159.i to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wd, i64 %4
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %.lr.ph.i118.i
  %.010.i119.i = phi i32 [ 0, %.lr.ph.i118.i ], [ %i.xw, %bb.cw ]
  %.089.i120.i = phi ptr [ %i.xq, %.lr.ph.i118.i ], [ %i.xv, %bb.cw ] ; 2 uses
  %i.xr = load i8, ptr %.089.i120.i, align 1, !tbaa !31
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !31
  %.not.i121.i = icmp eq i8 %i.xu, 0
  br i1 %.not.i121.i, label %.critedge6.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xv = getelementptr inbounds i8, ptr %.089.i120.i, i64 %i.wg
  %i.xw = add nuw nsw i32 %.010.i119.i, 1         ; 2 uses
  %exitcond.not.i122.i = icmp eq i32 %i.xw, %i.va
  br i1 %exitcond.not.i122.i, label %is_transp.exit123.i, label %bb.cv, !llvm.loop !69

is_transp.exit123.i:                              ; preds = %bb.cw
  %.089.i = add nsw i32 %.089159.i, -1
  %i.xx = icmp sgt i32 %.089159.i, 1
  br i1 %i.xx, label %.lr.ph.i118.i, label %.critedge6.i, !llvm.loop !73

.critedge6.i:                                     ; preds = %is_transp.exit123.i, %bb.cv, %.critedge2.i
  %.090142216.i = phi i32 [ 0, %.critedge2.i ], [ %.090142.i, %bb.cv ], [ %.090142.i, %is_transp.exit123.i ] ; 3 uses
  %.089140.i = phi i32 [ 0, %.critedge2.i ], [ %.089159.i, %bb.cv ], [ 0, %is_transp.exit123.i ]
  %i.xy = sub nsw i32 %.089140.i, %.090142216.i
  %i.xz = add nsw i32 %i.xy, 1                    ; 4 uses
  %i.ya = sub i32 %.087144.i, %i.wq               ; 2 uses
  %i.yb = add i32 %i.ya, 1                        ; 4 uses
  %i.yc = mul nsw i32 %i.xz, %i.yb
  %i.yd = sext i32 %i.yc to i64
  %i.ye = tail call noalias ptr @av_malloc(i64 noundef %i.yd) #13 ; 5 uses
  %.not100.i = icmp eq ptr %i.ye, null
  br i1 %.not100.i, label %find_smallest_bounding_rectangle.exit, label %.preheader.i72

.preheader.i72:                                   ; preds = %.critedge6.i
  %.not101161.i = icmp slt i32 %i.ya, 0
  %.pre203.i = load ptr, ptr %i.ut, align 8, !tbaa !52
  %.pre204.i = load ptr, ptr %.pre203.i, align 8, !tbaa !54 ; 3 uses
  br i1 %.not101161.i, label %._crit_edge164.i, label %.lr.ph163.i

.lr.ph163.i:                                      ; preds = %.preheader.i72
  %i.yf = zext nneg i32 %.090142216.i to i64
  %i.yg = sext i32 %i.xz to i64                   ; 6 uses
  %wide.trip.count198.i = zext i32 %i.yb to i64   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 24
  %.pre200.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !57
  %.phi.trans.insert201.i = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 56
  %.pre202.i = load i32, ptr %.phi.trans.insert201.i, align 8, !tbaa !34
  %i.yh = getelementptr inbounds nuw i8, ptr %.pre200.i, i64 %i.yf ; 3 uses
  %i.yi = sext i32 %.pre202.i to i64              ; 3 uses
  %xtraiter173 = and i64 %wide.trip.count198.i, 1
  %i.yj = icmp eq i32 %.087144.i, %i.wq
  br i1 %i.yj, label %.epil.preheader172, label %.lr.ph163.i.new

.lr.ph163.i.new:                                  ; preds = %.lr.ph163.i
  %unroll_iter176 = and i64 %wide.trip.count198.i, 4294967294
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.lr.ph163.i.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph163.i.new ], [ %indvars.iv.next196.i.1, %bb.cx ] ; 4 uses
  %niter177 = phi i64 [ 0, %.lr.ph163.i.new ], [ %niter177.next.1, %bb.cx ]
  %i.yk = mul nsw i64 %indvars.iv195.i, %i.yg
  %i.yl = getelementptr inbounds i8, ptr %i.ye, i64 %i.yk
  %i.ym = add nuw nsw i64 %indvars.iv195.i, %indvars.iv178.i
  %i.yn = mul nsw i64 %i.ym, %i.yi
  %i.yo = getelementptr inbounds i8, ptr %i.yh, i64 %i.yn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yl, ptr align 1 %i.yo, i64 %i.yg, i1 false)
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.yp = mul nsw i64 %indvars.iv.next196.i, %i.yg
  %i.yq = getelementptr inbounds i8, ptr %i.ye, i64 %i.yp
  %i.yr = add nuw nsw i64 %indvars.iv.next196.i, %indvars.iv178.i
  %i.ys = mul nsw i64 %i.yr, %i.yi
  %i.yt = getelementptr inbounds i8, ptr %i.yh, i64 %i.ys
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yq, ptr align 1 %i.yt, i64 %i.yg, i1 false)
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 2 uses
  %niter177.next.1 = add i64 %niter177, 2         ; 2 uses
  %niter177.ncmp.1 = icmp eq i64 %niter177.next.1, %unroll_iter176
  br i1 %niter177.ncmp.1, label %._crit_edge164.i.loopexit.unr-lcssa, label %bb.cx, !llvm.loop !74

._crit_edge164.i.loopexit.unr-lcssa:              ; preds = %bb.cx
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %._crit_edge164.i, label %.epil.preheader172

.epil.preheader172:                               ; preds = %._crit_edge164.i.loopexit.unr-lcssa, %.lr.ph163.i
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph163.i ], [ %indvars.iv.next196.i.1, %._crit_edge164.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i32 %i.yb to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.yu = mul nsw i64 %indvars.iv195.i.epil.init, %i.yg
  %i.yv = getelementptr inbounds i8, ptr %i.ye, i64 %i.yu
  %i.yw = add nuw nsw i64 %indvars.iv195.i.epil.init, %indvars.iv178.i
  %i.yx = mul nsw i64 %i.yw, %i.yi
  %i.yy = getelementptr inbounds i8, ptr %i.yh, i64 %i.yx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yv, ptr align 1 %i.yy, i64 %i.yg, i1 false)
  br label %._crit_edge164.i

._crit_edge164.i:                                 ; preds = %.epil.preheader172, %._crit_edge164.i.loopexit.unr-lcssa, %.preheader.i72
  %i.yz = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.yz) #13
  %i.za = load ptr, ptr %i.ut, align 8, !tbaa !52
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !54 ; 7 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 24
  store ptr %i.ye, ptr %i.zc, align 8, !tbaa !57
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 56
  store i32 %i.xz, ptr %i.zd, align 8, !tbaa !34
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  store i32 %i.xz, ptr %i.ze, align 8, !tbaa !63
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zb, i64 12
  store i32 %i.yb, ptr %i.zf, align 4, !tbaa !64
  %i.zg = load i32, ptr %i.zb, align 8, !tbaa !61
  %i.zh = add nsw i32 %i.zg, %.090142216.i
  store i32 %i.zh, ptr %i.zb, align 8, !tbaa !61
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zb, i64 4 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !62
  %i.zk = add nsw i32 %i.zj, %i.wq
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !62
  br label %find_smallest_bounding_rectangle.exit

find_smallest_bounding_rectangle.exit.thread:     ; preds = %._crit_edge.i68, %bb.ca, %.critedge.thread.i, %bb.cd, %bb.cc, %bb.cb, %.preheader138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bz

find_smallest_bounding_rectangle.exit:            ; preds = %.critedge6.i, %._crit_edge164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.cy

bb.cy:                                            ; preds = %find_smallest_bounding_rectangle.exit, %decode_dvd_subtitles.exit.thread
  %i.zl = getelementptr inbounds nuw i8, ptr %i.d, i64 65892
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !75
  %.not46 = icmp eq i32 %i.zm, 0
  br i1 %.not46, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !52
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !54
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 72
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !66
  %i.zs = and i32 %i.zr, 1
  %.not47 = icmp eq i32 %i.zs, 0
  br i1 %.not47, label %bb.bz, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store i32 0, ptr %i.j, align 8, !tbaa !43
  store i32 1, ptr %2, align 4, !tbaa !34
  br label %bb.db

bb.db:                                            ; preds = %bb.f, %append_to_cached_buf.exit54, %decode_dvd_subtitles.exit.thread89, %bb.da, %reset_rects.exit
  %.1 = phi i32 [ -1094995529, %bb.f ], [ %.143, %reset_rects.exit ], [ %.143, %bb.da ], [ %.0.i53, %append_to_cached_buf.exit54 ], [ 0, %decode_dvd_subtitles.exit.thread89 ]
  ret i32 %.1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dvdsub_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65888
  store i32 0, ptr %i.c, align 8, !tbaa !43
  ret void
}

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare void @ff_dvdsub_parse_palette(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare i32 @ff_set_dimensions(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @av_free(ptr noundef) local_unnamed_addr #3

declare ptr @avpriv_fopen_utf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_rle(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 2, 8193) %1, i32 noundef range(i32 1, 4097) %2, i32 noundef range(i32 1, 2049) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef range(i32 0, 2147483647) %6, i32 noundef range(i32 10, -2147483648) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #10 {
bb.a:
  %.not = icmp samesign ult i32 %6, %7
  br i1 %.not, label %bb.b, label %.loopexit

end_hunk_0
