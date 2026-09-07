Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/Lut3DOpCPU?download=true
inline.NumInlined: 813
inline.NumDeleted: 378
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer10updateDataERSt10shared_ptrIKNS_11Lut3DOpDataEE:bb.a
  br i1 %cmp.n236, label %._crit_edge.us.i88.i, label %scalar.ph225.preheader

scalar.ph225.preheader:                           ; preds = %.lr.ph73.us.i.i, %middle.block235
  %.05072.us.i.i.ph = phi i64 [ 0, %.lr.ph73.us.i.i ], [ %n.vec228, %middle.block235 ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %scalar.ph225
  %.05072.us.i.i = phi i64 [ %i.ux, %scalar.ph225 ], [ %.05072.us.i.i.ph, %scalar.ph225.preheader ] ; 4 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.05072.us.i.i ; 2 uses
  %i.uo = getelementptr [4 x i8], ptr %i.ue, i64 %.05072.us.i.i
  %i.up = load float, ptr %i.uo, align 4, !tbaa !56 ; 4 uses
  %i.uq = load float, ptr %i.un, align 4, !tbaa !56 ; 2 uses
  %i.ur = fcmp olt float %i.up, %i.uq
  %i.us = select i1 %i.ur, float %i.up, float %i.uq
  store float %i.us, ptr %i.un, align 4, !tbaa !56
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.05072.us.i.i ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !56 ; 2 uses
  %i.uv = fcmp olt float %i.uu, %i.up
  %i.uw = select i1 %i.uv, float %i.up, float %i.uu
  store float %i.uw, ptr %i.ut, align 4, !tbaa !56
  %i.ux = add nuw i64 %.05072.us.i.i, 1           ; 2 uses
  %exitcond.not.i87.i = icmp eq i64 %i.ux, %i.tc
  br i1 %exitcond.not.i87.i, label %._crit_edge.us.i88.i, label %scalar.ph225, !llvm.loop !194

scalar.ph213:                                     ; preds = %scalar.ph213.prol.loopexit, %scalar.ph213
  %.075.us.i.i = phi i64 [ %i.vr, %scalar.ph213 ], [ %.075.us.i.i.unr, %scalar.ph213.prol.loopexit ] ; 5 uses
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.075.us.i.i
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !56
  %i.va = fadd float %i.uz, f0xB58637BD
  %i.vb = add i64 %.075.us.i.i, %i.wg             ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.vb
  store float %i.va, ptr %i.vc, align 4, !tbaa !56
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.075.us.i.i
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !56
  %i.vf = fadd float %i.ve, f0x358637BD
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.vb
  store float %i.vf, ptr %i.vg, align 4, !tbaa !56
  %i.vh = add nuw i64 %.075.us.i.i, 1             ; 3 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.vh
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !56
  %i.vk = fadd float %i.vj, f0xB58637BD
  %i.vl = add i64 %i.vh, %i.wg                    ; 2 uses
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.vl
  store float %i.vk, ptr %i.vm, align 4, !tbaa !56
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.vh
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !56
  %i.vp = fadd float %i.vo, f0x358637BD
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.vl
  store float %i.vp, ptr %i.vq, align 4, !tbaa !56
  %i.vr = add nuw i64 %.075.us.i.i, 2             ; 2 uses
  %exitcond95.not.i.i.1 = icmp eq i64 %i.vr, %i.tc
  br i1 %exitcond95.not.i.i.1, label %._crit_edge77.us.i.i, label %scalar.ph213, !llvm.loop !195

._crit_edge77.us.i.i:                             ; preds = %scalar.ph213.prol.loopexit, %scalar.ph213, %middle.block222
  %i.vs = add nuw i64 %.05378.us.i.i, 1           ; 2 uses
  %exitcond96.not.i.i = icmp eq i64 %i.vs, %i.rz
  br i1 %exitcond96.not.i.i, label %.loopexit139.i, label %.preheader70.us.i.i, !llvm.loop !196

.preheader70.us.i.i:                              ; preds = %._crit_edge77.us.i.i, %.lr.ph80.split.us.preheader.i.i
  %.05378.us.i.i = phi i64 [ %i.vs, %._crit_edge77.us.i.i ], [ 0, %.lr.ph80.split.us.preheader.i.i ] ; 3 uses
  %i.vt = getelementptr inbounds nuw [32 x i8], ptr %.val63.i.i, i64 %.05378.us.i.i ; 3 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !64
  %i.vv = mul i64 %i.vu, %i.tf
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vx = load i64, ptr %i.vw, align 8, !tbaa !64
  %i.vy = mul i64 %i.vx, %i.td
  %i.vz = add i64 %i.vy, %i.vv
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !64
  %i.wc = add i64 %i.vz, %i.wb                    ; 2 uses
  %i.wd = mul i64 %i.wc, %i.tc
  %i.we = getelementptr [4 x i8], ptr %i.ew, i64 %i.wd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr readonly align 4 %i.we, i64 %i.tr, i1 false), !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 4 %i.we, i64 %i.tr, i1 false), !tbaa !56
  br label %.lr.ph73.us.i.i

._crit_edge.us.i88.i:                             ; preds = %scalar.ph225, %middle.block235
  %i.wf = add nuw nsw i64 %.05174.us.i.i, 1       ; 2 uses
  %exitcond94.not.i.i = icmp eq i64 %i.wf, %.054.i.i
  br i1 %exitcond94.not.i.i, label %.lr.ph76.us.i.i, label %.lr.ph73.us.i.i, !llvm.loop !197

.lr.ph76.us.i.i:                                  ; preds = %._crit_edge.us.i88.i
  %i.wg = mul i64 %.05378.us.i.i, %i.tc           ; 4 uses
  br i1 %or.cond, label %scalar.ph213.preheader, label %vector.body217

vector.body217:                                   ; preds = %.lr.ph76.us.i.i, %vector.body217
  %index218 = phi i64 [ %index.next221, %vector.body217 ], [ 0, %.lr.ph76.us.i.i ] ; 4 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index218
  %wide.load219 = load <4 x float>, ptr %i.wh, align 16, !tbaa !56
  %i.wi = fadd <4 x float> %wide.load219, splat (float f0xB58637BD)
  %i.wj = add i64 %index218, %i.wg                ; 2 uses
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.wj
  store <4 x float> %i.wi, ptr %i.wk, align 4, !tbaa !56
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index218
  %wide.load220 = load <4 x float>, ptr %i.wl, align 16, !tbaa !56
  %i.wm = fadd <4 x float> %wide.load220, splat (float f0x358637BD)
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.wj
  store <4 x float> %i.wm, ptr %i.wn, align 4, !tbaa !56
  %index.next221 = add nuw i64 %index218, 4       ; 2 uses
  %i.wo = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.wo, label %middle.block222, label %vector.body217, !llvm.loop !198

middle.block222:                                  ; preds = %vector.body217
  br i1 %cmp.n223, label %._crit_edge77.us.i.i, label %scalar.ph213.preheader

scalar.ph213.preheader:                           ; preds = %.lr.ph76.us.i.i, %middle.block222
  %.075.us.i.i.ph = phi i64 [ 0, %.lr.ph76.us.i.i ], [ %n.vec216, %middle.block222 ] ; 6 uses
  %.neg = or disjoint i64 %.075.us.i.i.ph, 1
  br i1 %lcmp.mod348.not, label %scalar.ph213.prol.loopexit, label %scalar.ph213.prol

scalar.ph213.prol:                                ; preds = %scalar.ph213.preheader
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.075.us.i.i.ph
  %i.wq = load float, ptr %i.wp, align 16, !tbaa !56
  %i.wr = fadd float %i.wq, f0xB58637BD
  %i.ws = add i64 %.075.us.i.i.ph, %i.wg          ; 2 uses
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %i.ws
  store float %i.wr, ptr %i.wt, align 4, !tbaa !56
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.075.us.i.i.ph
  %i.wv = load float, ptr %i.wu, align 16, !tbaa !56
  %i.ww = fadd float %i.wv, f0x358637BD
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %i.ws
  store float %i.ww, ptr %i.wx, align 4, !tbaa !56
  %i.wy = or disjoint i64 %.075.us.i.i.ph, 1
  br label %scalar.ph213.prol.loopexit

scalar.ph213.prol.loopexit:                       ; preds = %scalar.ph213.prol, %scalar.ph213.preheader
  %.075.us.i.i.unr = phi i64 [ %.075.us.i.i.ph, %scalar.ph213.preheader ], [ %i.wy, %scalar.ph213.prol ]
  %i.wz = icmp eq i64 %i.tc, %.neg
  br i1 %i.wz, label %._crit_edge77.us.i.i, label %scalar.ph213

bb.cq:                                            ; preds = %bb.cq, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new
  %.052167.i = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new ], [ %i.xt, %bb.cq ] ; 6 uses
  %niter346 = phi i64 [ 0, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.i.new ], [ %niter346.next.3, %bb.cq ]
  %i.xa = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %.052167.i
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 24
  %i.xc = load i64, ptr %i.xb, align 8, !tbaa !73
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.052167.i
  store i64 %i.xc, ptr %i.xd, align 8, !tbaa !64
  %i.xe = or disjoint i64 %.052167.i, 1           ; 2 uses
  %i.xf = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 24
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !73
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xe
  store i64 %i.xh, ptr %i.xi, align 8, !tbaa !64
  %i.xj = or disjoint i64 %.052167.i, 2           ; 2 uses
  %i.xk = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xj
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  %i.xm = load i64, ptr %i.xl, align 8, !tbaa !73
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xj
  store i64 %i.xm, ptr %i.xn, align 8, !tbaa !64
  %i.xo = or disjoint i64 %.052167.i, 3           ; 2 uses
  %i.xp = getelementptr inbounds nuw [32 x i8], ptr %.val74.i, i64 %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load i64, ptr %i.xq, align 8, !tbaa !73
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.xo
  store i64 %i.xr, ptr %i.xs, align 8, !tbaa !64
  %i.xt = add nuw i64 %.052167.i, 4               ; 2 uses
  %niter346.next.3 = add i64 %niter346, 4         ; 2 uses
  %niter346.ncmp.3 = icmp eq i64 %niter346.next.3, %unroll_iter345
  br i1 %niter346.ncmp.3, label %._crit_edge169.i.loopexit.unr-lcssa, label %bb.cq, !llvm.loop !199

.loopexit139.i:                                   ; preds = %._crit_edge77.us.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.xu = load i64, ptr %i.fh, align 8, !tbaa !66
  %i.xv = trunc i64 %i.xu to i32
  %i.xw = add i32 %i.xv, -2                       ; 2 uses
  %i.xx = icmp sgt i32 %i.xw, -1
  br i1 %i.xx, label %.lr.ph179.preheader.i, label %._crit_edge180.i

.lr.ph179.preheader.i:                            ; preds = %.loopexit139.i
  %i.xy = zext nneg i32 %i.xw to i64
  br label %.lr.ph179.i

._crit_edge180.i:                                 ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, %.loopexit139.i
  %.sroa.0119.0.lcssa.i = phi ptr [ %.sroa.0119.3300.i, %.loopexit139.i ], [ %.sroa.0119.4.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ] ; 3 uses
  %.sroa.22.0.lcssa.i = phi ptr [ %.sroa.22.3301.i, %.loopexit139.i ], [ %.sroa.22.4.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ]
  %.not.i.i.i92.i = icmp eq ptr %.sroa.0119.0.lcssa.i, null
  br i1 %.not.i.i.i92.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10initializeEPfm.exit, label %bb.cr

bb.cr:                                            ; preds = %._crit_edge180.i
  %i.xz = ptrtoint ptr %.sroa.22.0.lcssa.i to i64
  %i.ya = ptrtoint ptr %.sroa.0119.0.lcssa.i to i64
  %i.yb = sub i64 %i.xz, %i.ya
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0119.0.lcssa.i, i64 noundef %i.yb) #26
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree10initializeEPfm.exit

bb.cs:                                            ; preds = %bb.cn, %bb.ch, %bb.ce
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph179.i:                                      ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i, %.lr.ph179.preheader.i
  %indvars.iv.i = phi i64 [ %i.xy, %.lr.ph179.preheader.i ], [ %indvars.iv.next.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ] ; 9 uses
  %.sroa.22.0176.i = phi ptr [ %.sroa.22.3301.i, %.lr.ph179.preheader.i ], [ %.sroa.22.4.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ] ; 8 uses
  %.sroa.15.0175.i = phi ptr [ %.0.i.i.i.i.i302.i, %.lr.ph179.preheader.i ], [ %.sroa.15.1.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ] ; 6 uses
  %.sroa.0119.0174.i = phi ptr [ %.sroa.0119.3300.i, %.lr.ph179.preheader.i ], [ %.sroa.0119.4.i, %_ZN16OpenColorIO_v2_512_GLOBAL__N_116InvLut3DRenderer9RangeTree12updateRangesEm.exit.i ] ; 25 uses
  %.val47.i.i = load ptr, ptr %i.fi, align 8, !tbaa !61 ; 4 uses
  %i.yd = getelementptr inbounds nuw [112 x i8], ptr %.val47.i.i, i64 %indvars.iv.i ; 3 uses
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !223 ; 11 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 64 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 72 ; 2 uses
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !69 ; 2 uses
  %i.yi = load ptr, ptr %i.yf, align 8, !tbaa !59 ; 2 uses
  %i.yj = ptrtoint ptr %i.yh to i64
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %i.ym = ashr exact i64 %i.yl, 3                 ; 3 uses
  %i.yn = icmp ugt i64 %i.ye, %i.ym
  br i1 %i.yn, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.lr.ph179.i
  %i.yo = sub nuw i64 %i.ye, %i.ym
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.yf, i64 noundef %i.yo)
          to label %.noexc99.i unwind label %bb.dl

.noexc99.i:                                       ; preds = %bb.ct
  %.val45.pre.i.i = load ptr, ptr %i.fi, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.cu:                                            ; preds = %.lr.ph179.i
  %i.yp = icmp ult i64 %i.ye, %i.ym
  br i1 %i.yp, label %bb.cv, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.ye ; 2 uses
  %.not.i.i.i98.i = icmp eq ptr %i.yh, %i.yq
  br i1 %.not.i.i.i98.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.cv
  store ptr %i.yq, ptr %i.yg, align 8, !tbaa !69
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i

_ZNSt6vectorImSaImEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.cv, %bb.cu, %.noexc99.i
  %.val45.i.i = phi ptr [ %.val45.pre.i.i, %.noexc99.i ], [ %.val47.i.i, %bb.cu ], [ %.val47.i.i, %bb.cv ], [ %.val47.i.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i ] ; 4 uses
  %i.yr = getelementptr inbounds nuw [112 x i8], ptr %.val45.i.i, i64 %indvars.iv.i ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 88 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 96 ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !69 ; 2 uses
  %i.yv = load ptr, ptr %i.ys, align 8, !tbaa !59 ; 2 uses
  %i.yw = ptrtoint ptr %i.yu to i64
  %i.yx = ptrtoint ptr %i.yv to i64
  %i.yy = sub i64 %i.yw, %i.yx
  %i.yz = ashr exact i64 %i.yy, 3                 ; 3 uses
  %i.za = icmp ugt i64 %i.ye, %i.yz
  br i1 %i.za, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.zb = sub nuw i64 %i.ye, %i.yz
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ys, i64 noundef %i.zb)
          to label %.noexc100.i unwind label %bb.dl

.noexc100.i:                                      ; preds = %bb.cw
  %.val44.pre.i.i = load ptr, ptr %i.fi, align 8, !tbaa !61
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i

bb.cx:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit.i.i
  %i.zc = icmp ult i64 %i.ye, %i.yz
  br i1 %i.zc, label %bb.cy, label %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.yv, i64 %i.ye ; 2 uses
  %.not.i.i48.i.i = icmp eq ptr %i.yu, %i.zd
  br i1 %.not.i.i48.i.i, label %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i49.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i49.i.i:  ; preds = %bb.cy
  store ptr %i.zd, ptr %i.yt, align 8, !tbaa !69
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i

_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i:         ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i49.i.i, %bb.cy, %bb.cx, %.noexc100.i
  %.val69.i = phi ptr [ %.val44.pre.i.i, %.noexc100.i ], [ %.val45.i.i, %bb.cx ], [ %.val45.i.i, %bb.cy ], [ %.val45.i.i, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i49.i.i ] ; 5 uses
  %i.ze = load i64, ptr %i.ex, align 8, !tbaa !65
  %i.zf = trunc i64 %i.ze to i32
  %i.zg = shl nuw i32 1, %i.zf
  %i.zh = sext i32 %i.zg to i64
  %i.zi = load ptr, ptr %i.jh, align 8, !tbaa !59
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.zi, i64 %indvars.iv.i
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 8
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !64
  %i.zm = mul i64 %i.zl, %i.zh                    ; 3 uses
  %i.zn = getelementptr inbounds nuw [112 x i8], ptr %.val69.i, i64 %indvars.iv.i ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 64
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !59 ; 24 uses
  store i64 0, ptr %i.zp, align 8, !tbaa !64
  %i.zq = ptrtoint ptr %.sroa.15.0175.i to i64    ; 2 uses
  %i.zr = ptrtoint ptr %.sroa.0119.0174.i to i64  ; 2 uses
  %i.zs = sub i64 %i.zq, %i.zr                    ; 5 uses
  %i.zt = ashr exact i64 %i.zs, 3                 ; 10 uses
  %i.zu = icmp ugt i64 %i.zt, 1
  br i1 %i.zu, label %.lr.ph.i96.i.preheader, label %.preheader.i.i

.lr.ph.i96.i.preheader:                           ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i
  %i.zv = add nsw i64 %i.zt, -1                   ; 3 uses
  %xtraiter349 = and i64 %i.zv, 1
  %i.zw = icmp eq i64 %i.zs, 16
  br i1 %i.zw, label %.lr.ph.i96.i.epil.preheader, label %.lr.ph.i96.i.preheader.new

.lr.ph.i96.i.preheader.new:                       ; preds = %.lr.ph.i96.i.preheader
  %unroll_iter353 = and i64 %i.zv, -2
  br label %.lr.ph.i96.i

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %bb.dc
  %lcmp.mod351.not = icmp eq i64 %xtraiter349, 0
  br i1 %lcmp.mod351.not, label %.preheader.i.i, label %.lr.ph.i96.i.epil.preheader

.lr.ph.i96.i.epil.preheader:                      ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.i96.i.preheader
  %.03652.i.i.epil.init = phi i64 [ 1, %.lr.ph.i96.i.preheader ], [ %i.abr, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.03751.i.i.epil.init = phi i64 [ 1, %.lr.ph.i96.i.preheader ], [ %.1.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ]
  %lcmp.mod352 = trunc i64 %i.zv to i1
  call void @llvm.assume(i1 %lcmp.mod352)
  %i.zx = getelementptr [8 x i8], ptr %.sroa.0119.0174.i, i64 %.03652.i.i.epil.init ; 2 uses
  %i.zy = load i64, ptr %i.zx, align 8, !tbaa !64
  %i.zz = getelementptr i8, ptr %i.zx, i64 -8
  %i.aaa = load i64, ptr %i.zz, align 8, !tbaa !64
  %i.aab = sub i64 %i.zy, %i.aaa
  %i.aac = icmp ugt i64 %i.aab, %i.zm
  br i1 %i.aac, label %bb.cz, label %.preheader.i.i

bb.cz:                                            ; preds = %.lr.ph.i96.i.epil.preheader
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.03751.i.i.epil.init
  store i64 %.03652.i.i.epil.init, ptr %i.aad, align 8, !tbaa !64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.loopexit.unr-lcssa, %bb.cz, %.lr.ph.i96.i.epil.preheader, %_ZNSt6vectorImSaImEE6resizeEm.exit50.i.i
  %i.aae = add i64 %i.ye, -1                      ; 8 uses
  %.not.i93.i = icmp eq i64 %i.aae, 0
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.zn, i64 88
  %.pre.i94.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !59 ; 9 uses
  br i1 %.not.i93.i, label %.loopexit.i, label %.lr.ph54.i.i.preheader

.lr.ph54.i.i.preheader:                           ; preds = %.preheader.i.i
  %min.iters.check289 = icmp ult i64 %i.aae, 4
  br i1 %min.iters.check289, label %.lr.ph54.i.i.preheader303, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph54.i.i.preheader
  %scevgep = getelementptr i8, ptr %.pre.i94.i, i64 -8
  %i.aaf = shl i64 %i.ye, 3                       ; 2 uses
  %scevgep286 = getelementptr i8, ptr %scevgep, i64 %i.aaf
  %scevgep287 = getelementptr i8, ptr %i.zp, i64 %i.aaf
  %bound0 = icmp ult ptr %.pre.i94.i, %scevgep287
  %bound1 = icmp ult ptr %i.zp, %scevgep286
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph54.i.i.preheader303, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck285
  %n.vec291 = and i64 %i.aae, -4                  ; 3 uses
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next298, %vector.body292 ] ; 4 uses
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %index293 ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  %wide.load294 = load <2 x i64>, ptr %i.aah, align 8, !tbaa !64, !alias.scope !226
  %wide.load295 = load <2 x i64>, ptr %i.aai, align 8, !tbaa !64, !alias.scope !226
  %i.aaj = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %index293 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %wide.load296 = load <2 x i64>, ptr %i.aaj, align 8, !tbaa !64, !alias.scope !226
  %wide.load297 = load <2 x i64>, ptr %i.aak, align 8, !tbaa !64, !alias.scope !226
  %i.aal = sub <2 x i64> %wide.load294, %wide.load296
  %i.aam = sub <2 x i64> %wide.load295, %wide.load297
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %index293 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 16
  store <2 x i64> %i.aal, ptr %i.aan, align 8, !tbaa !64, !alias.scope !227, !noalias !226
  store <2 x i64> %i.aam, ptr %i.aao, align 8, !tbaa !64, !alias.scope !227, !noalias !226
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.aap = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.aap, label %middle.block299, label %vector.body292, !llvm.loop !203

middle.block299:                                  ; preds = %vector.body292
  %cmp.n300 = icmp eq i64 %i.aae, %n.vec291
  br i1 %cmp.n300, label %.loopexit.i, label %.lr.ph54.i.i.preheader303

.lr.ph54.i.i.preheader303:                        ; preds = %vector.memcheck285, %.lr.ph54.i.i.preheader, %middle.block299
  %.053.i.i.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.lr.ph54.i.i.preheader ], [ %n.vec291, %middle.block299 ] ; 3 uses
  %i.aaq = add i64 %i.ye, -2
  %i.aar = sub i64 %i.aaq, %.053.i.i.ph
  %xtraiter355 = and i64 %i.aae, 3                ; 2 uses
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.lr.ph54.i.i.prol.loopexit, label %.lr.ph54.i.i.prol

.lr.ph54.i.i.prol:                                ; preds = %.lr.ph54.i.i.preheader303, %.lr.ph54.i.i.prol
  %.053.i.i.prol = phi i64 [ %i.aas, %.lr.ph54.i.i.prol ], [ %.053.i.i.ph, %.lr.ph54.i.i.preheader303 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph54.i.i.prol ], [ 0, %.lr.ph54.i.i.preheader303 ]
  %i.aas = add nuw i64 %.053.i.i.prol, 1          ; 3 uses
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.aas
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !64
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.053.i.i.prol
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !64
  %i.aax = sub i64 %i.aau, %i.aaw
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %.053.i.i.prol
  store i64 %i.aax, ptr %i.aay, align 8, !tbaa !64
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter355
  br i1 %prol.iter.cmp.not, label %.lr.ph54.i.i.prol.loopexit, label %.lr.ph54.i.i.prol, !llvm.loop !204

.lr.ph54.i.i.prol.loopexit:                       ; preds = %.lr.ph54.i.i.prol, %.lr.ph54.i.i.preheader303
  %.053.i.i.unr = phi i64 [ %.053.i.i.ph, %.lr.ph54.i.i.preheader303 ], [ %i.aas, %.lr.ph54.i.i.prol ]
  %i.aaz = icmp ult i64 %i.aar, 3
  br i1 %i.aaz, label %.loopexit.i, label %.lr.ph54.i.i

.lr.ph.i96.i:                                     ; preds = %bb.dc, %.lr.ph.i96.i.preheader.new
  %.03652.i.i = phi i64 [ 1, %.lr.ph.i96.i.preheader.new ], [ %i.abr, %bb.dc ] ; 4 uses
  %.03751.i.i = phi i64 [ 1, %.lr.ph.i96.i.preheader.new ], [ %.1.i.i.1, %bb.dc ] ; 3 uses
  %niter354 = phi i64 [ 0, %.lr.ph.i96.i.preheader.new ], [ %niter354.next.1, %bb.dc ]
  %i.aba = getelementptr [8 x i8], ptr %.sroa.0119.0174.i, i64 %.03652.i.i ; 2 uses
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !64
  %i.abc = getelementptr i8, ptr %i.aba, i64 -8
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !64
  %i.abe = sub i64 %i.abb, %i.abd
  %i.abf = icmp ugt i64 %i.abe, %i.zm
  br i1 %i.abf, label %bb.da, label %.lr.ph.i96.i.1

bb.da:                                            ; preds = %.lr.ph.i96.i
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.03751.i.i
  store i64 %.03652.i.i, ptr %i.abg, align 8, !tbaa !64
  %i.abh = add i64 %.03751.i.i, 1
  br label %.lr.ph.i96.i.1

.lr.ph.i96.i.1:                                   ; preds = %bb.da, %.lr.ph.i96.i
  %.1.i.i = phi i64 [ %i.abh, %bb.da ], [ %.03751.i.i, %.lr.ph.i96.i ] ; 3 uses
  %i.abi = add nuw i64 %.03652.i.i, 1             ; 2 uses
  %i.abj = getelementptr [8 x i8], ptr %.sroa.0119.0174.i, i64 %i.abi ; 2 uses
  %i.abk = load i64, ptr %i.abj, align 8, !tbaa !64
  %i.abl = getelementptr i8, ptr %i.abj, i64 -8
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !64
  %i.abn = sub i64 %i.abk, %i.abm
  %i.abo = icmp ugt i64 %i.abn, %i.zm
  br i1 %i.abo, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i96.i.1
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.1.i.i
  store i64 %i.abi, ptr %i.abp, align 8, !tbaa !64
  %i.abq = add i64 %.1.i.i, 1
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i96.i.1
  %.1.i.i.1 = phi i64 [ %i.abq, %bb.db ], [ %.1.i.i, %.lr.ph.i96.i.1 ] ; 2 uses
  %i.abr = add nuw i64 %.03652.i.i, 2             ; 2 uses
  %niter354.next.1 = add i64 %niter354, 2         ; 2 uses
  %niter354.ncmp.1 = icmp eq i64 %niter354.next.1, %unroll_iter353
  br i1 %niter354.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.i96.i, !llvm.loop !205

.lr.ph54.i.i:                                     ; preds = %.lr.ph54.i.i.prol.loopexit, %.lr.ph54.i.i
  %.053.i.i = phi i64 [ %i.acn, %.lr.ph54.i.i ], [ %.053.i.i.unr, %.lr.ph54.i.i.prol.loopexit ] ; 6 uses
  %i.abs = add nuw i64 %.053.i.i, 1               ; 3 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.abs
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !64
  %i.abv = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.053.i.i
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !64
  %i.abx = sub i64 %i.abu, %i.abw
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %.053.i.i
  store i64 %i.abx, ptr %i.aby, align 8, !tbaa !64
  %i.abz = add nuw i64 %.053.i.i, 2               ; 3 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.abz
  %i.acb = load i64, ptr %i.aca, align 8, !tbaa !64
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.abs
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !64
  %i.ace = sub i64 %i.acb, %i.acd
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %i.abs
  store i64 %i.ace, ptr %i.acf, align 8, !tbaa !64
  %i.acg = add nuw i64 %.053.i.i, 3               ; 3 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.acg
  %i.aci = load i64, ptr %i.ach, align 8, !tbaa !64
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.abz
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !64
  %i.acl = sub i64 %i.aci, %i.ack
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %i.abz
  store i64 %i.acl, ptr %i.acm, align 8, !tbaa !64
  %i.acn = add nuw i64 %.053.i.i, 4               ; 3 uses
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.acn
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !64
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.acg
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !64
  %i.acs = sub i64 %i.acp, %i.acr
  %i.act = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %i.acg
  store i64 %i.acs, ptr %i.act, align 8, !tbaa !64
  %exitcond55.not.i.i.3 = icmp eq i64 %i.acn, %i.aae
  br i1 %exitcond55.not.i.i.3, label %.loopexit.i, label %.lr.ph54.i.i, !llvm.loop !206

.loopexit.i:                                      ; preds = %.lr.ph54.i.i.prol.loopexit, %.lr.ph54.i.i, %middle.block299, %.preheader.i.i
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %i.aae
  %i.acv = load i64, ptr %i.acu, align 8, !tbaa !64
  %i.acw = sub i64 %i.zt, %i.acv
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %.pre.i94.i, i64 %i.aae
  store i64 %i.acw, ptr %i.acx, align 8, !tbaa !64
  %i.acy = load i64, ptr %i.zn, align 8, !tbaa !223 ; 8 uses
  %.not187.i = icmp eq i64 %i.acy, 0
  br i1 %.not187.i, label %._crit_edge173.i, label %.lr.ph172.i.preheader

.lr.ph172.i.preheader:                            ; preds = %.loopexit.i
  %xtraiter357 = and i64 %i.acy, 3                ; 3 uses
  %i.acz = icmp ult i64 %i.acy, 4
  br i1 %i.acz, label %.lr.ph172.i.epil.preheader, label %.lr.ph172.i.preheader.new

.lr.ph172.i.preheader.new:                        ; preds = %.lr.ph172.i.preheader
  %unroll_iter361 = and i64 %i.acy, -4
  br label %.lr.ph172.i

._crit_edge173.i.loopexit.unr-lcssa:              ; preds = %.lr.ph172.i
  %lcmp.mod359.not = icmp eq i64 %xtraiter357, 0
  br i1 %lcmp.mod359.not, label %._crit_edge173.i, label %.lr.ph172.i.epil.preheader

.lr.ph172.i.epil.preheader:                       ; preds = %._crit_edge173.i.loopexit.unr-lcssa, %.lr.ph172.i.preheader
  %.050170.i.epil.init = phi i64 [ 0, %.lr.ph172.i.preheader ], [ %i.aff, %._crit_edge173.i.loopexit.unr-lcssa ]
  %lcmp.mod360 = icmp ne i64 %xtraiter357, 0
  call void @llvm.assume(i1 %lcmp.mod360)
  br label %.lr.ph172.i.epil

.lr.ph172.i.epil:                                 ; preds = %.lr.ph172.i.epil, %.lr.ph172.i.epil.preheader
  %.050170.i.epil = phi i64 [ %i.adf, %.lr.ph172.i.epil ], [ %.050170.i.epil.init, %.lr.ph172.i.epil.preheader ] ; 3 uses
  %epil.iter358 = phi i64 [ %epil.iter358.next, %.lr.ph172.i.epil ], [ 0, %.lr.ph172.i.epil.preheader ]
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.zp, i64 %.050170.i.epil
  %i.adb = load i64, ptr %i.ada, align 8, !tbaa !64
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0174.i, i64 %i.adb
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !64
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0119.0174.i, i64 %.050170.i.epil
  store i64 %i.add, ptr %i.ade, align 8, !tbaa !64
  %i.adf = add nuw i64 %.050170.i.epil, 1
  %epil.iter358.next = add i64 %epil.iter358, 1   ; 2 uses
  %epil.iter358.cmp.not = icmp eq i64 %epil.iter358.next, %xtraiter357
  br i1 %epil.iter358.cmp.not, label %._crit_edge173.i, label %.lr.ph172.i.epil, !llvm.loop !207

._crit_edge173.i:                                 ; preds = %._crit_edge173.i.loopexit.unr-lcssa, %.lr.ph172.i.epil, %.loopexit.i
  %i.adg = icmp ugt i64 %i.acy, %i.zt
  br i1 %i.adg, label %bb.dd, label %bb.dj

bb.dd:                                            ; preds = %._crit_edge173.i
  %i.adh = sub nuw i64 %i.acy, %i.zt              ; 6 uses
  %i.adi = ptrtoint ptr %.sroa.22.0176.i to i64   ; 2 uses
  %i.adj = sub i64 %i.adi, %i.zq
  %i.adk = ashr exact i64 %i.adj, 3               ; 2 uses
  %i.adl = icmp ult i64 %i.zt, 1152921504606846976
  call void @llvm.assume(i1 %i.adl)
  %i.adm = xor i64 %i.zt, 1152921504606846975     ; 2 uses
  %i.adn = icmp ule i64 %i.adk, %i.adm
  call void @llvm.assume(i1 %i.adn)
  %.not28.i.i = icmp ult i64 %i.adk, %i.adh
  br i1 %.not28.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store i64 0, ptr %.sroa.15.0175.i, align 8, !tbaa !64
  %i.ado = getelementptr i8, ptr %.sroa.15.0175.i, i64 8 ; 3 uses
  %i.adp = add nsw i64 %i.adh, -1                 ; 2 uses
  %i.adq = icmp eq i64 %i.adp, 0
  br i1 %i.adq, label %_ZNSt6vectorImSaImEE6resizeEm.exit104.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.de
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.adp, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ado, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !64
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit104.i

bb.df:                                            ; preds = %bb.dd
  %i.ads = icmp ult i64 %i.adm, %i.adh
  br i1 %i.ads, label %bb.dg, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #27
          to label %.noexc117.i unwind label %.loopexit.split-lp.i

.noexc117.i:                                      ; preds = %bb.dg
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.df
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zt, i64 %i.adh)
  %i.adt = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.zt
  %i.adu = call i64 @llvm.umin.i64(i64 %i.adt, i64 1152921504606846975) ; 2 uses
  %i.adv = shl nuw nsw i64 %i.adu, 3
  %i.adw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adv) #24
          to label %.noexc118.i unwind label %.loopexit138.i ; 4 uses

.noexc118.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.zs ; 3 uses
  store i64 0, ptr %i.adx, align 8, !tbaa !64
  %i.ady = add nsw i64 %i.adh, -1                 ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i
end_hunk_0
