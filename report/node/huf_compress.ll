inline.NumInlined: 440
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 72
begin_hunk_0_@HUF_buildCTable_wksp:bb.a

.lr.ph120.i.prol.loopexit:                        ; preds = %.lr.ph120.i.prol.loopexit.unr-lcssa, %.lr.ph120.preheader.i
  %indvars.iv157.i.unr = phi i64 [ %i.jx, %.lr.ph120.preheader.i ], [ %indvars.iv.next158.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %.094118.i.unr = phi i32 [ %spec.store.select, %.lr.ph120.preheader.i ], [ %.195.i.prol, %.lr.ph120.i.prol.loopexit.unr-lcssa ]
  %i.kg = icmp eq i32 %indvars.iv155.i, 0
  br i1 %i.kg, label %.preheader112.i, label %.lr.ph120.i

.preheader112.i:                                  ; preds = %.lr.ph120.i.prol.loopexit, %bb.p, %bb.l
  %i.kh = icmp sgt i32 %i.jv, 0
  br i1 %i.kh, label %.lr.ph134.i, label %.preheader111.i

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.prol.loopexit, %bb.p
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.1, %bb.p ], [ %indvars.iv157.i.unr, %.lr.ph120.i.prol.loopexit ] ; 6 uses
  %.094118.i = phi i32 [ %.195.i.1, %bb.p ], [ %.094118.i.unr, %.lr.ph120.i.prol.loopexit ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv157.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !53
  %i.kl = zext i8 %i.kk to i32                    ; 3 uses
  %.not107.i = icmp ugt i32 %.094118.i, %i.kl
  br i1 %.not107.i, label %bb.n, label %.lr.ph120.i.1

bb.n:                                             ; preds = %.lr.ph120.i
  %i.km = sub nsw i32 %spec.store.select, %i.kl
  %i.kn = zext i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kn
  %i.kp = trunc nuw nsw i64 %indvars.iv157.i to i32
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !5
  br label %.lr.ph120.i.1

.lr.ph120.i.1:                                    ; preds = %bb.n, %.lr.ph120.i
  %.195.i = phi i32 [ %.094118.i, %.lr.ph120.i ], [ %i.kl, %bb.n ] ; 2 uses
  %i.kq = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv157.i
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !53
  %i.kt = zext i8 %i.ks to i32                    ; 3 uses
  %.not107.i.1 = icmp ugt i32 %.195.i, %i.kt
  br i1 %.not107.i.1, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph120.i.1
  %i.ku = sub nsw i32 %spec.store.select, %i.kt
  %i.kv = zext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.kv
  %i.kx = trunc i64 %indvars.iv157.i to i32
  %i.ky = add i32 %i.kx, -1
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph120.i.1
  %.195.i.1 = phi i32 [ %.195.i, %.lr.ph120.i.1 ], [ %i.kt, %bb.o ]
  %indvars.iv.next158.i.1 = add nsw i64 %indvars.iv157.i, -2
  %i.kz = icmp sgt i64 %indvars.iv157.i, 1
  br i1 %i.kz, label %.lr.ph120.i, label %.preheader112.i, !llvm.loop !59

.preheader111.i:                                  ; preds = %bb.u, %.preheader112.i
  %.187.lcssa.i = phi i32 [ %i.jv, %.preheader112.i ], [ %i.lz, %bb.u ] ; 2 uses
  %i.la = icmp slt i32 %.187.lcssa.i, 0
  br i1 %i.la, label %.lr.ph137.lr.ph.i, label %.outer._crit_edge.i

.lr.ph137.lr.ph.i:                                ; preds = %.preheader111.i
  %i.lb = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.promoted143.i = load i32, ptr %i.lb, align 4
  br label %.lr.ph137.i

.lr.ph134.i:                                      ; preds = %.preheader112.i, %bb.u
  %.187133.i = phi i32 [ %i.lz, %bb.u ], [ %i.jv, %.preheader112.i ] ; 2 uses
  %i.lc = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.187133.i, i1 true) ; 2 uses
  %.not145.i = icmp eq i32 %i.lc, 31
  br i1 %.not145.i, label %.lr.ph129.i.preheader, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %.lr.ph134.i
  %narrow.i = sub nuw nsw i32 32, %i.lc
  %i.ld = zext nneg i32 %narrow.i to i64
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %select.unfold.i, %.lr.ph122.preheader.i
  %indvars.iv160.i = phi i64 [ %i.ld, %.lr.ph122.preheader.i ], [ %indvars.iv.next161.i, %select.unfold.i ] ; 5 uses
  %i.le = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv160.i ; 2 uses
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !5  ; 2 uses
  %i.lg = getelementptr i8, ptr %i.le, i64 -4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !5  ; 2 uses
  %i.li = icmp eq i32 %i.lf, -252645136
  br i1 %i.li, label %select.unfold.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph122.i
  %i.lj = icmp eq i32 %i.lh, -252645136
  br i1 %i.lj, label %.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lk = zext i32 %i.lf to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.lk
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !43
  %i.ln = zext i32 %i.lh to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !43
  %i.lq = shl i32 %i.lp, 1
  %.not105.i = icmp ugt i32 %i.lm, %i.lq
  br i1 %.not105.i, label %select.unfold.i, label %.thread.i

select.unfold.i:                                  ; preds = %bb.r, %.lr.ph122.i
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, -1 ; 2 uses
  %i.lr = icmp ugt i64 %indvars.iv.next161.i, 1
  br i1 %i.lr, label %.lr.ph122.i, label %.lr.ph129.i.preheader, !llvm.loop !60

.thread.i:                                        ; preds = %bb.r, %bb.q
  %i.ls = trunc nuw nsw i64 %indvars.iv160.i to i32
  %i.lt = icmp ult i64 %indvars.iv160.i, 13
  br i1 %i.lt, label %.lr.ph129.i.preheader, label %.critedge.i

.lr.ph129.i.preheader:                            ; preds = %select.unfold.i, %.thread.i, %.lr.ph134.i
  %indvars.iv163.i.ph = phi i64 [ %indvars.iv160.i, %.thread.i ], [ 1, %.lr.ph134.i ], [ 1, %select.unfold.i ]
  br label %.lr.ph129.i

.lr.ph129.i:                                      ; preds = %.lr.ph129.i.preheader, %bb.s
  %indvars.iv163.i = phi i64 [ %indvars.iv.next164.i, %bb.s ], [ %indvars.iv163.i.ph, %.lr.ph129.i.preheader ] ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv163.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !5
  %i.lw = icmp eq i32 %i.lv, -252645136
  br i1 %i.lw, label %bb.s, label %.critedge.loopexit.split.loop.exit189.i

bb.s:                                             ; preds = %.lr.ph129.i
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next164.i, 13
  br i1 %exitcond.not.i34, label %.critedge.i, label %.lr.ph129.i, !llvm.loop !61

.critedge.loopexit.split.loop.exit189.i:          ; preds = %.lr.ph129.i
  %i.lx = trunc nuw nsw i64 %indvars.iv163.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %.critedge.loopexit.split.loop.exit189.i, %.thread.i
  %.192.lcssa.i = phi i32 [ %i.ls, %.thread.i ], [ %i.lx, %.critedge.loopexit.split.loop.exit189.i ], [ 13, %bb.s ] ; 3 uses
  %i.ly = add nsw i32 %.192.lcssa.i, -1           ; 2 uses
  %.neg.i = shl nsw i32 -1, %i.ly
  %i.lz = add nsw i32 %.neg.i, %.187133.i         ; 3 uses
  %i.ma = zext nneg i32 %.192.lcssa.i to i64
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ma ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !5  ; 4 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 7 ; 2 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !53
  %i.mh = add i8 %i.mg, 1
  store i8 %i.mh, ptr %i.mf, align 1, !tbaa !53
  %i.mi = zext nneg i32 %i.ly to i64
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mi ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !5  ; 2 uses
  %i.ml = icmp eq i32 %i.mk, -252645136
  %spec.store.select110.i = select i1 %i.ml, i32 %i.mc, i32 %i.mk
  store i32 %spec.store.select110.i, ptr %i.mj, align 4
  %i.mm = icmp eq i32 %i.mc, 0
  br i1 %i.mm, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i
  %i.mn = add i32 %i.mc, -1                       ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 7
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !53
  %i.ms = zext i8 %i.mr to i32
  %i.mt = sub nsw i32 %spec.store.select, %.192.lcssa.i
  %.not106.i = icmp eq i32 %i.mt, %i.ms
  %spec.store.select.i = select i1 %.not106.i, i32 %i.mn, i32 -252645136
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.critedge.i
  %storemerge.i33 = phi i32 [ %spec.store.select.i, %bb.t ], [ -252645136, %.critedge.i ]
  store i32 %storemerge.i33, ptr %i.mb, align 4
  %i.mu = icmp sgt i32 %i.lz, 0
  br i1 %i.mu, label %.lr.ph134.i, label %.preheader111.i, !llvm.loop !62

bb.v:                                             ; preds = %bb.w, %.lr.ph137.i
  %i.mv = phi i32 [ %i.nl, %.lr.ph137.i ], [ %i.nm, %bb.w ] ; 2 uses
  %.2136.i = phi i32 [ %.2.ph142.i, %.lr.ph137.i ], [ %i.ns, %bb.w ] ; 4 uses
  %i.mw = icmp eq i32 %i.mv, -252645136
  br i1 %i.mw, label %.preheader.i32, label %bb.w

.preheader.i32:                                   ; preds = %bb.v, %.preheader.i32
  %indvars.iv167.i = phi i64 [ %indvars.iv.next168.i, %.preheader.i32 ], [ %.290.ph141.i, %bb.v ] ; 4 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv167.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 7
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !53
  %i.na = zext i8 %i.mz to i32
  %i.nb = icmp eq i32 %spec.store.select, %i.na
  %indvars.iv.next168.i = add nsw i64 %indvars.iv167.i, -1
  br i1 %i.nb, label %.preheader.i32, label %.outer.i, !llvm.loop !63

.outer.i:                                         ; preds = %.preheader.i32
  %i.nc = trunc nsw i64 %indvars.iv167.i to i32
  %i.nd = add nsw i32 %i.nc, 1                    ; 2 uses
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ne
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 7 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !53
  %i.ni = add i8 %i.nh, -1
  store i8 %i.ni, ptr %i.ng, align 1, !tbaa !53
  %i.nj = add nuw nsw i32 %.2136.i, 1
  %i.nk = icmp slt i32 %.2136.i, -1
  br i1 %i.nk, label %.lr.ph137.i, label %.outer._crit_edge.i, !llvm.loop !64

.lr.ph137.i:                                      ; preds = %.outer.i, %.lr.ph137.lr.ph.i
  %i.nl = phi i32 [ %.promoted143.i, %.lr.ph137.lr.ph.i ], [ %i.nd, %.outer.i ]
  %.2.ph142.i = phi i32 [ %.187.lcssa.i, %.lr.ph137.lr.ph.i ], [ %i.nj, %.outer.i ]
  %.290.ph141.i = phi i64 [ %indvars.iv152.i, %.lr.ph137.lr.ph.i ], [ %indvars.iv167.i, %.outer.i ]
  br label %bb.v

bb.w:                                             ; preds = %bb.v
  %i.nm = add i32 %i.mv, 1                        ; 2 uses
  %i.nn = zext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 7 ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !53
  %i.nr = add i8 %i.nq, -1
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !53
  %i.ns = add nuw nsw i32 %.2136.i, 1
  %exitcond166.not.i = icmp eq i32 %.2136.i, -1
  br i1 %exitcond166.not.i, label %.outer._crit_edge.i, label %bb.v, !llvm.loop !64

.outer._crit_edge.i:                              ; preds = %.outer.i, %bb.w, %.preheader111.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  br label %HUF_setMaxHeight.exit

HUF_setMaxHeight.exit:                            ; preds = %HUF_buildTree.exit, %.outer._crit_edge.i
  %.0.i31 = phi i32 [ %spec.store.select, %.outer._crit_edge.i ], [ %i.ix, %HUF_buildTree.exit ] ; 6 uses
  %i.nt = icmp samesign ugt i32 %.0.i31, 12
  br i1 %i.nt, label %bb.z, label %bb.x

bb.x:                                             ; preds = %HUF_setMaxHeight.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.b, i8 0, i64 26, i1 false)
  %.not38.i = icmp slt i64 %indvars.iv.i24, 0
  br i1 %.not38.i, label %.preheader37.i, label %.lr.ph.preheader.i38

.lr.ph.preheader.i38:                             ; preds = %bb.x
  %i.nv = add nuw i64 %indvars.iv.i24, 1          ; 3 uses
  %wide.trip.count.i39 = and i64 %i.nv, 4294967295
  %i.nw = add nsw i64 %wide.trip.count.i39, -1
  %xtraiter120 = and i64 %i.nv, 3                 ; 3 uses
  %i.nx = icmp ult i64 %i.nw, 3
  br i1 %i.nx, label %.lr.ph.i40.epil.preheader, label %.lr.ph.preheader.i38.new

.lr.ph.preheader.i38.new:                         ; preds = %.lr.ph.preheader.i38
  %unroll_iter124 = and i64 %i.nv, 4294967292
  br label %.lr.ph.i40

.preheader37.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i40
  %lcmp.mod122.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %.preheader37.i, label %.lr.ph.i40.epil.preheader

.lr.ph.i40.epil.preheader:                        ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.preheader.i38
  %indvars.iv.i41.epil.init = phi i64 [ 0, %.lr.ph.preheader.i38 ], [ %indvars.iv.next.i42.3, %.preheader37.i.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i40.epil

.lr.ph.i40.epil:                                  ; preds = %.lr.ph.i40.epil, %.lr.ph.i40.epil.preheader
  %indvars.iv.i41.epil = phi i64 [ %indvars.iv.i41.epil.init, %.lr.ph.i40.epil.preheader ], [ %indvars.iv.next.i42.epil, %.lr.ph.i40.epil ] ; 2 uses
  %epil.iter121 = phi i64 [ 0, %.lr.ph.i40.epil.preheader ], [ %epil.iter121.next, %.lr.ph.i40.epil ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i41.epil
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 7
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !53
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ob ; 2 uses
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !34
  %i.oe = add i16 %i.od, 1
  store i16 %i.oe, ptr %i.oc, align 2, !tbaa !34
  %indvars.iv.next.i42.epil = add nuw nsw i64 %indvars.iv.i41.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %.preheader37.i, label %.lr.ph.i40.epil, !llvm.loop !65

.preheader37.i:                                   ; preds = %.preheader37.i.loopexit.unr-lcssa, %.lr.ph.i40.epil, %bb.x
  %.not.i44 = icmp eq i32 %.0.i31, 0
  br i1 %.not.i44, label %.preheader36.i.preheader, label %.lr.ph42.preheader.i

.lr.ph42.preheader.i:                             ; preds = %.preheader37.i
  %i.of = zext nneg i32 %.0.i31 to i64            ; 4 uses
  %xtraiter126 = and i64 %i.of, 3                 ; 3 uses
  %i.og = icmp ult i32 %.0.i31, 4
  br i1 %i.og, label %.lr.ph42.i.epil.preheader, label %.lr.ph42.preheader.i.new

.lr.ph42.preheader.i.new:                         ; preds = %.lr.ph42.preheader.i
  %unroll_iter130 = and i64 %i.of, 12
  br label %.lr.ph42.i

.lr.ph.i40:                                       ; preds = %.lr.ph.i40, %.lr.ph.preheader.i38.new
  %indvars.iv.i41 = phi i64 [ 0, %.lr.ph.preheader.i38.new ], [ %indvars.iv.next.i42.3, %.lr.ph.i40 ] ; 5 uses
  %niter125 = phi i64 [ 0, %.lr.ph.preheader.i38.new ], [ %niter125.next.3, %.lr.ph.i40 ]
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i41
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 7
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !53
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ok ; 2 uses
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !34
  %i.on = add i16 %i.om, 1
  store i16 %i.on, ptr %i.ol, align 2, !tbaa !34
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i41
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 15
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !53
  %i.or = zext i8 %i.oq to i64
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.or ; 2 uses
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !34
  %i.ou = add i16 %i.ot, 1
  store i16 %i.ou, ptr %i.os, align 2, !tbaa !34
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i41
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 23
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !53
  %i.oy = zext i8 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.oy ; 2 uses
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !34
  %i.pb = add i16 %i.pa, 1
  store i16 %i.pb, ptr %i.oz, align 2, !tbaa !34
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i41
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 31
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !53
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pf ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !34
  %i.pi = add i16 %i.ph, 1
  store i16 %i.pi, ptr %i.pg, align 2, !tbaa !34
  %indvars.iv.next.i42.3 = add nuw nsw i64 %indvars.iv.i41, 4 ; 2 uses
  %niter125.next.3 = add i64 %niter125, 4         ; 2 uses
  %niter125.ncmp.3 = icmp eq i64 %niter125.next.3, %unroll_iter124
  br i1 %niter125.ncmp.3, label %.preheader37.i.loopexit.unr-lcssa, label %.lr.ph.i40, !llvm.loop !66

.lr.ph42.i:                                       ; preds = %.lr.ph42.i, %.lr.ph42.preheader.i.new
  %indvars.iv46.i = phi i64 [ %i.of, %.lr.ph42.preheader.i.new ], [ %indvars.iv.next47.i.3, %.lr.ph42.i ] ; 6 uses
  %.041.i = phi i16 [ 0, %.lr.ph42.preheader.i.new ], [ %i.qc, %.lr.ph42.i ] ; 2 uses
  %niter131 = phi i64 [ 0, %.lr.ph42.preheader.i.new ], [ %niter131.next.3, %.lr.ph42.i ]
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i
  store i16 %.041.i, ptr %i.pj, align 2, !tbaa !34
  %i.pk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !34
  %i.pm = add i16 %i.pl, %.041.i
  %i.pn = lshr i16 %i.pm, 1                       ; 2 uses
  %indvars.iv.next47.i = add nsw i64 %indvars.iv46.i, -1 ; 2 uses
  %i.po = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !34
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i
  %i.pq = load i16, ptr %i.pp, align 2, !tbaa !34
  %i.pr = add i16 %i.pq, %i.pn
  %i.ps = lshr i16 %i.pr, 1                       ; 2 uses
  %indvars.iv.next47.i.1 = add nsw i64 %indvars.iv46.i, -2 ; 2 uses
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.1
  store i16 %i.ps, ptr %i.pt, align 2, !tbaa !34
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.1
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !34
  %i.pw = add i16 %i.pv, %i.ps
  %i.px = lshr i16 %i.pw, 1                       ; 2 uses
  %indvars.iv.next47.i.2 = add nsw i64 %indvars.iv46.i, -3 ; 2 uses
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.next47.i.2
  store i16 %i.px, ptr %i.py, align 2, !tbaa !34
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next47.i.2
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !34
  %i.qb = add i16 %i.qa, %i.px
  %i.qc = lshr i16 %i.qb, 1                       ; 2 uses
  %indvars.iv.next47.i.3 = add nsw i64 %indvars.iv46.i, -4 ; 2 uses
  %niter131.next.3 = add i64 %niter131, 4         ; 2 uses
  %niter131.ncmp.3.not = icmp eq i64 %niter131.next.3, %unroll_iter130
  br i1 %niter131.ncmp.3.not, label %.preheader36.i.preheader.loopexit.unr-lcssa, label %.lr.ph42.i, !llvm.loop !67

.preheader36.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph42.i
  %lcmp.mod128.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod128.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil.preheader

.lr.ph42.i.epil.preheader:                        ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.preheader.i
  %indvars.iv46.i.epil.init = phi i64 [ %i.of, %.lr.ph42.preheader.i ], [ %indvars.iv.next47.i.3, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %.041.i.epil.init = phi i16 [ 0, %.lr.ph42.preheader.i ], [ %i.qc, %.preheader36.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod129 = icmp ne i64 %xtraiter126, 0
  tail call void @llvm.assume(i1 %lcmp.mod129)
  br label %.lr.ph42.i.epil

.lr.ph42.i.epil:                                  ; preds = %.lr.ph42.i.epil, %.lr.ph42.i.epil.preheader
  %indvars.iv46.i.epil = phi i64 [ %indvars.iv46.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %indvars.iv.next47.i.epil, %.lr.ph42.i.epil ] ; 3 uses
  %.041.i.epil = phi i16 [ %.041.i.epil.init, %.lr.ph42.i.epil.preheader ], [ %i.qh, %.lr.ph42.i.epil ] ; 2 uses
  %epil.iter127 = phi i64 [ 0, %.lr.ph42.i.epil.preheader ], [ %epil.iter127.next, %.lr.ph42.i.epil ]
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv46.i.epil
  store i16 %.041.i.epil, ptr %i.qd, align 2, !tbaa !34
  %i.qe = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv46.i.epil
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !34
  %i.qg = add i16 %i.qf, %.041.i.epil
  %i.qh = lshr i16 %i.qg, 1
  %indvars.iv.next47.i.epil = add nsw i64 %indvars.iv46.i.epil, -1
  %epil.iter127.next = add i64 %epil.iter127, 1   ; 2 uses
  %epil.iter127.cmp.not = icmp eq i64 %epil.iter127.next, %xtraiter126
  br i1 %epil.iter127.cmp.not, label %.preheader36.i.preheader, label %.lr.ph42.i.epil, !llvm.loop !68

.preheader36.i.preheader:                         ; preds = %.preheader36.i.preheader.loopexit.unr-lcssa, %.lr.ph42.i.epil, %.preheader37.i
  %xtraiter132 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.qi = icmp ult i32 %2, 3
  br i1 %i.qi, label %.preheader36.i.epil.preheader, label %.preheader36.i.preheader.new

.preheader36.i.preheader.new:                     ; preds = %.preheader36.i.preheader
  %unroll_iter136 = and i64 %wide.trip.count.i, 508
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i, %.preheader36.i.preheader.new
  %indvars.iv48.i = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %indvars.iv.next49.i.3, %.preheader36.i ] ; 5 uses
  %niter137 = phi i64 [ 0, %.preheader36.i.preheader.new ], [ %niter137.next.3, %.preheader36.i ]
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 6
  %i.ql = load i8, ptr %i.qk, align 2, !tbaa !45
  %i.qm = zext i8 %i.ql to i64
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qj, i64 7
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !53
  %i.qq = zext i8 %i.qp to i64
  store i64 %i.qq, ptr %i.qn, align 8, !tbaa !17
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv48.i ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 14
  %i.qt = load i8, ptr %i.qs, align 2, !tbaa !45
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.qu
end_hunk_0
