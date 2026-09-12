Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvdsubdec?download=true
inline.NumInlined: 30
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@dvdsub_decode:bb.a
bb.cc:                                            ; preds = %bb.cb
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !65 ; 6 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !71 ; 5 uses
  %i.uu = icmp slt i32 %i.ut, 1
  br i1 %i.uu, label %find_smallest_bounding_rectangle.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !72 ; 6 uses
  %i.ux = icmp slt i32 %i.uw, 1
  br i1 %i.ux, label %find_smallest_bounding_rectangle.exit.thread, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.cd
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !68 ; 4 uses
  %i.va = icmp sgt i32 %i.uz, 0
  br i1 %i.va, label %.lr.ph.i61, label %find_smallest_bounding_rectangle.exit.thread

.lr.ph.i61:                                       ; preds = %.preheader138.i
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !66 ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.d, i64 65896 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.uz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ve = icmp eq i32 %i.uz, 1
  br i1 %i.ve, label %.epil.preheader, label %.lr.ph.i61.new

.lr.ph.i61.new:                                   ; preds = %.lr.ph.i61
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.ce

bb.ce:                                            ; preds = %bb.ck, %.lr.ph.i61.new
  %indvars.iv.i62 = phi i64 [ 0, %.lr.ph.i61.new ], [ %indvars.iv.next.i65.1, %bb.ck ] ; 5 uses
  %.0148.i = phi i32 [ 1, %.lr.ph.i61.new ], [ %.1.i64.1, %bb.ck ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i61.new ], [ %niter.next.1, %bb.ck ]
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv.i62
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !32
  %i.vh = icmp ult i32 %i.vg, 16777216
  br i1 %i.vh, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.vi = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i62
  store i8 1, ptr %i.vi, align 2, !tbaa !29
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 %indvars.iv.i62
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !29
  %.not102.i = icmp eq i8 %i.vk, 0
  %spec.select.i63 = select i1 %.not102.i, i32 %.0148.i, i32 0
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.1.i64 = phi i32 [ %.0148.i, %bb.cf ], [ %spec.select.i63, %bb.cg ] ; 2 uses
  %indvars.iv.next.i65 = or disjoint i64 %indvars.iv.i62, 1 ; 3 uses
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv.next.i65
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !32
  %i.vn = icmp ult i32 %i.vm, 16777216
  br i1 %i.vn, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vd, i64 %indvars.iv.next.i65
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !29
  %.not102.i.1 = icmp eq i8 %i.vp, 0
  %spec.select.i63.1 = select i1 %.not102.i.1, i32 %.1.i64, i32 0
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.vq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i65
  store i8 1, ptr %i.vq, align 1, !tbaa !29
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.1.i64.1 = phi i32 [ %.1.i64, %bb.cj ], [ %spec.select.i63.1, %bb.ci ] ; 3 uses
  %indvars.iv.next.i65.1 = add nuw nsw i64 %indvars.iv.i62, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i67.unr-lcssa, label %bb.ce, !llvm.loop !46

._crit_edge.i67.unr-lcssa:                        ; preds = %bb.ck
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i67, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i67.unr-lcssa, %.lr.ph.i61
  %indvars.iv.i62.epil.init = phi i64 [ 0, %.lr.ph.i61 ], [ %indvars.iv.next.i65.1, %._crit_edge.i67.unr-lcssa ] ; 3 uses
  %.0148.i.epil.init = phi i32 [ 1, %.lr.ph.i61 ], [ %.1.i64.1, %._crit_edge.i67.unr-lcssa ] ; 2 uses
  %lcmp.mod169 = trunc i32 %i.uz to i1
  tail call void @llvm.assume(i1 %lcmp.mod169)
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vc, i64 %indvars.iv.i62.epil.init
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !32
  %i.vt = icmp ult i32 %i.vs, 16777216
  br i1 %i.vt, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.epil.preheader
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vd, i64 %indvars.iv.i62.epil.init
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !29
  %.not102.i.epil = icmp eq i8 %i.vv, 0
  %spec.select.i63.epil = select i1 %.not102.i.epil, i32 %.0148.i.epil.init, i32 0
  br label %._crit_edge.i67

bb.cm:                                            ; preds = %.epil.preheader
  %i.vw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i62.epil.init
  store i8 1, ptr %i.vw, align 1, !tbaa !29
  br label %._crit_edge.i67

._crit_edge.i67:                                  ; preds = %bb.cl, %bb.cm, %._crit_edge.i67.unr-lcssa
  %.1.i64.lcssa = phi i32 [ %.1.i64.1, %._crit_edge.i67.unr-lcssa ], [ %.0148.i.epil.init, %bb.cm ], [ %spec.select.i63.epil, %bb.cl ]
  %i.vx = icmp eq i32 %.1.i64.lcssa, 0
  br i1 %i.vx, label %.lr.ph150.i, label %find_smallest_bounding_rectangle.exit.thread

.lr.ph150.i:                                      ; preds = %._crit_edge.i67
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ur, i64 24 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !66 ; 4 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ur, i64 56
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !32
  %i.wc = sext i32 %i.wb to i64                   ; 4 uses
  %i.wd = zext nneg i32 %i.uw to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.lr.ph150.i
  %indvars.iv178.i = phi i64 [ 0, %.lr.ph150.i ], [ %indvars.iv.next179.i, %bb.cp ] ; 6 uses
  %i.we = mul nsw i64 %indvars.iv178.i, %i.wc
  %i.wf = getelementptr inbounds i8, ptr %i.vz, i64 %i.we
  br label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %bb.co, %bb.cn
  %.010.i.i = phi i32 [ %i.wl, %bb.co ], [ 0, %bb.cn ]
  %.089.i.i = phi ptr [ %i.wk, %bb.co ], [ %i.wf, %bb.cn ] ; 2 uses
  %i.wg = load i8, ptr %.089.i.i, align 1, !tbaa !29
  %i.wh = zext i8 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wh
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !29
  %.not.i.i69 = icmp eq i8 %i.wj, 0
  br i1 %.not.i.i69, label %.critedge.i70, label %bb.co

bb.co:                                            ; preds = %.lr.ph.i.i68
  %i.wk = getelementptr inbounds nuw i8, ptr %.089.i.i, i64 1
  %i.wl = add nuw nsw i32 %.010.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.wl, %i.ut
  br i1 %exitcond.not.i.i, label %bb.cp, label %.lr.ph.i.i68, !llvm.loop !47

bb.cp:                                            ; preds = %bb.co
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next179.i, %i.wd
  br i1 %exitcond182.not.i, label %.critedge.thread.i, label %bb.cn, !llvm.loop !48

.critedge.i70:                                    ; preds = %.lr.ph.i.i68
  %i.wm = trunc nuw nsw i64 %indvars.iv178.i to i32 ; 3 uses
  %.not165.i = icmp eq i32 %i.uw, 1
  br i1 %.not165.i, label %.critedge2.i, label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %.critedge.i70
  %.088152.i = add nsw i32 %i.uw, -1
  %i.wn = zext nneg i32 %.088152.i to i64
  br label %bb.cq

.critedge.thread.i:                               ; preds = %bb.cp
  tail call void @av_freep(ptr noundef nonnull %i.vy) #13
  %i.wo = load ptr, ptr %i.up, align 8, !tbaa !62
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !65 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 12
  store i32 0, ptr %i.wq, align 4, !tbaa !72
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store i32 0, ptr %i.wr, align 8, !tbaa !71
  br label %find_smallest_bounding_rectangle.exit.thread

bb.cq:                                            ; preds = %is_transp.exit109.i, %.lr.ph154.i
  %indvars.iv183.i = phi i64 [ %i.wn, %.lr.ph154.i ], [ %indvars.iv.next184.i, %is_transp.exit109.i ] ; 4 uses
  %i.ws = mul nsw i64 %indvars.iv183.i, %i.wc
  %i.wt = getelementptr inbounds i8, ptr %i.vz, i64 %i.ws
  br label %.lr.ph.i104.i

.lr.ph.i104.i:                                    ; preds = %bb.cr, %bb.cq
  %.010.i105.i = phi i32 [ %i.wz, %bb.cr ], [ 0, %bb.cq ]
  %.089.i106.i = phi ptr [ %i.wy, %bb.cr ], [ %i.wt, %bb.cq ] ; 2 uses
  %i.wu = load i8, ptr %.089.i106.i, align 1, !tbaa !29
  %i.wv = zext i8 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !29
  %.not.i107.i = icmp eq i8 %i.wx, 0
  br i1 %.not.i107.i, label %.critedge2.loopexit.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i104.i
  %i.wy = getelementptr inbounds nuw i8, ptr %.089.i106.i, i64 1
  %i.wz = add nuw nsw i32 %.010.i105.i, 1         ; 2 uses
  %exitcond.not.i108.i = icmp eq i32 %i.wz, %i.ut
  br i1 %exitcond.not.i108.i, label %is_transp.exit109.i, label %.lr.ph.i104.i, !llvm.loop !47

is_transp.exit109.i:                              ; preds = %bb.cr
  %indvars.iv.next184.i = add nsw i64 %indvars.iv183.i, -1
  %i.xa = icmp sgt i64 %indvars.iv183.i, 1
  br i1 %i.xa, label %bb.cq, label %.critedge2.i, !llvm.loop !49

.critedge2.loopexit.i:                            ; preds = %.lr.ph.i104.i
  %i.xb = trunc nsw i64 %indvars.iv183.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %is_transp.exit109.i, %.critedge2.loopexit.i, %.critedge.i70
  %.088144.i = phi i32 [ %i.xb, %.critedge2.loopexit.i ], [ 0, %.critedge.i70 ], [ 0, %is_transp.exit109.i ] ; 2 uses
  %i.xc = add nsw i32 %i.ut, -1                   ; 2 uses
  %.not166.i = icmp eq i32 %i.ut, 1
  br i1 %.not166.i, label %.critedge6.i, label %.lr.ph.i111.lr.ph.i

.lr.ph.i111.lr.ph.i:                              ; preds = %.critedge2.i
  %i.xd = zext nneg i32 %i.xc to i64              ; 2 uses
  br label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %bb.cu, %.lr.ph.i111.lr.ph.i
  %indvars.iv186.i = phi i64 [ 0, %.lr.ph.i111.lr.ph.i ], [ %indvars.iv.next187.i, %bb.cu ] ; 3 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vz, i64 %indvars.iv186.i
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.lr.ph.i111.i
  %.010.i112.i = phi i32 [ 0, %.lr.ph.i111.i ], [ %i.xk, %bb.ct ]
  %.089.i113.i = phi ptr [ %i.xe, %.lr.ph.i111.i ], [ %i.xj, %bb.ct ] ; 2 uses
  %i.xf = load i8, ptr %.089.i113.i, align 1, !tbaa !29
  %i.xg = zext i8 %i.xf to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xg
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !29
  %.not.i114.i = icmp eq i8 %i.xi, 0
  br i1 %.not.i114.i, label %.critedge4.loopexit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xj = getelementptr inbounds i8, ptr %.089.i113.i, i64 %i.wc
  %i.xk = add nuw nsw i32 %.010.i112.i, 1         ; 2 uses
  %exitcond.not.i115.i = icmp eq i32 %i.xk, %i.uw
  br i1 %exitcond.not.i115.i, label %bb.cu, label %bb.cs, !llvm.loop !47

bb.cu:                                            ; preds = %bb.ct
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next187.i, %i.xd
  br i1 %exitcond191.not.i, label %.critedge4.i, label %.lr.ph.i111.i, !llvm.loop !50

.critedge4.loopexit.i:                            ; preds = %bb.cs
  %i.xl = trunc nuw nsw i64 %indvars.iv186.i to i32
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %bb.cu, %.critedge4.loopexit.i
  %.087142.i = phi i32 [ %i.xl, %.critedge4.loopexit.i ], [ %i.xc, %bb.cu ] ; 2 uses
  br label %.lr.ph.i118.i

.lr.ph.i118.i:                                    ; preds = %is_transp.exit123.i, %.critedge4.i
  %indvars.iv192.i = phi i64 [ %i.xd, %.critedge4.i ], [ %indvars.iv.next193.i, %is_transp.exit123.i ] ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.vz, i64 %indvars.iv192.i
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cw, %.lr.ph.i118.i
  %.010.i119.i = phi i32 [ 0, %.lr.ph.i118.i ], [ %i.xs, %bb.cw ]
  %.089.i120.i = phi ptr [ %i.xm, %.lr.ph.i118.i ], [ %i.xr, %bb.cw ] ; 2 uses
  %i.xn = load i8, ptr %.089.i120.i, align 1, !tbaa !29
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !29
  %.not.i121.i = icmp eq i8 %i.xq, 0
  br i1 %.not.i121.i, label %.critedge6.loopexit.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.xr = getelementptr inbounds i8, ptr %.089.i120.i, i64 %i.wc
  %i.xs = add nuw nsw i32 %.010.i119.i, 1         ; 2 uses
  %exitcond.not.i122.i = icmp eq i32 %i.xs, %i.uw
  br i1 %exitcond.not.i122.i, label %is_transp.exit123.i, label %bb.cv, !llvm.loop !47

is_transp.exit123.i:                              ; preds = %bb.cw
  %indvars.iv.next193.i = add nsw i64 %indvars.iv192.i, -1
  %4 = trunc nuw i64 %indvars.iv192.i to i32
  %i.xt = icmp sgt i32 %4, 1
  br i1 %i.xt, label %.lr.ph.i118.i, label %.critedge6.i, !llvm.loop !51

.critedge6.loopexit.i:                            ; preds = %bb.cv
  %5 = trunc nuw i64 %indvars.iv192.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %is_transp.exit123.i, %.critedge6.loopexit.i, %.critedge2.i
  %.087142216.i = phi i32 [ %.087142.i, %.critedge6.loopexit.i ], [ 0, %.critedge2.i ], [ %.087142.i, %is_transp.exit123.i ] ; 3 uses
  %.086140.i = phi i32 [ %5, %.critedge6.loopexit.i ], [ 0, %.critedge2.i ], [ 0, %is_transp.exit123.i ]
  %i.xu = sub nsw i32 %.086140.i, %.087142216.i
  %i.xv = add nsw i32 %i.xu, 1                    ; 4 uses
  %i.xw = sub i32 %.088144.i, %i.wm               ; 2 uses
  %i.xx = add i32 %i.xw, 1                        ; 4 uses
  %i.xy = mul nsw i32 %i.xv, %i.xx
  %i.xz = sext i32 %i.xy to i64
  %i.ya = tail call noalias ptr @av_malloc(i64 noundef %i.xz) #13 ; 5 uses
  %.not100.i = icmp eq ptr %i.ya, null
  br i1 %.not100.i, label %find_smallest_bounding_rectangle.exit, label %.preheader.i71

.preheader.i71:                                   ; preds = %.critedge6.i
  %.not101161.i = icmp slt i32 %i.xw, 0
  %.pre203.i = load ptr, ptr %i.up, align 8, !tbaa !62
  %.pre204.i = load ptr, ptr %.pre203.i, align 8, !tbaa !65 ; 3 uses
  br i1 %.not101161.i, label %._crit_edge164.i, label %.lr.ph163.i

.lr.ph163.i:                                      ; preds = %.preheader.i71
  %i.yb = zext nneg i32 %.087142216.i to i64
  %i.yc = sext i32 %i.xv to i64                   ; 6 uses
  %wide.trip.count198.i = zext i32 %i.xx to i64   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 24
  %.pre200.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !66
  %.phi.trans.insert201.i = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 56
  %.pre202.i = load i32, ptr %.phi.trans.insert201.i, align 8, !tbaa !32
  %i.yd = getelementptr inbounds nuw i8, ptr %.pre200.i, i64 %i.yb ; 3 uses
  %i.ye = sext i32 %.pre202.i to i64              ; 3 uses
  %xtraiter171 = and i64 %wide.trip.count198.i, 1
  %i.yf = icmp eq i32 %.088144.i, %i.wm
  br i1 %i.yf, label %.epil.preheader170, label %.lr.ph163.i.new

.lr.ph163.i.new:                                  ; preds = %.lr.ph163.i
  %unroll_iter174 = and i64 %wide.trip.count198.i, 4294967294
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.lr.ph163.i.new
  %indvars.iv195.i = phi i64 [ 0, %.lr.ph163.i.new ], [ %indvars.iv.next196.i.1, %bb.cx ] ; 4 uses
  %niter175 = phi i64 [ 0, %.lr.ph163.i.new ], [ %niter175.next.1, %bb.cx ]
  %i.yg = mul nsw i64 %indvars.iv195.i, %i.yc
  %i.yh = getelementptr inbounds i8, ptr %i.ya, i64 %i.yg
  %i.yi = add nuw nsw i64 %indvars.iv195.i, %indvars.iv178.i
  %i.yj = mul nsw i64 %i.yi, %i.ye
  %i.yk = getelementptr inbounds i8, ptr %i.yd, i64 %i.yj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yh, ptr align 1 %i.yk, i64 %i.yc, i1 false)
  %indvars.iv.next196.i = or disjoint i64 %indvars.iv195.i, 1 ; 2 uses
  %i.yl = mul nsw i64 %indvars.iv.next196.i, %i.yc
  %i.ym = getelementptr inbounds i8, ptr %i.ya, i64 %i.yl
  %i.yn = add nuw nsw i64 %indvars.iv.next196.i, %indvars.iv178.i
  %i.yo = mul nsw i64 %i.yn, %i.ye
  %i.yp = getelementptr inbounds i8, ptr %i.yd, i64 %i.yo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ym, ptr align 1 %i.yp, i64 %i.yc, i1 false)
  %indvars.iv.next196.i.1 = add nuw nsw i64 %indvars.iv195.i, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %._crit_edge164.i.loopexit.unr-lcssa, label %bb.cx, !llvm.loop !52

._crit_edge164.i.loopexit.unr-lcssa:              ; preds = %bb.cx
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %._crit_edge164.i, label %.epil.preheader170

.epil.preheader170:                               ; preds = %._crit_edge164.i.loopexit.unr-lcssa, %.lr.ph163.i
  %indvars.iv195.i.epil.init = phi i64 [ 0, %.lr.ph163.i ], [ %indvars.iv.next196.i.1, %._crit_edge164.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod173 = trunc i32 %i.xx to i1
  tail call void @llvm.assume(i1 %lcmp.mod173)
  %i.yq = mul nsw i64 %indvars.iv195.i.epil.init, %i.yc
  %i.yr = getelementptr inbounds i8, ptr %i.ya, i64 %i.yq
  %i.ys = add nuw nsw i64 %indvars.iv195.i.epil.init, %indvars.iv178.i
  %i.yt = mul nsw i64 %i.ys, %i.ye
  %i.yu = getelementptr inbounds i8, ptr %i.yd, i64 %i.yt
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yr, ptr align 1 %i.yu, i64 %i.yc, i1 false)
  br label %._crit_edge164.i

._crit_edge164.i:                                 ; preds = %.epil.preheader170, %._crit_edge164.i.loopexit.unr-lcssa, %.preheader.i71
  %i.yv = getelementptr inbounds nuw i8, ptr %.pre204.i, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.yv) #13
  %i.yw = load ptr, ptr %i.up, align 8, !tbaa !62
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !65 ; 7 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  store ptr %i.ya, ptr %i.yy, align 8, !tbaa !66
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 56
  store i32 %i.xv, ptr %i.yz, align 8, !tbaa !32
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  store i32 %i.xv, ptr %i.za, align 8, !tbaa !71
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 12
  store i32 %i.xx, ptr %i.zb, align 4, !tbaa !72
  %i.zc = load i32, ptr %i.yx, align 8, !tbaa !69
  %i.zd = add nsw i32 %i.zc, %.087142216.i
  store i32 %i.zd, ptr %i.yx, align 8, !tbaa !69
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yx, i64 4 ; 2 uses
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !70
  %i.zg = add nsw i32 %i.zf, %i.wm
  store i32 %i.zg, ptr %i.ze, align 4, !tbaa !70
  br label %find_smallest_bounding_rectangle.exit

find_smallest_bounding_rectangle.exit.thread:     ; preds = %._crit_edge.i67, %bb.ca, %.critedge.thread.i, %bb.cd, %bb.cc, %bb.cb, %.preheader138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.bz

find_smallest_bounding_rectangle.exit:            ; preds = %.critedge6.i, %._crit_edge164.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.cy

bb.cy:                                            ; preds = %find_smallest_bounding_rectangle.exit, %decode_dvd_subtitles.exit.thread
  %i.zh = getelementptr inbounds nuw i8, ptr %i.d, i64 65892
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !75
  %.not46 = icmp eq i32 %i.zi, 0
  br i1 %.not46, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.zj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !62
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !65
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 72
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !74
  %i.zo = and i32 %i.zn, 1
  %.not47 = icmp eq i32 %i.zo, 0
  br i1 %.not47, label %bb.bz, label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  store i32 0, ptr %i.j, align 8, !tbaa !34
  store i32 1, ptr %2, align 4, !tbaa !32
  br label %bb.db

bb.db:                                            ; preds = %bb.f, %append_to_cached_buf.exit53, %decode_dvd_subtitles.exit.thread88, %bb.da, %reset_rects.exit
  %.143 = phi i32 [ -1094995529, %bb.f ], [ %.139, %reset_rects.exit ], [ %.139, %bb.da ], [ %.0.i52, %append_to_cached_buf.exit53 ], [ 0, %decode_dvd_subtitles.exit.thread88 ]
  ret i32 %.143
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @dvdsub_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65888
  store i32 0, ptr %i.c, align 8, !tbaa !34
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
