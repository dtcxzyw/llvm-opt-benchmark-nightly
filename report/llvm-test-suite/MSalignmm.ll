Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/MSalignmm?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@MSalignmm_rec:bb.a
  %i.tr = icmp eq i64 %index.next83, %n.vec74
  br i1 %i.tr, label %middle.block84, label %vector.body75, !llvm.loop !94

middle.block84:                                   ; preds = %vector.body75
  %cmp.n85 = icmp eq i64 %i.sz, %n.vec74
  br i1 %cmp.n85, label %.lr.ph32, label %.lr.ph30.preheader380

.lr.ph30.preheader380:                            ; preds = %vector.memcheck59, %.lr.ph30.preheader, %middle.block84
  %indvars.iv144.ph = phi i64 [ 1, %vector.memcheck59 ], [ 1, %.lr.ph30.preheader ], [ %i.tf, %middle.block84 ] ; 5 uses
  %i.ts = and i64 %wide.trip.count147, 1
  %lcmp.mod391.not.not = icmp eq i64 %i.ts, 0
  br i1 %lcmp.mod391.not.not, label %.lr.ph30.prol, label %.lr.ph30.prol.loopexit

.lr.ph30.prol:                                    ; preds = %.lr.ph30.preheader380
  %i.tt = load float, ptr %i.l, align 4, !tbaa !13
  %i.tu = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144.ph
  %i.tv = getelementptr i8, ptr %i.tu, i64 -4
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !13
  %i.tx = fadd float %i.tt, %i.tw
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv144.ph ; 2 uses
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !13
  %i.ua = fadd float %i.tz, %i.tx
  store float %i.ua, ptr %i.ty, align 4, !tbaa !13
  %indvars.iv.next145.prol = add nuw nsw i64 %indvars.iv144.ph, 1
  br label %.lr.ph30.prol.loopexit

.lr.ph30.prol.loopexit:                           ; preds = %.lr.ph30.prol, %.lr.ph30.preheader380
  %indvars.iv144.unr = phi i64 [ %indvars.iv144.ph, %.lr.ph30.preheader380 ], [ %indvars.iv.next145.prol, %.lr.ph30.prol ]
  %i.ub = add nsw i64 %wide.trip.count147, -1
  %i.uc = icmp eq i64 %indvars.iv144.ph, %i.ub
  br i1 %i.uc, label %.lr.ph32, label %.lr.ph30

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.1, %.lr.ph28 ], [ %indvars.iv139.unr, %.lr.ph28.prol.loopexit ] ; 4 uses
  %i.ud = load float, ptr %i.e, align 4, !tbaa !13
  %i.ue = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv139
  %i.uf = getelementptr i8, ptr %i.ue, i64 -4
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !13
  %i.uh = fadd float %i.ud, %i.ug
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv139 ; 2 uses
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !13
  %i.uk = fadd float %i.uj, %i.uh
  store float %i.uk, ptr %i.ui, align 4, !tbaa !13
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1 ; 2 uses
  %i.ul = load float, ptr %i.e, align 4, !tbaa !13
  %i.um = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv.next140
  %i.un = getelementptr i8, ptr %i.um, i64 -4
  %i.uo = load float, ptr %i.un, align 4, !tbaa !13
  %i.up = fadd float %i.ul, %i.uo
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next140 ; 2 uses
  %i.ur = load float, ptr %i.uq, align 4, !tbaa !13
  %i.us = fadd float %i.ur, %i.up
  store float %i.us, ptr %i.uq, align 4, !tbaa !13
  %indvars.iv.next140.1 = add nuw nsw i64 %indvars.iv139, 2 ; 2 uses
  %exitcond143.1 = icmp eq i64 %indvars.iv.next140.1, %wide.trip.count142
  br i1 %exitcond143.1, label %.lr.ph30.preheader, label %.lr.ph28, !llvm.loop !95

.lr.ph32:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30, %middle.block84
  %i.ut = getelementptr i8, ptr %i.e, i64 4       ; 6 uses
  %smax152 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 2)
  %wide.trip.count153 = zext nneg i32 %smax152 to i64
  %i.uu = add nsw i64 %wide.trip.count147, -1     ; 2 uses
  %min.iters.check100 = icmp slt i32 %i.sy, 17
  br i1 %min.iters.check100, label %scalar.ph99.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %.lr.ph32
  %scevgep88 = getelementptr i8, ptr %i.rj, i64 4 ; 2 uses
  %i.uv = shl nuw nsw i64 %wide.trip.count147, 2  ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.rj, i64 %i.uv ; 2 uses
  %i.uw = getelementptr i8, ptr %i.qv, i64 %i.uv
  %scevgep90 = getelementptr i8, ptr %i.uw, i64 -4
  %i.ux = shl nsw i64 %i.d, 2
  %i.uy = getelementptr i8, ptr %i.c, i64 %i.ux
  %scevgep91 = getelementptr i8, ptr %i.uy, i64 8
  %bound092 = icmp ult ptr %scevgep88, %scevgep90
  %bound193 = icmp ult ptr %i.qv, %scevgep89
  %found.conflict94 = and i1 %bound092, %bound193
  %bound095 = icmp ult ptr %scevgep88, %scevgep91
  %bound196 = icmp ult ptr %i.ut, %scevgep89
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %found.conflict94, %found.conflict97
  br i1 %conflict.rdx98, label %scalar.ph99.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck87
  %n.vec102 = and i64 %i.uu, -8                   ; 3 uses
  %i.uz = or disjoint i64 %n.vec102, 1
  %i.va = load float, ptr %i.ut, align 4, !tbaa !13, !alias.scope !158
  %broadcast.splatinsert107 = insertelement <4 x float> poison, float %i.va, i64 0
  %broadcast.splat108 = shufflevector <4 x float> %broadcast.splatinsert107, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.vb = or disjoint i64 %index104, 1            ; 3 uses
  %i.vc = getelementptr [4 x i8], ptr %i.qv, i64 %i.vb ; 2 uses
  %i.vd = getelementptr i8, ptr %i.vc, i64 -4
  %i.ve = getelementptr i8, ptr %i.vc, i64 12
  %wide.load105 = load <4 x float>, ptr %i.vd, align 4, !tbaa !13, !alias.scope !159
  %wide.load106 = load <4 x float>, ptr %i.ve, align 4, !tbaa !13, !alias.scope !159
  %i.vf = fadd <4 x float> %wide.load105, %broadcast.splat108
  %i.vg = fadd <4 x float> %wide.load106, %broadcast.splat108
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.vb ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  store <4 x float> %i.vf, ptr %i.vh, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  store <4 x float> %i.vg, ptr %i.vi, align 4, !tbaa !13, !alias.scope !160, !noalias !161
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.vb ; 2 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 16
  store <4 x i32> zeroinitializer, ptr %i.vj, align 4, !tbaa !7
  store <4 x i32> zeroinitializer, ptr %i.vk, align 4, !tbaa !7
  %index.next109 = add nuw i64 %index104, 8       ; 2 uses
  %i.vl = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.vl, label %middle.block110, label %vector.body103, !llvm.loop !100

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.uu, %n.vec102
  br i1 %cmp.n111, label %._crit_edge33, label %scalar.ph99.preheader

scalar.ph99.preheader:                            ; preds = %vector.memcheck87, %.lr.ph32, %middle.block110
  %indvars.iv149.ph = phi i64 [ 1, %vector.memcheck87 ], [ 1, %.lr.ph32 ], [ %i.uz, %middle.block110 ] ; 6 uses
  %i.vm = and i64 %wide.trip.count147, 1
  %lcmp.mod394.not.not = icmp eq i64 %i.vm, 0
  br i1 %lcmp.mod394.not.not, label %scalar.ph99.prol, label %scalar.ph99.prol.loopexit

scalar.ph99.prol:                                 ; preds = %scalar.ph99.preheader
  %i.vn = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv149.ph
  %i.vo = getelementptr i8, ptr %i.vn, i64 -4
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !13
  %i.vq = load float, ptr %i.ut, align 4, !tbaa !13
  %i.vr = fadd float %i.vp, %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149.ph
  store float %i.vr, ptr %i.vs, align 4, !tbaa !13
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv149.ph
  store i32 0, ptr %i.vt, align 4, !tbaa !7
  %indvars.iv.next150.prol = add nuw nsw i64 %indvars.iv149.ph, 1
  br label %scalar.ph99.prol.loopexit

scalar.ph99.prol.loopexit:                        ; preds = %scalar.ph99.prol, %scalar.ph99.preheader
  %indvars.iv149.unr = phi i64 [ %indvars.iv149.ph, %scalar.ph99.preheader ], [ %indvars.iv.next150.prol, %scalar.ph99.prol ]
  %i.vu = add nsw i64 %wide.trip.count147, -1
  %i.vv = icmp eq i64 %indvars.iv149.ph, %i.vu
  br i1 %i.vv, label %._crit_edge33, label %scalar.ph99

.lr.ph30:                                         ; preds = %.lr.ph30.prol.loopexit, %.lr.ph30
  %indvars.iv144 = phi i64 [ %indvars.iv.next145.1, %.lr.ph30 ], [ %indvars.iv144.unr, %.lr.ph30.prol.loopexit ] ; 4 uses
  %i.vw = load float, ptr %i.l, align 4, !tbaa !13
  %i.vx = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv144
  %i.vy = getelementptr i8, ptr %i.vx, i64 -4
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !13
  %i.wa = fadd float %i.vw, %i.vz
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv144 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !13
  %i.wd = fadd float %i.wc, %i.wa
  store float %i.wd, ptr %i.wb, align 4, !tbaa !13
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %i.we = load float, ptr %i.l, align 4, !tbaa !13
  %i.wf = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv.next145
  %i.wg = getelementptr i8, ptr %i.wf, i64 -4
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !13
  %i.wi = fadd float %i.we, %i.wh
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %indvars.iv.next145 ; 2 uses
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !13
  %i.wl = fadd float %i.wk, %i.wi
  store float %i.wl, ptr %i.wj, align 4, !tbaa !13
  %indvars.iv.next145.1 = add nuw nsw i64 %indvars.iv144, 2 ; 2 uses
  %exitcond148.not.1 = icmp eq i64 %indvars.iv.next145.1, %wide.trip.count147
  br i1 %exitcond148.not.1, label %.lr.ph32, label %.lr.ph30, !llvm.loop !101

scalar.ph99:                                      ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99
  %indvars.iv149 = phi i64 [ %indvars.iv.next150.1, %scalar.ph99 ], [ %indvars.iv149.unr, %scalar.ph99.prol.loopexit ] ; 5 uses
  %i.wm = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv149
  %i.wn = getelementptr i8, ptr %i.wm, i64 -4
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !13
  %i.wp = load float, ptr %i.ut, align 4, !tbaa !13
  %i.wq = fadd float %i.wo, %i.wp
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv149
  store float %i.wq, ptr %i.wr, align 4, !tbaa !13
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv149
  store i32 0, ptr %i.ws, align 4, !tbaa !7
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 3 uses
  %i.wt = getelementptr [4 x i8], ptr %i.qv, i64 %indvars.iv.next150
  %i.wu = getelementptr i8, ptr %i.wt, i64 -4
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !13
  %i.ww = load float, ptr %i.ut, align 4, !tbaa !13
  %i.wx = fadd float %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.next150
  store float %i.wx, ptr %i.wy, align 4, !tbaa !13
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv.next150
  store i32 0, ptr %i.wz, align 4, !tbaa !7
  %indvars.iv.next150.1 = add nuw nsw i64 %indvars.iv149, 2 ; 2 uses
  %exitcond154.not.1 = icmp eq i64 %indvars.iv.next150.1, %wide.trip.count153
  br i1 %exitcond154.not.1, label %._crit_edge33, label %scalar.ph99, !llvm.loop !102

._crit_edge33:                                    ; preds = %scalar.ph99.prol.loopexit, %scalar.ph99, %middle.block110
  %i.xa = zext nneg i32 %i.u to i64               ; 14 uses
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.xa
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !13
  store float %i.xc, ptr %i.ri, align 4, !tbaa !13
  %i.xd = uitofp nneg i32 %i.t to double
  %i.xe = fmul nnan double %i.xd, 5.000000e-01
  %i.xf = fptosi double %i.xe to i32              ; 10 uses
  %.not47 = icmp eq i32 %i.xf, 0
  br i1 %.not47, label %.lr.ph58, label %.lr.ph52

.lr.ph52:                                         ; preds = %._crit_edge33
  %i.xg = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %.064935 = getelementptr inbounds nuw i8, ptr %i.rk, i64 4 ; 2 uses
  %.064336 = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 2 uses
  %smax158 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 2) ; 2 uses
  %i.xh = zext nneg i32 %i.xf to i64
  %i.xi = add nuw i32 %i.xf, 1
  %wide.trip.count170 = zext i32 %i.xi to i64
  %wide.trip.count159 = zext nneg i32 %smax158 to i64
  %wide.trip.count165 = zext nneg i32 %smax158 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph52, %._crit_edge46
  %indvars.iv167 = phi i64 [ 1, %.lr.ph52 ], [ %indvars.iv.next168, %._crit_edge46 ] ; 7 uses
  %.065150 = phi ptr [ %i.qw, %.lr.ph52 ], [ %.065349, %._crit_edge46 ] ; 7 uses
  %.065349 = phi ptr [ %i.qv, %.lr.ph52 ], [ %.065150, %._crit_edge46 ] ; 7 uses
  %i.xj = add nsw i64 %indvars.iv167, -1          ; 5 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %i.xj
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !13
  store float %i.xl, ptr %.065349, align 4, !tbaa !13
  %i.xm = trunc nuw nsw i64 %indvars.iv167 to i32
  tail call fastcc void @match_calc(ptr noundef %.065150, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %i.xm, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv167
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !13
  store float %i.xo, ptr %.065150, align 4, !tbaa !13
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv167 ; 3 uses
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !13 ; 2 uses
  store float %i.xq, ptr %i.rj, align 4, !tbaa !13
  %i.xr = icmp eq i64 %indvars.iv167, %i.xh
  br i1 %i.xr, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph45.split.preheader:                         ; preds = %bb.u
  %i.xs = load float, ptr %.065349, align 4, !tbaa !13
  %i.xt = load float, ptr %i.xg, align 4, !tbaa !13
  %i.xu = fadd float %i.xs, %i.xt
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xj
  %i.xw = trunc nuw nsw i64 %i.xj to i32
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %bb.u
  store float %i.xq, ptr %i.qz, align 4, !tbaa !13
  %i.xx = load float, ptr %.065349, align 4, !tbaa !13
  %i.xy = load float, ptr %i.xg, align 4, !tbaa !13
  %i.xz = fadd float %i.xx, %i.xy
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.xj
  %i.yb = trunc nuw nsw i64 %i.xj to i32          ; 2 uses
  br label %.lr.ph45.split.us

.lr.ph45.split.us:                                ; preds = %.lr.ph45.split.us.preheader, %bb.w
  %indvars.iv161 = phi i64 [ 1, %.lr.ph45.split.us.preheader ], [ %indvars.iv.next162, %bb.w ] ; 8 uses
  %.064343.us = phi ptr [ %.064336, %.lr.ph45.split.us.preheader ], [ %.0643.us, %bb.w ] ; 4 uses
  %.064942.us = phi ptr [ %.064935, %.lr.ph45.split.us.preheader ], [ %.0649.us, %bb.w ] ; 3 uses
  %.065150.pn314 = phi ptr [ %.065150, %.lr.ph45.split.us.preheader ], [ %.063941.us, %bb.w ]
  %.063540.us = phi float [ %i.xz, %.lr.ph45.split.us.preheader ], [ %.1636.us, %bb.w ] ; 3 uses
  %.064139.us = phi ptr [ %.065349, %.lr.ph45.split.us.preheader ], [ %i.zd, %bb.w ] ; 2 uses
  %.064538.us = phi i32 [ 0, %.lr.ph45.split.us.preheader ], [ %.1646.us, %bb.w ]
  %.063941.us = getelementptr inbounds nuw i8, ptr %.065150.pn314, i64 4 ; 3 uses
  %i.yc = load float, ptr %.064139.us, align 4, !tbaa !13 ; 4 uses
  %i.yd = add nsw i64 %indvars.iv161, -1          ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.yd
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !13
  %i.yg = fadd float %.063540.us, %i.yf           ; 2 uses
  %i.yh = fcmp ogt float %i.yg, %i.yc
  %.0655.us = select i1 %i.yh, float %i.yg, float %i.yc ; 2 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv161
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !13
  %i.yk = fadd float %i.yc, %i.yj                 ; 2 uses
  %i.yl = fcmp ult float %i.yk, %.063540.us       ; 2 uses
  %i.ym = trunc nuw nsw i64 %i.yd to i32
  %.1646.us = select i1 %i.yl, i32 %.064538.us, i32 %i.ym ; 2 uses
  %.1636.us = select i1 %i.yl, float %.063540.us, float %i.yk ; 2 uses
  %i.yn = load float, ptr %.064343.us, align 4, !tbaa !13 ; 2 uses
  %i.yo = load float, ptr %i.ya, align 4, !tbaa !13
  %i.yp = fadd float %i.yn, %i.yo                 ; 2 uses
  %i.yq = fcmp ogt float %i.yp, %.0655.us
  %.1656.us = select i1 %i.yq, float %i.yp, float %.0655.us
  %i.yr = load float, ptr %i.xp, align 4, !tbaa !13
  %i.ys = fadd float %i.yc, %i.yr                 ; 2 uses
  %i.yt = fcmp ult float %i.ys, %i.yn
  br i1 %i.yt, label %.lr.ph45.split.us._crit_edge, label %bb.v

.lr.ph45.split.us._crit_edge:                     ; preds = %.lr.ph45.split.us
  %.pre = load i32, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph45.split.us
  store float %i.ys, ptr %.064343.us, align 4, !tbaa !13
  store i32 %i.yb, ptr %.064942.us, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph45.split.us._crit_edge, %bb.v
  %i.yu = phi i32 [ %.pre, %.lr.ph45.split.us._crit_edge ], [ %i.yb, %bb.v ]
  %i.yv = load float, ptr %.063941.us, align 4, !tbaa !13
  %i.yw = fadd float %.1656.us, %i.yv             ; 2 uses
  store float %i.yw, ptr %.063941.us, align 4, !tbaa !13
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv161
  store i32 %i.yu, ptr %i.yx, align 4, !tbaa !7
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv161
  store i32 %.1646.us, ptr %i.yy, align 4, !tbaa !7
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv161
  store float %i.yw, ptr %i.yz, align 4, !tbaa !13
  %i.za = load float, ptr %.064343.us, align 4, !tbaa !13
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv161
  store float %i.za, ptr %i.zb, align 4, !tbaa !13
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv161
  store float %.1636.us, ptr %i.zc, align 4, !tbaa !13
  %i.zd = getelementptr inbounds nuw i8, ptr %.064139.us, i64 4
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %.0649.us = getelementptr inbounds nuw i8, ptr %.064942.us, i64 4
  %.0643.us = getelementptr inbounds nuw i8, ptr %.064343.us, i64 4
  %exitcond166.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge46, label %.lr.ph45.split.us, !llvm.loop !103

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %bb.y
  %indvars.iv155 = phi i64 [ 1, %.lr.ph45.split.preheader ], [ %indvars.iv.next156, %bb.y ] ; 3 uses
  %.064343 = phi ptr [ %.064336, %.lr.ph45.split.preheader ], [ %.0643, %bb.y ] ; 3 uses
  %.064942 = phi ptr [ %.064935, %.lr.ph45.split.preheader ], [ %.0649, %bb.y ] ; 2 uses
  %.065150.pn = phi ptr [ %.065150, %.lr.ph45.split.preheader ], [ %.063941, %bb.y ]
  %.063540 = phi float [ %i.xu, %.lr.ph45.split.preheader ], [ %.1636, %bb.y ] ; 3 uses
  %.064139 = phi ptr [ %.065349, %.lr.ph45.split.preheader ], [ %i.zw, %bb.y ] ; 2 uses
  %.063941 = getelementptr inbounds nuw i8, ptr %.065150.pn, i64 4 ; 3 uses
  %i.ze = load float, ptr %.064139, align 4, !tbaa !13 ; 4 uses
  %i.zf = getelementptr [4 x i8], ptr %i.o, i64 %indvars.iv155
  %i.zg = getelementptr i8, ptr %i.zf, i64 -4
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !13
  %i.zi = fadd float %.063540, %i.zh              ; 2 uses
  %i.zj = fcmp ogt float %i.zi, %i.ze
  %.0655 = select i1 %i.zj, float %i.zi, float %i.ze ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv155
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !13
  %i.zm = fadd float %i.ze, %i.zl                 ; 2 uses
  %.inv = fcmp oge float %i.zm, %.063540
  %.1636 = select i1 %.inv, float %i.zm, float %.063540
  %i.zn = load float, ptr %.064343, align 4, !tbaa !13 ; 2 uses
  %i.zo = load float, ptr %i.xv, align 4, !tbaa !13
  %i.zp = fadd float %i.zn, %i.zo                 ; 2 uses
  %i.zq = fcmp ogt float %i.zp, %.0655
  %.1656 = select i1 %i.zq, float %i.zp, float %.0655
  %i.zr = load float, ptr %i.xp, align 4, !tbaa !13
  %i.zs = fadd float %i.ze, %i.zr                 ; 2 uses
  %i.zt = fcmp ult float %i.zs, %i.zn
  br i1 %i.zt, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph45.split
  store float %i.zs, ptr %.064343, align 4, !tbaa !13
  store i32 %i.xw, ptr %.064942, align 4, !tbaa !7
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph45.split
  %i.zu = load float, ptr %.063941, align 4, !tbaa !13
  %i.zv = fadd float %.1656, %i.zu
  store float %i.zv, ptr %.063941, align 4, !tbaa !13
  %i.zw = getelementptr inbounds nuw i8, ptr %.064139, i64 4
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %.0649 = getelementptr inbounds nuw i8, ptr %.064942, i64 4
  %.0643 = getelementptr inbounds nuw i8, ptr %.064343, i64 4
  %exitcond160.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !103

._crit_edge46:                                    ; preds = %bb.y, %bb.w
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.065150, i64 %i.xa
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !13
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv167
  store float %i.zy, ptr %i.zz, align 4, !tbaa !13
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %wide.trip.count170
  br i1 %exitcond171.not, label %.lr.ph58, label %bb.u, !llvm.loop !104

.lr.ph58:                                         ; preds = %._crit_edge46, %._crit_edge33
  %.0653.lcssa = phi ptr [ %i.qv, %._crit_edge33 ], [ %.065150, %._crit_edge46 ] ; 13 uses
  %.0651.lcssa = phi ptr [ %i.qw, %._crit_edge33 ], [ %.065349, %._crit_edge46 ]
  tail call fastcc void @match_calc(ptr noundef %i.rh, ptr noundef %i.rq, ptr noundef %i.rr, i32 noundef %i.u, i32 noundef %i.t, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  tail call fastcc void @match_calc(ptr noundef nonnull %.0653.lcssa, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %i.s, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 1)
  %i.aaa = zext nneg i32 %i.s to i64              ; 8 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aaa ; 5 uses
  %min.iters.check125 = icmp ult i32 %i.s, 12
  br i1 %min.iters.check125, label %scalar.ph124.preheader, label %vector.memcheck113

vector.memcheck113:                               ; preds = %.lr.ph58
  %i.aac = shl nuw nsw i64 %i.aaa, 2
  %scevgep114 = getelementptr i8, ptr %i.rh, i64 %i.aac ; 2 uses
  %i.aad = add nsw i64 %i.d, %i.aaa
  %i.aae = shl nsw i64 %i.aad, 2
  %i.aaf = add nsw i64 %i.aae, 4                  ; 2 uses
  %scevgep115 = getelementptr i8, ptr %i.g, i64 %i.aaf
  %scevgep116 = getelementptr i8, ptr %i.c, i64 %i.aaf
  %bound0117 = icmp ult ptr %i.rh, %scevgep115
  %bound1118 = icmp ult ptr %i.aab, %scevgep114
  %found.conflict119 = and i1 %bound0117, %bound1118
  %bound0120 = icmp ult ptr %i.rh, %scevgep116
  %bound1121 = icmp ult ptr %i.ut, %scevgep114
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %found.conflict119, %found.conflict122
  br i1 %conflict.rdx123, label %scalar.ph124.preheader, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck113
  %n.vec127 = and i64 %i.aaa, 2147483640          ; 3 uses
  %i.aag = load float, ptr %i.aab, align 4, !tbaa !13, !alias.scope !162
end_hunk_0
begin_hunk_1_@MSalignmm_rec:bb.a
  %i.abf = getelementptr i8, ptr %i.n, i64 %i.abe
  %scevgep142 = getelementptr i8, ptr %i.abf, i64 4
  %i.abg = getelementptr i8, ptr %i.j, i64 %i.abc
  %scevgep143 = getelementptr i8, ptr %i.abg, i64 4
  %i.abh = getelementptr i8, ptr %i.j, i64 %i.abc
  %i.abi = getelementptr i8, ptr %i.abh, i64 %i.abb
  %scevgep144 = getelementptr i8, ptr %i.abi, i64 4
  %bound0145 = icmp ult ptr %.0653.lcssa, %scevgep142
  %bound1146 = icmp ult ptr %i.aba, %scevgep141
  %found.conflict147 = and i1 %bound0145, %bound1146
  %bound0148 = icmp ult ptr %.0653.lcssa, %scevgep144
  %bound1149 = icmp ult ptr %scevgep143, %scevgep141
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %found.conflict147, %found.conflict150
  br i1 %conflict.rdx151, label %scalar.ph152.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck140
  %n.vec155 = and i64 %wide.trip.count181, 2147483640 ; 3 uses
  %i.abj = load float, ptr %i.aba, align 4, !tbaa !13, !alias.scope !166
  %broadcast.splatinsert160 = insertelement <4 x float> poison, float %i.abj, i64 0
  %broadcast.splat161 = shufflevector <4 x float> %broadcast.splatinsert160, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next164, %vector.body156 ] ; 3 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index157 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abk, i64 20
  %wide.load158 = load <4 x float>, ptr %i.abl, align 4, !tbaa !13, !alias.scope !167
  %wide.load159 = load <4 x float>, ptr %i.abm, align 4, !tbaa !13, !alias.scope !167
  %i.abn = fadd <4 x float> %broadcast.splat161, %wide.load158
  %i.abo = fadd <4 x float> %broadcast.splat161, %wide.load159
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %index157 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16 ; 2 uses
  %wide.load162 = load <4 x float>, ptr %i.abp, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %wide.load163 = load <4 x float>, ptr %i.abq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %i.abr = fadd <4 x float> %wide.load162, %i.abn
  %i.abs = fadd <4 x float> %wide.load163, %i.abo
  store <4 x float> %i.abr, ptr %i.abp, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  store <4 x float> %i.abs, ptr %i.abq, align 4, !tbaa !13, !alias.scope !168, !noalias !169
  %index.next164 = add nuw i64 %index157, 8       ; 2 uses
  %i.abt = icmp eq i64 %index.next164, %n.vec155
  br i1 %i.abt, label %middle.block165, label %vector.body156, !llvm.loop !114

middle.block165:                                  ; preds = %vector.body156
  %cmp.n166 = icmp eq i64 %n.vec155, %wide.trip.count181
  br i1 %cmp.n166, label %.lr.ph62, label %scalar.ph152.preheader

scalar.ph152.preheader:                           ; preds = %vector.memcheck140, %.lr.ph60, %middle.block165
  %indvars.iv177.ph = phi i64 [ 0, %vector.memcheck140 ], [ 0, %.lr.ph60 ], [ %n.vec155, %middle.block165 ] ; 4 uses
  %xtraiter399 = and i64 %wide.trip.count181, 1
  %lcmp.mod400.not = icmp eq i64 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %scalar.ph152.prol.loopexit, label %scalar.ph152.prol

scalar.ph152.prol:                                ; preds = %scalar.ph152.preheader
  %i.abu = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178.prol = or disjoint i64 %indvars.iv177.ph, 1 ; 2 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.prol
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !13
  %i.abx = fadd float %i.abu, %i.abw
  %i.aby = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177.ph ; 2 uses
  %i.abz = load float, ptr %i.aby, align 4, !tbaa !13
  %i.aca = fadd float %i.abz, %i.abx
  store float %i.aca, ptr %i.aby, align 4, !tbaa !13
  br label %scalar.ph152.prol.loopexit

scalar.ph152.prol.loopexit:                       ; preds = %scalar.ph152.prol, %scalar.ph152.preheader
  %indvars.iv177.unr = phi i64 [ %indvars.iv177.ph, %scalar.ph152.preheader ], [ %indvars.iv.next178.prol, %scalar.ph152.prol ]
  %i.acb = add nsw i64 %wide.trip.count181, -1
  %i.acc = icmp eq i64 %indvars.iv177.ph, %i.acb
  br i1 %i.acc, label %.lr.ph62, label %scalar.ph152

scalar.ph124:                                     ; preds = %scalar.ph124.prol.loopexit, %scalar.ph124
  %indvars.iv172 = phi i64 [ %indvars.iv.next173.1, %scalar.ph124 ], [ %indvars.iv172.unr, %scalar.ph124.prol.loopexit ] ; 3 uses
  %i.acd = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !13
  %i.acg = fadd float %i.acd, %i.acf
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv172 ; 2 uses
  %i.aci = load float, ptr %i.ach, align 4, !tbaa !13
  %i.acj = fadd float %i.aci, %i.acg
  store float %i.acj, ptr %i.ach, align 4, !tbaa !13
  %i.ack = load float, ptr %i.aab, align 4, !tbaa !13
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next173.1
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !13
  %i.acn = fadd float %i.ack, %i.acm
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv.next173 ; 2 uses
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !13
  %i.acq = fadd float %i.acp, %i.acn
  store float %i.acq, ptr %i.aco, align 4, !tbaa !13
  %exitcond176.not.1 = icmp eq i64 %indvars.iv.next173.1, %i.aaa
  br i1 %exitcond176.not.1, label %.lr.ph60, label %scalar.ph124, !llvm.loop !115

.lr.ph62:                                         ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152, %middle.block165
  %i.acr = getelementptr [4 x i8], ptr %i.o, i64 %i.xa
  %i.acs = getelementptr i8, ptr %i.acr, i64 -4   ; 3 uses
  %i.act = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.acu = add i32 %8, %i.act
  %i.acv = sub i32 %9, %i.acu                     ; 2 uses
  %i.acw = zext i32 %i.acv to i64
  %i.acx = add nuw nsw i64 %i.acw, 1              ; 2 uses
  %min.iters.check181 = icmp ult i32 %i.acv, 19
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph62
  %i.acy = shl nuw nsw i64 %i.xa, 2               ; 4 uses
  %i.acz = add nsw i64 %i.acy, -4
  %smin = tail call i32 @llvm.smin.i32(i32 %i.u, i32 1)
  %i.ada = add i32 %8, %smin
  %i.adb = sub i32 %9, %i.ada
  %i.adc = zext i32 %i.adb to i64
  %i.add = shl nuw nsw i64 %i.adc, 2              ; 2 uses
  %i.ade = sub nsw i64 %i.acz, %i.add
  %scevgep169 = getelementptr i8, ptr %i.rj, i64 %i.ade ; 2 uses
  %scevgep170 = getelementptr i8, ptr %i.rj, i64 %i.acy ; 2 uses
  %i.adf = sub nsw i64 %i.acy, %i.add
  %scevgep171 = getelementptr i8, ptr %.0653.lcssa, i64 %i.adf
  %i.adg = getelementptr i8, ptr %.0653.lcssa, i64 %i.acy
  %scevgep172 = getelementptr i8, ptr %i.adg, i64 4
  %bound0173 = icmp ult ptr %scevgep169, %scevgep172
  %bound1174 = icmp ult ptr %scevgep171, %scevgep170
  %found.conflict175 = and i1 %bound0173, %bound1174
  %bound0176 = icmp ult ptr %scevgep169, %i.aba
  %bound1177 = icmp ult ptr %i.acs, %scevgep170
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %found.conflict175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck168
  %n.vec183 = and i64 %i.acx, 8589934588          ; 3 uses
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adh = sub nsw i64 %i.xa, %n.vec183
  %i.adi = load float, ptr %i.acs, align 4, !tbaa !13, !alias.scope !170
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.adi, i64 0
  %i.adj = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph182
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next193, %vector.body186 ] ; 2 uses
  %i.adk = sub i64 %i.xa, %index187               ; 3 uses
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %i.adk
  %i.adm = getelementptr inbounds i8, ptr %i.adl, i64 -12
  %wide.load188 = load <4 x float>, ptr %i.adm, align 4, !tbaa !13, !alias.scope !171
  %i.adn = getelementptr [4 x i8], ptr %i.rj, i64 %i.adk
  %i.ado = getelementptr i8, ptr %i.adn, i64 -16
  %reverse192 = fadd <4 x float> %wide.load188, %i.adj
  store <4 x float> %reverse192, ptr %i.ado, align 4, !tbaa !13, !alias.scope !172, !noalias !173
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.adk
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 -12
  store <4 x i32> %broadcast.splat185, ptr %i.adq, align 4, !tbaa !7
  %index.next193 = add nuw i64 %index187, 4       ; 2 uses
  %i.adr = icmp eq i64 %index.next193, %n.vec183
  br i1 %i.adr, label %middle.block194, label %vector.body186, !llvm.loop !120

middle.block194:                                  ; preds = %vector.body186
  %cmp.n195 = icmp eq i64 %i.acx, %n.vec183
  br i1 %cmp.n195, label %.preheader8, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck168, %.lr.ph62, %middle.block194
  %indvars.iv183.ph = phi i64 [ %i.xa, %vector.memcheck168 ], [ %i.xa, %.lr.ph62 ], [ %i.adh, %middle.block194 ]
  br label %scalar.ph180

scalar.ph152:                                     ; preds = %scalar.ph152.prol.loopexit, %scalar.ph152
  %indvars.iv177 = phi i64 [ %indvars.iv.next178.1, %scalar.ph152 ], [ %indvars.iv177.unr, %scalar.ph152.prol.loopexit ] ; 3 uses
  %i.ads = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.adt = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178
  %i.adu = load float, ptr %i.adt, align 4, !tbaa !13
  %i.adv = fadd float %i.ads, %i.adu
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv177 ; 2 uses
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !13
  %i.ady = fadd float %i.adx, %i.adv
  store float %i.ady, ptr %i.adw, align 4, !tbaa !13
  %i.adz = load float, ptr %i.aba, align 4, !tbaa !13
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 3 uses
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next178.1
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !13
  %i.aec = fadd float %i.adz, %i.aeb
  %i.aed = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv.next178 ; 2 uses
  %i.aee = load float, ptr %i.aed, align 4, !tbaa !13
  %i.aef = fadd float %i.aee, %i.aec
  store float %i.aef, ptr %i.aed, align 4, !tbaa !13
  %exitcond182.not.1 = icmp eq i64 %indvars.iv.next178.1, %wide.trip.count181
  br i1 %exitcond182.not.1, label %.lr.ph62, label %scalar.ph152, !llvm.loop !121

.preheader8:                                      ; preds = %scalar.ph180, %middle.block194
  %i.aeg = add nsw i32 %i.u, -1
  %i.aeh = zext nneg i32 %i.aeg to i64            ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aeh
  %i.aej = zext nneg i32 %i.v to i64              ; 4 uses
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.aej
  %i.ael = getelementptr inbounds i8, ptr %i.aek, i64 -8
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.aej
  %i.aen = getelementptr inbounds i8, ptr %i.aem, i64 -8
  %i.aeo = add nsw i32 %i.xf, -1                  ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %smax197 = tail call i32 @llvm.smax.i32(i32 %i.sy, i32 1) ; 3 uses
  %i.aeq = zext nneg i32 %i.xf to i64             ; 2 uses
  %wide.trip.count198 = zext nneg i32 %smax197 to i64 ; 2 uses
  %i.aer = icmp sgt i32 %i.s, 0
  br i1 %i.aer, label %.lr.ph72.lr.ph, label %.loopexit

.lr.ph72.lr.ph:                                   ; preds = %.preheader8
  %i.aes = zext nneg i32 %i.s to i64
  %xtraiter402 = and i64 %i.xa, 1
  %i.aet = and i64 %i.xa, 2147483646
  %i.aeu = add nsw i64 %i.aet, -4
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  %lcmp.mod406 = trunc i32 %i.u to i1
  %xtraiter407 = and i64 %wide.trip.count198, 1
  %i.aev = icmp eq i32 %smax197, 1
  %unroll_iter411 = and i64 %wide.trip.count198, 2147483646
  %lcmp.mod408.not = icmp eq i64 %xtraiter407, 0
  %lcmp.mod410 = trunc i32 %smax197 to i1
  br label %.lr.ph72

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv183 = phi i64 [ %indvars.iv.next184, %scalar.ph180 ], [ %indvars.iv183.ph, %scalar.ph180.preheader ] ; 5 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %.0653.lcssa, i64 %indvars.iv183
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !13
  %i.aey = load float, ptr %i.acs, align 4, !tbaa !13
  %i.aez = fadd float %i.aex, %i.aey
  %i.afa = getelementptr [4 x i8], ptr %i.rj, i64 %indvars.iv183
  %i.afb = getelementptr i8, ptr %i.afa, i64 -4
  store float %i.aez, ptr %i.afb, align 4, !tbaa !13
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv183
  store i32 %i.s, ptr %i.afc, align 4, !tbaa !7
  %indvars.iv.next184 = add nsw i64 %indvars.iv183, -1
  %i.afd = trunc nuw i64 %indvars.iv183 to i32
  %i.afe = icmp sgt i32 %i.afd, 1
  br i1 %i.afe, label %scalar.ph180, label %.preheader8, !llvm.loop !122

bb.z:                                             ; preds = %bb.ar
  %i.aff = trunc nuw i64 %indvars.iv.next20120 to i32 ; 2 uses
  %i.afg = icmp sgt i32 %i.aff, 0
  br i1 %i.afg, label %.lr.ph72, label %.loopexit, !llvm.loop !123

.lr.ph72:                                         ; preds = %.lr.ph72.lr.ph, %bb.z
  %i.afh = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %i.aff, %bb.z ] ; 3 uses
  %.019 = phi i32 [ %i.s, %.lr.ph72.lr.ph ], [ %.1, %bb.z ]
  %.061918 = phi float [ -1.000000e+07, %.lr.ph72.lr.ph ], [ %.1620, %bb.z ] ; 2 uses
  %.062517 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2, %bb.z ]
  %.062716 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.2629, %bb.z ] ; 2 uses
  %.165215 = phi ptr [ %.0651.lcssa, %.lr.ph72.lr.ph ], [ %.165414, %bb.z ] ; 4 uses
  %.165414 = phi ptr [ %.0653.lcssa, %.lr.ph72.lr.ph ], [ %.165215, %bb.z ] ; 3 uses
  %.065913 = phi i32 [ 0, %.lr.ph72.lr.ph ], [ %.5, %bb.z ]
  %indvars.iv20012 = phi i64 [ %i.aes, %.lr.ph72.lr.ph ], [ %indvars.iv.next20120, %bb.z ] ; 5 uses
  %indvars.iv.next20120 = add nsw i64 %indvars.iv20012, -1 ; 4 uses
  %indvars21 = trunc i64 %indvars.iv.next20120 to i32 ; 6 uses
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %indvars.iv20012
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !13
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.xa ; 2 uses
  store float %i.afj, ptr %i.afk, align 4, !tbaa !13
  tail call fastcc void @match_calc(ptr noundef %.165215, ptr noundef %i.rr, ptr noundef %i.rq, i32 noundef %indvars21, i32 noundef %i.v, ptr noundef %i.ro, ptr noundef %i.rp, i32 noundef 0)
  %i.afl = and i64 %indvars.iv.next20120, 4294967295 ; 3 uses
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.afl
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !13
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.xa
  store float %i.afn, ptr %i.afo, align 4, !tbaa !13
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %.165414, i64 %i.aej
  %.164263 = getelementptr inbounds i8, ptr %i.afp, i64 -4
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %.165215, i64 %i.aej
  %i.afr = getelementptr inbounds i8, ptr %i.afq, i64 -8
  %i.afs = load float, ptr %i.afk, align 4, !tbaa !13
  %i.aft = load float, ptr %i.aei, align 4, !tbaa !13
  %i.afu = fadd float %i.afs, %i.aft
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv20012
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afl
  %i.afx = icmp eq i32 %.062716, %indvars21
  %i.afy = icmp eq i64 %indvars.iv20012, %i.aeq   ; 2 uses
  %or.cond719 = or i1 %i.afy, %i.afx
  %i.afz = icmp eq i32 %indvars21, %i.xf
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph72, %bb.ak
  %indvars.iv186 = phi i64 [ %i.aeh, %.lr.ph72 ], [ %indvars.iv.next187, %bb.ak ] ; 8 uses
  %.164270 = phi ptr [ %.164263, %.lr.ph72 ], [ %.1642, %bb.ak ] ; 2 uses
  %.263769 = phi float [ %i.afu, %.lr.ph72 ], [ %.3638, %bb.ak ] ; 3 uses
  %.164068 = phi ptr [ %i.afr, %.lr.ph72 ], [ %i.ahj, %bb.ak ] ; 3 uses
  %.164467 = phi ptr [ %i.ael, %.lr.ph72 ], [ %i.ahh, %bb.ak ] ; 4 uses
  %.264766 = phi i32 [ %i.u, %.lr.ph72 ], [ %.3648, %bb.ak ] ; 2 uses
  %.165065 = phi ptr [ %i.aen, %.lr.ph72 ], [ %i.ahi, %bb.ak ] ; 3 uses
  %i.aga = load float, ptr %.164270, align 4, !tbaa !13 ; 4 uses
  %i.agb = add nuw nsw i64 %indvars.iv186, 1      ; 3 uses
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.agb
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !13
  %i.age = fadd float %.263769, %i.agd            ; 2 uses
  %i.agf = fcmp ogt float %i.age, %i.aga          ; 2 uses
  %.2657 = select i1 %i.agf, float %i.age, float %i.aga ; 2 uses
  %i.agg = trunc nuw i64 %i.agb to i32            ; 3 uses
  %.0621 = select i1 %i.agf, i32 %.264766, i32 %i.agg
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv186
  %i.agi = load float, ptr %i.agh, align 4, !tbaa !13
  %i.agj = fadd float %i.aga, %i.agi              ; 2 uses
  %i.agk = fcmp ult float %i.agj, %.263769        ; 2 uses
  %.3648 = select i1 %i.agk, i32 %.264766, i32 %i.agg
  %.3638 = select i1 %i.agk, float %.263769, float %i.agj ; 2 uses
  %i.agl = load float, ptr %.164467, align 4, !tbaa !13 ; 2 uses
  %i.agm = load float, ptr %i.afv, align 4, !tbaa !13
  %i.agn = fadd float %i.agl, %i.agm              ; 2 uses
  %i.ago = fcmp ogt float %i.agn, %.2657
  br i1 %i.ago, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.agp = load i32, ptr %.165065, align 4, !tbaa !7
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.3658 = phi float [ %i.agn, %bb.ab ], [ %.2657, %bb.aa ] ; 2 uses
  %.1624 = phi i32 [ %i.agp, %bb.ab ], [ %i.afh, %bb.aa ]
  %.1622 = phi i32 [ %i.agg, %bb.ab ], [ %.0621, %bb.aa ]
  %i.agq = load float, ptr %i.afw, align 4, !tbaa !13
  %i.agr = fadd float %i.aga, %i.agq              ; 2 uses
  %i.ags = fcmp ult float %i.agr, %i.agl
  br i1 %i.ags, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store float %i.agr, ptr %.164467, align 4, !tbaa !13
  store i32 %i.afh, ptr %.165065, align 4, !tbaa !7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %or.cond719, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.agt = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv186
  store i32 %.1624, ptr %i.agt, align 4, !tbaa !7
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv186
  store i32 %.1622, ptr %i.agu, align 4, !tbaa !7
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.afz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.qx, i64 %indvars.iv186 ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !13
  %i.agx = fadd float %.3658, %i.agw
  store float %i.agx, ptr %i.agv, align 4, !tbaa !13
  %i.agy = load float, ptr %.164467, align 4, !tbaa !13
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %i.agb ; 2 uses
  %i.aha = load float, ptr %i.agz, align 4, !tbaa !13
  %i.ahb = fadd float %i.agy, %i.aha
  store float %i.ahb, ptr %i.agz, align 4, !tbaa !13
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %i.afy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv186 ; 2 uses
  %i.ahd = load float, ptr %i.ahc, align 4, !tbaa !13
  %i.ahe = fadd float %.3638, %i.ahd
  store float %i.ahe, ptr %i.ahc, align 4, !tbaa !13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ahf = load float, ptr %.164068, align 4, !tbaa !13
  %i.ahg = fadd float %.3658, %i.ahf
  store float %i.ahg, ptr %.164068, align 4, !tbaa !13
  %i.ahh = getelementptr inbounds i8, ptr %.164467, i64 -4
  %i.ahi = getelementptr inbounds i8, ptr %.165065, i64 -4
  %i.ahj = getelementptr inbounds i8, ptr %.164068, i64 -4
  %indvars.iv.next187 = add nsw i64 %indvars.iv186, -1
  %.1642 = getelementptr inbounds i8, ptr %.164270, i64 -4 ; 2 uses
  %i.ahk = trunc nuw i64 %indvars.iv186 to i32
  %i.ahl = icmp sgt i32 %i.ahk, 0
  br i1 %i.ahl, label %bb.aa, label %._crit_edge73, !llvm.loop !124

._crit_edge73:                                    ; preds = %bb.ak
  %i.ahm = load float, ptr %.1642, align 4, !tbaa !13
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.afl
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !13
  %i.ahp = fadd float %i.ahm, %i.aho              ; 2 uses
  %i.ahq = fcmp olt float %.061918, %i.ahp        ; 2 uses
  %.1620 = select i1 %i.ahq, float %i.ahp, float %.061918 ; 2 uses
  %.1 = select i1 %i.ahq, i32 %i.afh, i32 %.019   ; 3 uses
  %i.ahr = icmp eq i32 %indvars21, %i.xf
  br i1 %i.ahr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge73
  %i.ahs = load float, ptr %i.qz, align 4, !tbaa !13
  %i.aht = fadd float %.1620, %i.ahs
  store float %i.aht, ptr %i.qz, align 4, !tbaa !13
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge73
  %i.ahu = icmp eq i64 %indvars.iv20012, %i.aeq
  br i1 %i.ahu, label %.lr.ph80.preheader.new, label %bb.ar

.lr.ph80.preheader.new:                           ; preds = %bb.am
  %i.ahv = load float, ptr %i.aep, align 4, !tbaa !13
  br label %.lr.ph80

.lr.ph80:                                         ; preds = %.lr.ph80, %.lr.ph80.preheader.new
  %indvars.iv189 = phi i64 [ 2, %.lr.ph80.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph80 ] ; 4 uses
  %.063178 = phi float [ %i.ahv, %.lr.ph80.preheader.new ], [ %.1632.1, %.lr.ph80 ] ; 2 uses
  %.166077 = phi i32 [ 0, %.lr.ph80.preheader.new ], [ %.2661.1, %.lr.ph80 ]
end_hunk_1
