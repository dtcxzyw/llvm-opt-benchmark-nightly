inline.NumInlined: 169
inline.NumDeleted: 85
begin_hunk_0_@_ZN6Assimp17DumpSceneToAssxmlEPKcS1_PNS_8IOSystemEPK7aiSceneb:bb.a

bb.eo:                                            ; preds = %bb.en
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.59, i32 noundef %i.un)
          to label %.preheader591.i.a unwind label %bb.ep

.preheader591.i.a:                                ; preds = %bb.eo
  %i.uo = load i32, ptr %i.um, align 4
  %.not729.i.a = icmp eq i32 %i.uo, 0
  br i1 %.not729.i.a, label %._crit_edge683.i, label %.lr.ph682.i

.lr.ph682.i:                                      ; preds = %.preheader591.i.a
  %i.up = getelementptr inbounds nuw i8, ptr %i.qy, i64 1048
  br label %bb.eq

._crit_edge683.i:                                 ; preds = %bb.er, %.preheader591.i.a
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.61)
          to label %bb.et unwind label %bb.ep

bb.ep:                                            ; preds = %bb.el, %bb.eo, %._crit_edge683.i, %bb.et
  %i.uq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.eq:                                            ; preds = %bb.er, %.lr.ph682.i
  %indvars.iv792.i = phi i64 [ 0, %.lr.ph682.i ], [ %indvars.iv.next793.i, %bb.er ] ; 2 uses
  %i.ur = load ptr, ptr %i.up, align 8
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.ur, i64 %indvars.iv792.i ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.uv = load float, ptr %i.uu, align 4
  %i.uw = fpext float %i.uv to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.60, i32 noundef %i.ut, double noundef %i.uw)
          to label %bb.er unwind label %bb.es

bb.er:                                            ; preds = %bb.eq
  %indvars.iv.next793.i = add nuw nsw i64 %indvars.iv792.i, 1 ; 2 uses
  %i.ux = load i32, ptr %i.um, align 4
  %i.uy = zext i32 %i.ux to i64
  %i.uz = icmp samesign ult i64 %indvars.iv.next793.i, %i.uy
  br i1 %i.uz, label %bb.eq, label %._crit_edge683.i, !llvm.loop !26

bb.es:                                            ; preds = %bb.eq
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.et:                                            ; preds = %._crit_edge683.i, %bb.en, %bb.em
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.62)
          to label %bb.eu unwind label %bb.ep

bb.eu:                                            ; preds = %bb.et
  %indvars.iv.next796.i = add nuw nsw i64 %indvars.iv795.i, 1 ; 2 uses
  %i.vb = load i32, ptr %i.qr, align 8
  %i.vc = zext i32 %i.vb to i64
  %i.vd = icmp samesign ult i64 %indvars.iv.next796.i, %i.vc
  br i1 %i.vd, label %bb.dy, label %._crit_edge686.i, !llvm.loop !27

bb.ev:                                            ; preds = %._crit_edge686.i, %bb.dv
  br i1 %4, label %bb.fe, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ve = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 3 uses
  %i.vf = load i32, ptr %i.ve, align 8            ; 2 uses
  %.not481.i = icmp eq i32 %i.vf, 0
  br i1 %.not481.i, label %bb.fe, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.64, i32 noundef %i.vf)
          to label %.preheader600.i unwind label %bb.dx

.preheader600.i:                                  ; preds = %bb.ex
  %i.vg = load i32, ptr %i.ve, align 8
  %.not730.i.a = icmp eq i32 %i.vg, 0
  br i1 %.not730.i.a, label %._crit_edge692.i, label %.lr.ph691.i

.lr.ph691.i:                                      ; preds = %.preheader600.i
  %i.vh = getelementptr inbounds nuw i8, ptr %i.qb, i64 208
  br label %bb.ey

._crit_edge692.i:                                 ; preds = %bb.fd, %.preheader600.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.68)
          to label %bb.fe unwind label %bb.dx

bb.ey:                                            ; preds = %bb.fd, %.lr.ph691.i
  %indvars.iv801.i = phi i64 [ 0, %.lr.ph691.i ], [ %indvars.iv.next802.i, %bb.fd ] ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8
  %i.vj = getelementptr inbounds nuw [16 x i8], ptr %i.vi, i64 %indvars.iv801.i ; 4 uses
  %i.vk = load i32, ptr %i.vj, align 8
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.65, i32 noundef %i.vk)
          to label %.preheader590.i unwind label %bb.ez

.preheader590.i:                                  ; preds = %bb.ey
  %i.vl = load i32, ptr %i.vj, align 8
  %.not731.i.a = icmp eq i32 %i.vl, 0
  br i1 %.not731.i.a, label %._crit_edge689.i, label %.lr.ph688.i

.lr.ph688.i:                                      ; preds = %.preheader590.i
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  br label %bb.fa

._crit_edge689.i:                                 ; preds = %bb.fb, %.preheader590.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.67)
          to label %bb.fd unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %._crit_edge689.i
  %i.vn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.fa:                                            ; preds = %bb.fb, %.lr.ph688.i
  %indvars.iv798.i = phi i64 [ 0, %.lr.ph688.i ], [ %indvars.iv.next799.i, %bb.fb ] ; 2 uses
  %i.vo = load ptr, ptr %i.vm, align 8
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %indvars.iv798.i
  %i.vq = load i32, ptr %i.vp, align 4
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.66, i32 noundef %i.vq)
          to label %bb.fb unwind label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %indvars.iv.next799.i = add nuw nsw i64 %indvars.iv798.i, 1 ; 2 uses
  %i.vr = load i32, ptr %i.vj, align 8
  %i.vs = zext i32 %i.vr to i64
  %i.vt = icmp samesign ult i64 %indvars.iv.next799.i, %i.vs
  br i1 %i.vt, label %bb.fa, label %._crit_edge689.i, !llvm.loop !28

bb.fc:                                            ; preds = %bb.fa
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

bb.fd:                                            ; preds = %._crit_edge689.i
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %i.vv = load i32, ptr %i.ve, align 8
  %i.vw = zext i32 %i.vv to i64
  %i.vx = icmp samesign ult i64 %indvars.iv.next802.i, %i.vw
  br i1 %i.vx, label %bb.ey, label %._crit_edge692.i, !llvm.loop !29

bb.fe:                                            ; preds = %._crit_edge692.i, %bb.ew, %bb.ev
  %i.vy = getelementptr inbounds nuw i8, ptr %i.qb, i64 16 ; 2 uses
  %i.vz = load ptr, ptr %i.vy, align 8
  %.not.i562.i = icmp ne ptr %i.vz, null
  %i.wa = getelementptr inbounds nuw i8, ptr %i.qb, i64 4 ; 40 uses
  %i.wb = load i32, ptr %i.wa, align 4            ; 3 uses
  %i.wc = icmp ne i32 %i.wb, 0
  %i.wd = select i1 %.not.i562.i, i1 %i.wc, i1 false
  br i1 %i.wd, label %bb.ff, label %bb.fj

bb.ff:                                            ; preds = %bb.fe
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.69, i32 noundef %i.wb)
          to label %bb.fg unwind label %bb.dx

bb.fg:                                            ; preds = %bb.ff
  br i1 %4, label %.loopexit599.i, label %.preheader598.i

.preheader598.i:                                  ; preds = %bb.fg
  %i.we = load i32, ptr %i.wa, align 4
  %.not732.i.a = icmp eq i32 %i.we, 0
  br i1 %.not732.i.a, label %.loopexit599.i, label %.lr.ph694.i

.lr.ph694.i:                                      ; preds = %.preheader598.i, %bb.fh
  %indvars.iv804.i = phi i64 [ %indvars.iv.next805.i, %bb.fh ], [ 0, %.preheader598.i ] ; 2 uses
  %i.wf = load ptr, ptr %i.vy, align 8
  %i.wg = getelementptr inbounds nuw [12 x i8], ptr %i.wf, i64 %indvars.iv804.i ; 3 uses
  %i.wh = load float, ptr %i.wg, align 4
  %i.wi = fpext float %i.wh to double
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  %i.wk = load float, ptr %i.wj, align 4
  %i.wl = fpext float %i.wk to double
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wn = load float, ptr %i.wm, align 4
  %i.wo = fpext float %i.wn to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, double noundef %i.wi, double noundef %i.wl, double noundef %i.wo)
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %.lr.ph694.i
  %indvars.iv.next805.i = add nuw nsw i64 %indvars.iv804.i, 1 ; 2 uses
  %i.wp = load i32, ptr %i.wa, align 4
  %i.wq = zext i32 %i.wp to i64
  %i.wr = icmp samesign ult i64 %indvars.iv.next805.i, %i.wq
  br i1 %i.wr, label %.lr.ph694.i, label %.loopexit599.i, !llvm.loop !30

bb.fi:                                            ; preds = %.lr.ph694.i
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit599.i:                                   ; preds = %bb.fh, %.preheader598.i, %bb.fg
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.71)
          to label %.loopexit599._crit_edge.i unwind label %bb.dx

.loopexit599._crit_edge.i:                        ; preds = %.loopexit599.i
  %.pre867.i = load i32, ptr %i.wa, align 4
  br label %bb.fj

bb.fj:                                            ; preds = %.loopexit599._crit_edge.i, %bb.fe
  %i.wt = phi i32 [ %.pre867.i, %.loopexit599._crit_edge.i ], [ %i.wb, %bb.fe ] ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.qb, i64 24 ; 2 uses
  %i.wv = load ptr, ptr %i.wu, align 8
  %.not.i563.i = icmp ne ptr %i.wv, null
  %i.ww = icmp ne i32 %i.wt, 0
  %i.wx = select i1 %.not.i563.i, i1 %i.ww, i1 false
  br i1 %i.wx, label %bb.fk, label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.72, i32 noundef %i.wt)
          to label %bb.fl unwind label %bb.dx

bb.fl:                                            ; preds = %bb.fk
  br i1 %4, label %.loopexit597.i, label %.preheader596.i

.preheader596.i:                                  ; preds = %bb.fl
  %i.wy = load i32, ptr %i.wa, align 4
  %.not733.i.a = icmp eq i32 %i.wy, 0
  br i1 %.not733.i.a, label %.loopexit597.i, label %.lr.ph696.i

.lr.ph696.i:                                      ; preds = %.preheader596.i, %bb.fm
  %indvars.iv807.i = phi i64 [ %indvars.iv.next808.i, %bb.fm ], [ 0, %.preheader596.i ] ; 2 uses
  %i.wz = load ptr, ptr %i.wu, align 8
  %i.xa = getelementptr inbounds nuw [12 x i8], ptr %i.wz, i64 %indvars.iv807.i ; 3 uses
  %i.xb = load float, ptr %i.xa, align 4
  %i.xc = fpext float %i.xb to double
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 4
  %i.xe = load float, ptr %i.xd, align 4
  %i.xf = fpext float %i.xe to double
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xa, i64 8
  %i.xh = load float, ptr %i.xg, align 4
  %i.xi = fpext float %i.xh to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, double noundef %i.xc, double noundef %i.xf, double noundef %i.xi)
          to label %bb.fm unwind label %bb.fn

bb.fm:                                            ; preds = %.lr.ph696.i
  %indvars.iv.next808.i = add nuw nsw i64 %indvars.iv807.i, 1 ; 2 uses
  %i.xj = load i32, ptr %i.wa, align 4
  %i.xk = zext i32 %i.xj to i64
  %i.xl = icmp samesign ult i64 %indvars.iv.next808.i, %i.xk
  br i1 %i.xl, label %.lr.ph696.i, label %.loopexit597.i, !llvm.loop !31

bb.fn:                                            ; preds = %.lr.ph696.i
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit597.i:                                   ; preds = %bb.fm, %.preheader596.i, %bb.fl
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.73)
          to label %bb.fo unwind label %bb.dx

bb.fo:                                            ; preds = %.loopexit597.i, %bb.fj
  %16 = getelementptr inbounds nuw i8, ptr %i.qb, i64 32 ; 2 uses
  %17 = load ptr, ptr %16, align 8
  %.not.i564.i = icmp eq ptr %17, null
  %i.xn = getelementptr inbounds nuw i8, ptr %i.qb, i64 40 ; 2 uses
  %i.xo = load ptr, ptr %i.xn, align 8
  %.not1.i.i = icmp eq ptr %i.xo, null
  %or.cond.i.i = select i1 %.not.i564.i, i1 true, i1 %.not1.i.i
  br i1 %or.cond.i.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.i

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.i:   ; preds = %bb.fo
  %i.xp = load i32, ptr %i.wa, align 4            ; 2 uses
  %.not584.i.a = icmp eq i32 %i.xp, 0
  br i1 %.not584.i.a, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.i
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.74, i32 noundef %i.xp)
          to label %bb.fq unwind label %bb.dx

bb.fq:                                            ; preds = %bb.fp
  br i1 %4, label %.loopexit595.i, label %.preheader594.i

.preheader594.i:                                  ; preds = %bb.fq
  %i.xq = load i32, ptr %i.wa, align 4
  %.not734.i.a = icmp eq i32 %i.xq, 0
  br i1 %.not734.i.a, label %.loopexit595.i, label %.lr.ph698.i

.lr.ph698.i:                                      ; preds = %.preheader594.i, %bb.fr
  %indvars.iv810.i = phi i64 [ %indvars.iv.next811.i, %bb.fr ], [ 0, %.preheader594.i ] ; 2 uses
  %i.xr = load ptr, ptr %16, align 8
  %i.xs = getelementptr inbounds nuw [12 x i8], ptr %i.xr, i64 %indvars.iv810.i ; 3 uses
  %i.xt = load float, ptr %i.xs, align 4
  %i.xu = fpext float %i.xt to double
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  %i.xw = load float, ptr %i.xv, align 4
  %i.xx = fpext float %i.xw to double
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xz = load float, ptr %i.xy, align 4
  %i.ya = fpext float %i.xz to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, double noundef %i.xu, double noundef %i.xx, double noundef %i.ya)
          to label %bb.fr unwind label %bb.fs

bb.fr:                                            ; preds = %.lr.ph698.i
  %indvars.iv.next811.i = add nuw nsw i64 %indvars.iv810.i, 1 ; 2 uses
  %i.yb = load i32, ptr %i.wa, align 4
  %i.yc = zext i32 %i.yb to i64
  %i.yd = icmp samesign ult i64 %indvars.iv.next811.i, %i.yc
  br i1 %i.yd, label %.lr.ph698.i, label %.loopexit595.i, !llvm.loop !32

bb.fs:                                            ; preds = %.lr.ph698.i
  %i.ye = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit595.i:                                   ; preds = %bb.fr, %.preheader594.i, %bb.fq
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.75)
          to label %bb.ft unwind label %bb.dx

bb.ft:                                            ; preds = %.loopexit595.i
  %i.yf = load i32, ptr %i.wa, align 4
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.76, i32 noundef %i.yf)
          to label %bb.fu unwind label %bb.dx

bb.fu:                                            ; preds = %bb.ft
  br i1 %4, label %.loopexit593.i, label %.preheader592.i

.preheader592.i:                                  ; preds = %bb.fu
  %i.yg = load i32, ptr %i.wa, align 4
  %.not735.i = icmp eq i32 %i.yg, 0
  br i1 %.not735.i, label %.loopexit593.i, label %.lr.ph700.i

.lr.ph700.i:                                      ; preds = %.preheader592.i, %bb.fv
  %indvars.iv813.i = phi i64 [ %indvars.iv.next814.i, %bb.fv ], [ 0, %.preheader592.i ] ; 2 uses
  %i.yh = load ptr, ptr %i.xn, align 8
  %i.yi = getelementptr inbounds nuw [12 x i8], ptr %i.yh, i64 %indvars.iv813.i ; 3 uses
  %i.yj = load float, ptr %i.yi, align 4
  %i.yk = fpext float %i.yj to double
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 4
  %i.ym = load float, ptr %i.yl, align 4
  %i.yn = fpext float %i.ym to double
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yp = load float, ptr %i.yo, align 4
  %i.yq = fpext float %i.yp to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, double noundef %i.yk, double noundef %i.yn, double noundef %i.yq)
          to label %bb.fv unwind label %bb.fw

bb.fv:                                            ; preds = %.lr.ph700.i
  %indvars.iv.next814.i = add nuw nsw i64 %indvars.iv813.i, 1 ; 2 uses
  %i.yr = load i32, ptr %i.wa, align 4
  %i.ys = zext i32 %i.yr to i64
  %i.yt = icmp samesign ult i64 %indvars.iv.next814.i, %i.ys
  br i1 %i.yt, label %.lr.ph700.i, label %.loopexit593.i, !llvm.loop !33

bb.fw:                                            ; preds = %.lr.ph700.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit593.i:                                   ; preds = %bb.fv, %.preheader592.i, %bb.fu
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.77)
          to label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i unwind label %bb.dx

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i: ; preds = %.loopexit593.i, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.i, %bb.fo
  %i.yv = getelementptr inbounds nuw i8, ptr %i.qb, i64 112
  %i.yw = getelementptr inbounds nuw i8, ptr %i.qb, i64 1312
  %i.yx = getelementptr inbounds nuw i8, ptr %i.qb, i64 176
  br label %bb.fx

bb.fx:                                            ; preds = %bb.gg, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i
  %indvars.iv822.i = phi i64 [ 0, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.i ], [ %indvars.iv.next823.i, %bb.gg ] ; 5 uses
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %indvars.iv822.i ; 3 uses
  %i.yz = load ptr, ptr %i.yy, align 8
  %.not483.i = icmp eq ptr %i.yz, null
  br i1 %.not483.i, label %bb.gh, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.za = load i32, ptr %i.wa, align 4
  %i.zb = load ptr, ptr %i.yw, align 8            ; 2 uses
  %i.zc = icmp eq ptr %i.zb, null
  br i1 %i.zc, label %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.thread.i, label %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.i

_ZNK6aiMesh20HasTextureCoordsNameEj.exit.i:       ; preds = %bb.fy
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.zb, i64 %indvars.iv822.i
  %i.ze = load ptr, ptr %i.zd, align 8            ; 2 uses
  %.not585.i = icmp eq ptr %i.ze, null
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %spec.select.i = select i1 %.not585.i, ptr @.str.18, ptr %i.zf
  br label %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.thread.i

_ZNK6aiMesh20HasTextureCoordsNameEj.exit.thread.i: ; preds = %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.i, %bb.fy
  %i.zg = phi ptr [ @.str.18, %bb.fy ], [ %spec.select.i, %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.i ]
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv822.i ; 2 uses
  %i.zi = load i32, ptr %i.zh, align 4
  %i.zj = trunc nuw nsw i64 %indvars.iv822.i to i32
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.78, i32 noundef %i.za, i32 noundef %i.zj, ptr noundef nonnull %i.zg, i32 noundef %i.zi)
          to label %bb.fz unwind label %bb.gb

bb.fz:                                            ; preds = %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.thread.i
  br i1 %4, label %.loopexit587.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.zk = load i32, ptr %i.zh, align 4
  %i.zl = icmp eq i32 %i.zk, 3
  %i.zm = load i32, ptr %i.wa, align 4
  %.not737.i.a = icmp eq i32 %i.zm, 0             ; 2 uses
  br i1 %i.zl, label %.preheader586.i, label %.preheader588.i

.preheader588.i:                                  ; preds = %bb.ga
  br i1 %.not737.i.a, label %.loopexit587.i, label %.lr.ph702.i

.preheader586.i:                                  ; preds = %bb.ga
  br i1 %.not737.i.a, label %.loopexit587.i, label %.lr.ph704.i

bb.gb:                                            ; preds = %_ZNK6aiMesh20HasTextureCoordsNameEj.exit.thread.i, %.loopexit587.i
  %i.zn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.lr.ph704.i:                                      ; preds = %.preheader586.i, %bb.gc
  %indvars.iv819.i = phi i64 [ %indvars.iv.next820.i, %bb.gc ], [ 0, %.preheader586.i ] ; 2 uses
  %i.zo = load ptr, ptr %i.yy, align 8
  %i.zp = getelementptr inbounds nuw [12 x i8], ptr %i.zo, i64 %indvars.iv819.i ; 3 uses
  %i.zq = load float, ptr %i.zp, align 4
  %i.zr = fpext float %i.zq to double
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %i.zt = load float, ptr %i.zs, align 4
  %i.zu = fpext float %i.zt to double
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.zw = load float, ptr %i.zv, align 4
  %i.zx = fpext float %i.zw to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.70, double noundef %i.zr, double noundef %i.zu, double noundef %i.zx)
          to label %bb.gc unwind label %bb.gd

bb.gc:                                            ; preds = %.lr.ph704.i
  %indvars.iv.next820.i = add nuw nsw i64 %indvars.iv819.i, 1 ; 2 uses
  %i.zy = load i32, ptr %i.wa, align 4
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = icmp samesign ult i64 %indvars.iv.next820.i, %i.zz
  br i1 %i.aaa, label %.lr.ph704.i, label %.loopexit587.i, !llvm.loop !34

bb.gd:                                            ; preds = %.lr.ph704.i
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.lr.ph702.i:                                      ; preds = %.preheader588.i, %bb.ge
  %indvars.iv816.i = phi i64 [ %indvars.iv.next817.i, %bb.ge ], [ 0, %.preheader588.i ] ; 2 uses
  %i.aac = load ptr, ptr %i.yy, align 8
  %i.aad = getelementptr inbounds nuw [12 x i8], ptr %i.aac, i64 %indvars.iv816.i ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4
  %i.aaf = fpext float %i.aae to double
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aad, i64 4
  %i.aah = load float, ptr %i.aag, align 4
  %i.aai = fpext float %i.aah to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.79, double noundef %i.aaf, double noundef %i.aai)
          to label %bb.ge unwind label %bb.gf

bb.ge:                                            ; preds = %.lr.ph702.i
  %indvars.iv.next817.i = add nuw nsw i64 %indvars.iv816.i, 1 ; 2 uses
  %i.aaj = load i32, ptr %i.wa, align 4
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = icmp samesign ult i64 %indvars.iv.next817.i, %i.aak
  br i1 %i.aal, label %.lr.ph702.i, label %.loopexit587.i, !llvm.loop !35

bb.gf:                                            ; preds = %.lr.ph702.i
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit587.i:                                   ; preds = %bb.ge, %bb.gc, %.preheader586.i, %.preheader588.i, %bb.fz
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.80)
          to label %bb.gg unwind label %bb.gb

bb.gg:                                            ; preds = %.loopexit587.i
  %indvars.iv.next823.i = add nuw nsw i64 %indvars.iv822.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next823.i, 8
  br i1 %exitcond.not.i, label %bb.gh, label %bb.fx, !llvm.loop !36

bb.gh:                                            ; preds = %bb.gg, %bb.fx
  %i.aan = getelementptr inbounds nuw i8, ptr %i.qb, i64 48 ; 2 uses
  %i.aao = load ptr, ptr %i.aan, align 8
  %.not484.i = icmp eq ptr %i.aao, null
  br i1 %.not484.i, label %bb.ho, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aap = load i32, ptr %i.wa, align 4
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.81, i32 noundef %i.aap, i32 noundef 0)
          to label %bb.gj unwind label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  br i1 %4, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.gj
  %i.aaq = load i32, ptr %i.wa, align 4
  %.not738.i = icmp eq i32 %i.aaq, 0
  br i1 %.not738.i, label %.loopexit.i, label %.lr.ph707.i

bb.gk:                                            ; preds = %bb.gi, %.loopexit.i, %bb.gn, %.loopexit.1.i, %bb.gr, %.loopexit.2.i, %bb.gv, %.loopexit.3.i, %bb.gz, %.loopexit.4.i, %bb.hd, %.loopexit.5.i, %bb.hh, %.loopexit.6.i, %bb.hl, %.loopexit.7.i
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.lr.ph707.i:                                      ; preds = %.preheader.i, %bb.gl
  %indvars.iv825.i = phi i64 [ %indvars.iv.next826.i, %bb.gl ], [ 0, %.preheader.i ] ; 2 uses
  %i.aas = load ptr, ptr %i.aan, align 8
  %i.aat = getelementptr inbounds nuw [16 x i8], ptr %i.aas, i64 %indvars.iv825.i ; 4 uses
  %i.aau = load float, ptr %i.aat, align 4
  %i.aav = fpext float %i.aau to double
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %i.aax = load float, ptr %i.aaw, align 4
  %i.aay = fpext float %i.aax to double
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aat, i64 8
  %i.aba = load float, ptr %i.aaz, align 4
  %i.abb = fpext float %i.aba to double
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aat, i64 12
  %i.abd = load float, ptr %i.abc, align 4
  %i.abe = fpext float %i.abd to double
  invoke void (ptr, ptr, ...) @_ZN6Assimp16AssxmlFileWriterL8ioprintfEPNS_8IOStreamEPKcz(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.82, double noundef %i.aav, double noundef %i.aay, double noundef %i.abb, double noundef %i.abe)
          to label %bb.gl unwind label %.loopexit832.i

bb.gl:                                            ; preds = %.lr.ph707.i
  %indvars.iv.next826.i = add nuw nsw i64 %indvars.iv825.i, 1 ; 2 uses
  %i.abf = load i32, ptr %i.wa, align 4
  %i.abg = zext i32 %i.abf to i64
  %i.abh = icmp samesign ult i64 %indvars.iv.next826.i, %i.abg
  br i1 %i.abh, label %.lr.ph707.i, label %.loopexit.i, !llvm.loop !37

.loopexit832.i:                                   ; preds = %.lr.ph707.i
  %lpad.loopexit834.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.i:                 ; preds = %.lr.ph707.1.i
  %lpad.loopexit837.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph707.2.i
  %lpad.loopexit840.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph707.3.i
  %lpad.loopexit843.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph707.4.i
  %lpad.loopexit846.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph707.5.i
  %lpad.loopexit849.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph707.6.i
  %lpad.loopexit852.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp833.i

.loopexit.split-lp833.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.lr.ph707.7.i
end_hunk_0
