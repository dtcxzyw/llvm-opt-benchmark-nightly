inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
  %.promoted1305 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1308 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1311 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1314 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1317 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1320 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1323 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1326 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1329 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1332 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1335 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1338 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1341 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1343 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1345 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1347 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i152

bb.o:                                             ; preds = %bb.o, %.preheader52.i138
  %indvars.iv.i142 = phi i64 [ 0, %.preheader52.i138 ], [ %indvars.iv.next.i146.1, %bb.o ] ; 3 uses
  %.14553.i143 = phi i32 [ %.04455.i140, %.preheader52.i138 ], [ %i.ul, %bb.o ] ; 2 uses
  %i.uf = mul nuw nsw i32 %.14553.i143, 3125
  %i.ug = and i32 %i.uf, 65535
  %i.uh = add nsw i32 %i.ug, -32768
  %i.ui = sitofp i32 %i.uh to float
  %i.uj = fmul nnan float %i.ui, f0x38800000
  %gep.i144 = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  store float %i.uj, ptr %gep.i144, align 4, !tbaa !11
  %i.uk = mul nsw i32 %.14553.i143, 761
  %i.ul = and i32 %i.uk, 65535                    ; 3 uses
  %i.um = add nsw i32 %i.ul, -32768
  %i.un = sitofp i32 %i.um to float
  %i.uo = fmul nnan float %i.un, f0x38800000
  %i.up = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.up, i64 4
  store float %i.uo, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.i148, label %bb.o, !llvm.loop !13

._crit_edge.i148:                                 ; preds = %bb.o
  %indvars.iv.next65.i149 = add nuw nsw i64 %indvars.iv64.i139, 1 ; 2 uses
  %exitcond68.not.i150 = icmp eq i64 %indvars.iv.next65.i149, 100
  br i1 %exitcond68.not.i150, label %.preheader51.i151, label %.preheader52.i138, !llvm.loop !15

.preheader.i152:                                  ; preds = %.preheader.i152, %.preheader51.i151
  %i.uq = phi float [ %.promoted1347, %.preheader51.i151 ], [ %i.wx, %.preheader.i152 ]
  %i.ur = phi float [ %.promoted1345, %.preheader51.i151 ], [ %i.wv, %.preheader.i152 ]
  %i.us = phi float [ %.promoted1343, %.preheader51.i151 ], [ %i.wt, %.preheader.i152 ]
  %i.ut = phi float [ %.promoted1341, %.preheader51.i151 ], [ %i.wr, %.preheader.i152 ]
  %wide.load645.111339 = phi <4 x float> [ %.promoted1338, %.preheader51.i151 ], [ %i.wp, %.preheader.i152 ]
  %wide.load644.111336 = phi <4 x float> [ %.promoted1335, %.preheader51.i151 ], [ %i.wo, %.preheader.i152 ]
  %wide.load645.101333 = phi <4 x float> [ %.promoted1332, %.preheader51.i151 ], [ %i.wl, %.preheader.i152 ]
  %wide.load644.101330 = phi <4 x float> [ %.promoted1329, %.preheader51.i151 ], [ %i.wk, %.preheader.i152 ]
  %wide.load645.91327 = phi <4 x float> [ %.promoted1326, %.preheader51.i151 ], [ %i.wh, %.preheader.i152 ]
  %wide.load644.91324 = phi <4 x float> [ %.promoted1323, %.preheader51.i151 ], [ %i.wg, %.preheader.i152 ]
  %wide.load645.81321 = phi <4 x float> [ %.promoted1320, %.preheader51.i151 ], [ %i.wd, %.preheader.i152 ]
  %wide.load644.81318 = phi <4 x float> [ %.promoted1317, %.preheader51.i151 ], [ %i.wc, %.preheader.i152 ]
  %wide.load645.71315 = phi <4 x float> [ %.promoted1314, %.preheader51.i151 ], [ %i.vz, %.preheader.i152 ]
  %wide.load644.71312 = phi <4 x float> [ %.promoted1311, %.preheader51.i151 ], [ %i.vy, %.preheader.i152 ]
  %wide.load645.61309 = phi <4 x float> [ %.promoted1308, %.preheader51.i151 ], [ %i.vv, %.preheader.i152 ]
  %wide.load644.61306 = phi <4 x float> [ %.promoted1305, %.preheader51.i151 ], [ %i.vu, %.preheader.i152 ]
  %wide.load645.51303 = phi <4 x float> [ %.promoted1302, %.preheader51.i151 ], [ %i.vr, %.preheader.i152 ]
  %wide.load644.51300 = phi <4 x float> [ %.promoted1299, %.preheader51.i151 ], [ %i.vq, %.preheader.i152 ]
  %wide.load645.41297 = phi <4 x float> [ %.promoted1296, %.preheader51.i151 ], [ %i.vn, %.preheader.i152 ]
  %wide.load644.41294 = phi <4 x float> [ %.promoted1293, %.preheader51.i151 ], [ %i.vm, %.preheader.i152 ]
  %wide.load645.31291 = phi <4 x float> [ %.promoted1290, %.preheader51.i151 ], [ %i.vj, %.preheader.i152 ]
  %wide.load644.31288 = phi <4 x float> [ %.promoted1287, %.preheader51.i151 ], [ %i.vi, %.preheader.i152 ]
  %wide.load645.21285 = phi <4 x float> [ %.promoted1284, %.preheader51.i151 ], [ %i.vf, %.preheader.i152 ]
  %wide.load644.21282 = phi <4 x float> [ %.promoted1281, %.preheader51.i151 ], [ %i.ve, %.preheader.i152 ]
  %wide.load645.11279 = phi <4 x float> [ %.promoted1278, %.preheader51.i151 ], [ %i.vb, %.preheader.i152 ]
  %wide.load644.11276 = phi <4 x float> [ %.promoted1275, %.preheader51.i151 ], [ %i.va, %.preheader.i152 ]
  %i.uu = phi <4 x float> [ %.promoted1273, %.preheader51.i151 ], [ %i.ux, %.preheader.i152 ]
  %wide.load6441271 = phi <4 x float> [ %main.b.promoted1270, %.preheader51.i151 ], [ %i.uw, %.preheader.i152 ]
  %indvars.iv77.i153 = phi i64 [ 0, %.preheader51.i151 ], [ %indvars.iv.next78.i160, %.preheader.i152 ] ; 2 uses
  %invariant.gep82.i154.idx = mul nuw nsw i64 %indvars.iv77.i153, 804
  %invariant.gep82.i154 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i154.idx ; 28 uses
  %i.uv = getelementptr i8, ptr %invariant.gep82.i154, i64 16
  %wide.load646 = load <4 x float>, ptr %invariant.gep82.i154, align 4, !tbaa !11
  %wide.load647 = load <4 x float>, ptr %i.uv, align 4, !tbaa !11
  %i.uw = fadd <4 x float> %wide.load6441271, %wide.load646 ; 2 uses
  %i.ux = fadd <4 x float> %i.uu, %wide.load647   ; 2 uses
  %i.uy = getelementptr i8, ptr %invariant.gep82.i154, i64 32
  %i.uz = getelementptr i8, ptr %invariant.gep82.i154, i64 48
  %wide.load646.1 = load <4 x float>, ptr %i.uy, align 4, !tbaa !11
  %wide.load647.1 = load <4 x float>, ptr %i.uz, align 4, !tbaa !11
  %i.va = fadd <4 x float> %wide.load644.11276, %wide.load646.1 ; 2 uses
  %i.vb = fadd <4 x float> %wide.load645.11279, %wide.load647.1 ; 2 uses
  %i.vc = getelementptr i8, ptr %invariant.gep82.i154, i64 64
  %i.vd = getelementptr i8, ptr %invariant.gep82.i154, i64 80
  %wide.load646.2 = load <4 x float>, ptr %i.vc, align 4, !tbaa !11
  %wide.load647.2 = load <4 x float>, ptr %i.vd, align 4, !tbaa !11
  %i.ve = fadd <4 x float> %wide.load644.21282, %wide.load646.2 ; 2 uses
  %i.vf = fadd <4 x float> %wide.load645.21285, %wide.load647.2 ; 2 uses
  %i.vg = getelementptr i8, ptr %invariant.gep82.i154, i64 96
  %i.vh = getelementptr i8, ptr %invariant.gep82.i154, i64 112
  %wide.load646.3 = load <4 x float>, ptr %i.vg, align 4, !tbaa !11
  %wide.load647.3 = load <4 x float>, ptr %i.vh, align 4, !tbaa !11
  %i.vi = fadd <4 x float> %wide.load644.31288, %wide.load646.3 ; 2 uses
  %i.vj = fadd <4 x float> %wide.load645.31291, %wide.load647.3 ; 2 uses
  %i.vk = getelementptr i8, ptr %invariant.gep82.i154, i64 128
  %i.vl = getelementptr i8, ptr %invariant.gep82.i154, i64 144
  %wide.load646.4 = load <4 x float>, ptr %i.vk, align 4, !tbaa !11
  %wide.load647.4 = load <4 x float>, ptr %i.vl, align 4, !tbaa !11
  %i.vm = fadd <4 x float> %wide.load644.41294, %wide.load646.4 ; 2 uses
  %i.vn = fadd <4 x float> %wide.load645.41297, %wide.load647.4 ; 2 uses
  %i.vo = getelementptr i8, ptr %invariant.gep82.i154, i64 160
  %i.vp = getelementptr i8, ptr %invariant.gep82.i154, i64 176
  %wide.load646.5 = load <4 x float>, ptr %i.vo, align 4, !tbaa !11
  %wide.load647.5 = load <4 x float>, ptr %i.vp, align 4, !tbaa !11
  %i.vq = fadd <4 x float> %wide.load644.51300, %wide.load646.5 ; 2 uses
  %i.vr = fadd <4 x float> %wide.load645.51303, %wide.load647.5 ; 2 uses
  %i.vs = getelementptr i8, ptr %invariant.gep82.i154, i64 192
  %i.vt = getelementptr i8, ptr %invariant.gep82.i154, i64 208
  %wide.load646.6 = load <4 x float>, ptr %i.vs, align 4, !tbaa !11
  %wide.load647.6 = load <4 x float>, ptr %i.vt, align 4, !tbaa !11
  %i.vu = fadd <4 x float> %wide.load644.61306, %wide.load646.6 ; 2 uses
  %i.vv = fadd <4 x float> %wide.load645.61309, %wide.load647.6 ; 2 uses
  %i.vw = getelementptr i8, ptr %invariant.gep82.i154, i64 224
  %i.vx = getelementptr i8, ptr %invariant.gep82.i154, i64 240
  %wide.load646.7 = load <4 x float>, ptr %i.vw, align 4, !tbaa !11
  %wide.load647.7 = load <4 x float>, ptr %i.vx, align 4, !tbaa !11
  %i.vy = fadd <4 x float> %wide.load644.71312, %wide.load646.7 ; 2 uses
  %i.vz = fadd <4 x float> %wide.load645.71315, %wide.load647.7 ; 2 uses
  %i.wa = getelementptr i8, ptr %invariant.gep82.i154, i64 256
  %i.wb = getelementptr i8, ptr %invariant.gep82.i154, i64 272
  %wide.load646.8 = load <4 x float>, ptr %i.wa, align 4, !tbaa !11
  %wide.load647.8 = load <4 x float>, ptr %i.wb, align 4, !tbaa !11
  %i.wc = fadd <4 x float> %wide.load644.81318, %wide.load646.8 ; 2 uses
  %i.wd = fadd <4 x float> %wide.load645.81321, %wide.load647.8 ; 2 uses
  %i.we = getelementptr i8, ptr %invariant.gep82.i154, i64 288
  %i.wf = getelementptr i8, ptr %invariant.gep82.i154, i64 304
  %wide.load646.9 = load <4 x float>, ptr %i.we, align 4, !tbaa !11
  %wide.load647.9 = load <4 x float>, ptr %i.wf, align 4, !tbaa !11
  %i.wg = fadd <4 x float> %wide.load644.91324, %wide.load646.9 ; 2 uses
  %i.wh = fadd <4 x float> %wide.load645.91327, %wide.load647.9 ; 2 uses
  %i.wi = getelementptr i8, ptr %invariant.gep82.i154, i64 320
  %i.wj = getelementptr i8, ptr %invariant.gep82.i154, i64 336
  %wide.load646.10 = load <4 x float>, ptr %i.wi, align 4, !tbaa !11
  %wide.load647.10 = load <4 x float>, ptr %i.wj, align 4, !tbaa !11
  %i.wk = fadd <4 x float> %wide.load644.101330, %wide.load646.10 ; 2 uses
  %i.wl = fadd <4 x float> %wide.load645.101333, %wide.load647.10 ; 2 uses
  %i.wm = getelementptr i8, ptr %invariant.gep82.i154, i64 352
  %i.wn = getelementptr i8, ptr %invariant.gep82.i154, i64 368
  %wide.load646.11 = load <4 x float>, ptr %i.wm, align 4, !tbaa !11
  %wide.load647.11 = load <4 x float>, ptr %i.wn, align 4, !tbaa !11
  %i.wo = fadd <4 x float> %wide.load644.111336, %wide.load646.11 ; 2 uses
  %i.wp = fadd <4 x float> %wide.load645.111339, %wide.load647.11 ; 2 uses
  %gep83.i156 = getelementptr i8, ptr %invariant.gep82.i154, i64 384
  %i.wq = load float, ptr %gep83.i156, align 4, !tbaa !11
  %i.wr = fadd float %i.ut, %i.wq                 ; 2 uses
  %gep83.i156.1 = getelementptr i8, ptr %invariant.gep82.i154, i64 388
  %i.ws = load float, ptr %gep83.i156.1, align 4, !tbaa !11
  %i.wt = fadd float %i.us, %i.ws                 ; 2 uses
  %gep83.i156.2 = getelementptr i8, ptr %invariant.gep82.i154, i64 392
  %i.wu = load float, ptr %gep83.i156.2, align 4, !tbaa !11
  %i.wv = fadd float %i.ur, %i.wu                 ; 2 uses
  %gep83.i156.3 = getelementptr i8, ptr %invariant.gep82.i154, i64 396
  %i.ww = load float, ptr %gep83.i156.3, align 4, !tbaa !11
  %i.wx = fadd float %i.uq, %i.ww                 ; 2 uses
  %indvars.iv.next78.i160 = add nuw nsw i64 %indvars.iv77.i153, 1 ; 2 uses
  %exitcond81.not.i161 = icmp eq i64 %indvars.iv.next78.i160, 100
  br i1 %exitcond81.not.i161, label %.lr.ph103.i.preheader.preheader, label %.preheader.i152, !llvm.loop !16

.lr.ph103.i.preheader.preheader:                  ; preds = %.preheader.i152
  store <4 x float> %i.uw, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.ux, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.va, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.vb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.ve, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.vf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.vi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.vj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.vm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.vn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.vq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.vr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.vu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.vv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.vy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.vz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.wc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.wd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.wg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.wh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.wk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.wl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.wo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.wp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.wr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.wt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.wv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.wx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.lr.ph103.i.preheader.preheader, %.loopexit.i
  %i.wy = phi i32 [ %i.zk, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ] ; 12 uses
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %.loopexit.i ], [ 1, %.lr.ph103.i.preheader.preheader ] ; 2 uses
  %i.wz = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %indvars109.i = trunc i64 %indvars.iv107.i to i32 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.xa = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i
  %i.xb = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xc = getelementptr i8, ptr %i.xa, i64 %i.xb  ; 7 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !11
  %i.xe = tail call float @llvm.fabs.f32(float %i.xd) ; 2 uses
  %xtraiter = and i64 %i.wz, 1
  %i.xf = icmp eq i64 %indvars.iv107.i, 98
  br i1 %i.xf, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph103.i.preheader.new

.lr.ph103.i.preheader.new:                        ; preds = %.lr.ph103.i.preheader
  %unroll_iter = and i64 %i.wz, -2
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph103.i.preheader.new
  %indvars.iv52.i.i = phi i64 [ 1, %.lr.ph103.i.preheader.new ], [ %indvars.iv.next53.i.i.1, %.lr.ph48.i.i ] ; 4 uses
  %.247.i.i = phi i32 [ 0, %.lr.ph103.i.preheader.new ], [ %.3.i.i.1, %.lr.ph48.i.i ]
  %.23345.i.i = phi float [ %i.xe, %.lr.ph103.i.preheader.new ], [ %.334.i.i.1, %.lr.ph48.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.i.preheader.new ], [ %niter.next.1, %.lr.ph48.i.i ]
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv52.i.i
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !11
  %i.xi = tail call float @llvm.fabs.f32(float %i.xh) ; 2 uses
  %i.xj = fcmp ogt float %i.xi, %.23345.i.i       ; 2 uses
  %.334.i.i = select i1 %i.xj, float %i.xi, float %.23345.i.i ; 2 uses
  %i.xk = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %.3.i.i = select i1 %i.xj, i32 %i.xk, i32 %.247.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv.next53.i.i
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !11
  %i.xn = tail call float @llvm.fabs.f32(float %i.xm) ; 2 uses
  %i.xo = fcmp ogt float %i.xn, %.334.i.i         ; 2 uses
  %.334.i.i.1 = select i1 %i.xo, float %i.xn, float %.334.i.i ; 2 uses
  %i.xp = trunc nuw nsw i64 %indvars.iv.next53.i.i to i32
  %.3.i.i.1 = select i1 %i.xo, i32 %i.xp, i32 %.3.i.i ; 3 uses
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !27

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph48.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph103.i.preheader
  %indvars.iv52.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i.preheader ], [ %indvars.iv.next53.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.247.i.i.epil.init = phi i32 [ 0, %.lr.ph103.i.preheader ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23345.i.i.epil.init = phi float [ %i.xe, %.lr.ph103.i.preheader ], [ %.334.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod850 = trunc i64 %i.wz to i1
  tail call void @llvm.assume(i1 %lcmp.mod850)
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv52.i.i.epil.init
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !11
  %i.xs = tail call float @llvm.fabs.f32(float %i.xr)
  %i.xt = fcmp ogt float %i.xs, %.23345.i.i.epil.init
  %i.xu = trunc nuw nsw i64 %indvars.iv52.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.xt, i32 %i.xu, i32 %.247.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph48.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph48.i.i.epil.preheader ] ; 2 uses
  %i.xv = add nsw i32 %.3.i.i.lcssa, %indvars109.i ; 2 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i
  store i32 %i.xv, ptr %i.xw, align 4, !tbaa !4
  %i.xx = sext i32 %i.xv to i64                   ; 2 uses
  %.idx394 = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xy = getelementptr i8, ptr @main.a, i64 %.idx394
  %i.xz = getelementptr [4 x i8], ptr %i.xy, i64 %i.xx ; 2 uses
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !11 ; 3 uses
  %i.yb = fcmp une float %i.ya, 0.000000e+00
  br i1 %i.yb, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  %.pre.i = load float, ptr %i.xc, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %.pre.i, ptr %i.xz, align 4, !tbaa !11
  store float %i.ya, ptr %i.xc, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.yc = phi float [ %i.ya, %bb.q ], [ %.pre.i, %bb.p ]
  %i.yd = fdiv float -1.000000e+00, %i.yc         ; 2 uses
  %i.ye = sub nuw nsw i64 99, %indvars.iv107.i    ; 6 uses
  %i.yf = getelementptr i8, ptr %i.xc, i64 4      ; 4 uses
  %min.iters.check626 = icmp samesign ugt i64 %indvars.iv107.i, 91
  br i1 %min.iters.check626, label %.lr.ph25.i.i.preheader, label %vector.ph627

vector.ph627:                                     ; preds = %bb.r
  %n.vec629 = and i64 %i.ye, 120                  ; 3 uses
  %broadcast.splatinsert630 = insertelement <4 x float> poison, float %i.yd, i64 0
  %broadcast.splat631 = shufflevector <4 x float> %broadcast.splatinsert630, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph627
  %index633 = phi i64 [ 0, %vector.ph627 ], [ %index.next636, %vector.body632 ] ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index633 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 16 ; 2 uses
  %wide.load634 = load <4 x float>, ptr %i.yg, align 4, !tbaa !11
  %wide.load635 = load <4 x float>, ptr %i.yh, align 4, !tbaa !11
  %i.yi = fmul <4 x float> %broadcast.splat631, %wide.load634
  %i.yj = fmul <4 x float> %broadcast.splat631, %wide.load635
  store <4 x float> %i.yi, ptr %i.yg, align 4, !tbaa !11
  store <4 x float> %i.yj, ptr %i.yh, align 4, !tbaa !11
  %index.next636 = add nuw i64 %index633, 8       ; 2 uses
  %i.yk = icmp eq i64 %index.next636, %n.vec629
  br i1 %i.yk, label %middle.block637, label %vector.body632, !llvm.loop !28

middle.block637:                                  ; preds = %vector.body632
  %cmp.n638 = icmp eq i64 %i.ye, %n.vec629
  br i1 %cmp.n638, label %.lr.ph.i, label %.lr.ph25.i.i.preheader

.lr.ph25.i.i.preheader:                           ; preds = %bb.r, %middle.block637
  %indvars.iv28.i.i.ph = phi i64 [ 0, %bb.r ], [ %n.vec629, %middle.block637 ]
  br label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.lr.ph25.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.lr.ph25.i.i ], [ %indvars.iv28.i.i.ph, %.lr.ph25.i.i.preheader ] ; 2 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv28.i.i ; 2 uses
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !11
  %i.yn = fmul float %i.yd, %i.ym
  store float %i.yn, ptr %i.yl, align 4, !tbaa !11
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next29.i.i, %i.ye
  br i1 %exitcond.not.i.i165, label %.lr.ph.i, label %.lr.ph25.i.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %.lr.ph25.i.i, %middle.block637
  %invariant.gep.i166 = getelementptr [4 x i8], ptr @main.a, i64 %i.xx
  %min.iters.check609 = icmp samesign ugt i64 %indvars.iv107.i, 91
  %n.vec612 = and i64 %i.ye, 120                  ; 3 uses
  %cmp.n623 = icmp eq i64 %i.ye, %n.vec612
  br label %bb.s

bb.s:                                             ; preds = %daxpy.exit.i172, %.lr.ph.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.i163, %.lr.ph.i ], [ %indvars.iv.next105.i, %daxpy.exit.i172 ] ; 2 uses
  %i.yo = mul nuw nsw i64 %indvars.iv104.i, 201   ; 2 uses
  %gep.i167 = getelementptr [4 x i8], ptr %invariant.gep.i166, i64 %i.yo ; 2 uses
  %i.yp = load float, ptr %gep.i167, align 4, !tbaa !11 ; 4 uses
  %.pre112.i = add nuw nsw i64 %i.yo, %indvars.iv107.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i168, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !11
  store float %i.yr, ptr %gep.i167, align 4, !tbaa !11
  store float %i.yp, ptr %i.yq, align 4, !tbaa !11
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %bb.t, %bb.s
  %i.ys = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i
  %i.yt = getelementptr i8, ptr %i.ys, i64 4      ; 2 uses
  %i.yu = fcmp oeq float %i.yp, 0.000000e+00
  br i1 %i.yu, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %._crit_edge.i168
  br i1 %min.iters.check609, label %.lr.ph.i.i169.preheader826, label %vector.ph610

vector.ph610:                                     ; preds = %.lr.ph.i.i169.preheader
  %broadcast.splatinsert613 = insertelement <4 x float> poison, float %i.yp, i64 0
  %broadcast.splat614 = shufflevector <4 x float> %broadcast.splatinsert613, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph610
  %index616 = phi i64 [ 0, %vector.ph610 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %index616 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 2 uses
  %wide.load617 = load <4 x float>, ptr %i.yv, align 4, !tbaa !11
  %wide.load618 = load <4 x float>, ptr %i.yw, align 4, !tbaa !11
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %index616 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %wide.load619 = load <4 x float>, ptr %i.yx, align 4, !tbaa !11
  %wide.load620 = load <4 x float>, ptr %i.yy, align 4, !tbaa !11
  %i.yz = fmul <4 x float> %broadcast.splat614, %wide.load619
  %i.za = fmul <4 x float> %broadcast.splat614, %wide.load620
  %i.zb = fadd <4 x float> %wide.load617, %i.yz
  %i.zc = fadd <4 x float> %wide.load618, %i.za
  store <4 x float> %i.zb, ptr %i.yv, align 4, !tbaa !11
  store <4 x float> %i.zc, ptr %i.yw, align 4, !tbaa !11
  %index.next621 = add nuw i64 %index616, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next621, %n.vec612
  br i1 %i.zd, label %middle.block622, label %vector.body615, !llvm.loop !30

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader826

.lr.ph.i.i169.preheader826:                       ; preds = %.lr.ph.i.i169.preheader, %middle.block622
  %indvars.iv.i.i170.ph = phi i64 [ 0, %.lr.ph.i.i169.preheader ], [ %n.vec612, %middle.block622 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader826, %.lr.ph.i.i169
  %indvars.iv.i.i170 = phi i64 [ %indvars.iv.next.i.i171, %.lr.ph.i.i169 ], [ %indvars.iv.i.i170.ph, %.lr.ph.i.i169.preheader826 ] ; 3 uses
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %indvars.iv.i.i170 ; 2 uses
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !11
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yf, i64 %indvars.iv.i.i170
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !11
  %i.zi = fmul float %i.yp, %i.zh
  %i.zj = fadd float %i.zf, %i.zi
  store float %i.zj, ptr %i.ze, align 4, !tbaa !11
  %indvars.iv.next.i.i171 = add nuw nsw i64 %indvars.iv.i.i170, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i.i171, %i.ye
  br i1 %exitcond.not.i99.i, label %daxpy.exit.i172, label %.lr.ph.i.i169, !llvm.loop !31

daxpy.exit.i172:                                  ; preds = %.lr.ph.i.i169, %middle.block622, %._crit_edge.i168
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next105.i, 100
  br i1 %exitcond.not.i173, label %.loopexit.i, label %bb.s, !llvm.loop !32

.loopexit.i:                                      ; preds = %daxpy.exit.i172, %idamax.exit.i
  %i.zk = phi i32 [ %indvars109.i, %idamax.exit.i ], [ %i.wy, %daxpy.exit.i172 ] ; 2 uses
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, 99
  br i1 %exitcond111.not.i, label %.loopexit100.i, label %.lr.ph103.i.preheader, !llvm.loop !33

.loopexit100.i:                                   ; preds = %.loopexit.i
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.zl = add nuw nsw i32 %storemerge79415, 1     ; 2 uses
  %exitcond468.not = icmp eq i32 %i.zl, %i.ud
  br i1 %exitcond468.not, label %._crit_edge416, label %.preheader52.i138.preheader, !llvm.loop !34

._crit_edge416:                                   ; preds = %.loopexit100.i
  %i.zm = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.zn = fcmp oeq float %i.zm, 0.000000e+00
  %i.zo = select i1 %i.zn, i32 99, i32 %i.zk
  store i32 %i.zo, ptr @main.info, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge416, %bb.n
  %i.zp = tail call i64 @clock() #12              ; 0 uses
  %i.zq = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.zr = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zq, ptr noundef nonnull @.str.15, i32 noundef %i.zr, double noundef 0.000000e+00) #14 ; 0 uses
  %exitcond469.not = icmp eq i32 %.162, -1
  br i1 %exitcond469.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zt = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zu = shl nsw i32 %i.zt, 1
  br label %bb.n, !llvm.loop !35

.critedge:                                        ; preds = %bb.u
  %i.zv = sitofp i64 %i.qz to float
  %i.zw = fdiv nnan float %i.zv, 1.000000e+06
  %i.zx = sitofp i64 %i.tu to float
  %i.zy = fdiv nnan float %i.zx, 1.000000e+06
  %i.zz = fsub float %i.zy, %i.zw
  %i.aaa = fdiv float %i.zz, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %i.aab = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aab, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.aad = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aad, ptr noundef nonnull @.str.19, i32 noundef 201) #14 ; 0 uses
  %i.aaf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aag = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.aaf) #13 ; 0 uses
  %i.aah = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aai = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.aah) #13 ; 0 uses
  %i.aaj = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aak = sitofp i32 %i.aaj to float
  %i.aal = fmul float %i.aaa, %i.aak
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %._crit_edge426
  %i.aam = tail call i64 @clock() #12
  %i.aan = sitofp i64 %i.aam to float
  %i.aao = fdiv float %i.aan, 1.000000e+06
  %i.aap = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.preheader52.i174.preheader, label %bb.ad

.preheader52.i174.preheader:                      ; preds = %bb.w, %.loopexit100.i217
  %storemerge85420 = phi i32 [ %i.afx, %.loopexit100.i217 ], [ 0, %bb.w ]
  br label %.preheader52.i174

.preheader52.i174:                                ; preds = %.preheader52.i174.preheader, %._crit_edge.i184
  %indvars.iv64.i175 = phi i64 [ %indvars.iv.next65.i185, %._crit_edge.i184 ], [ 0, %.preheader52.i174.preheader ] ; 2 uses
  %.04455.i176 = phi i32 [ %i.aax, %._crit_edge.i184 ], [ 1325, %.preheader52.i174.preheader ]
  %invariant.gep.i177.idx = mul nuw nsw i64 %indvars.iv64.i175, 804
  %invariant.gep.i177 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i177.idx ; 2 uses
  br label %bb.x

.preheader51.i187:                                ; preds = %._crit_edge.i184
end_hunk_0
begin_hunk_1_@main:bb.a
  %.promoted1384 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1387 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1390 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1393 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1396 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1399 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1402 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1405 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1408 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1411 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1414 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1417 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1420 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1422 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1424 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1426 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i188

bb.x:                                             ; preds = %bb.x, %.preheader52.i174
  %indvars.iv.i178 = phi i64 [ 0, %.preheader52.i174 ], [ %indvars.iv.next.i182.1, %bb.x ] ; 3 uses
  %.14553.i179 = phi i32 [ %.04455.i176, %.preheader52.i174 ], [ %i.aax, %bb.x ] ; 2 uses
  %i.aar = mul nuw nsw i32 %.14553.i179, 3125
  %i.aas = and i32 %i.aar, 65535
  %i.aat = add nsw i32 %i.aas, -32768
  %i.aau = sitofp i32 %i.aat to float
  %i.aav = fmul nnan float %i.aau, f0x38800000
  %gep.i180 = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  store float %i.aav, ptr %gep.i180, align 4, !tbaa !11
  %i.aaw = mul nsw i32 %.14553.i179, 761
  %i.aax = and i32 %i.aaw, 65535                  ; 3 uses
  %i.aay = add nsw i32 %i.aax, -32768
  %i.aaz = sitofp i32 %i.aay to float
  %i.aba = fmul nnan float %i.aaz, f0x38800000
  %i.abb = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  %gep.i180.1 = getelementptr i8, ptr %i.abb, i64 4
  store float %i.aba, ptr %gep.i180.1, align 4, !tbaa !11
  %indvars.iv.next.i182.1 = add nuw nsw i64 %indvars.iv.i178, 2 ; 2 uses
  %exitcond.not.i183.1 = icmp eq i64 %indvars.iv.next.i182.1, 100
  br i1 %exitcond.not.i183.1, label %._crit_edge.i184, label %bb.x, !llvm.loop !13

._crit_edge.i184:                                 ; preds = %bb.x
  %indvars.iv.next65.i185 = add nuw nsw i64 %indvars.iv64.i175, 1 ; 2 uses
  %exitcond68.not.i186 = icmp eq i64 %indvars.iv.next65.i185, 100
  br i1 %exitcond68.not.i186, label %.preheader51.i187, label %.preheader52.i174, !llvm.loop !15

.preheader.i188:                                  ; preds = %.preheader.i188, %.preheader51.i187
  %i.abc = phi float [ %.promoted1426, %.preheader51.i187 ], [ %i.adj, %.preheader.i188 ]
  %i.abd = phi float [ %.promoted1424, %.preheader51.i187 ], [ %i.adh, %.preheader.i188 ]
  %i.abe = phi float [ %.promoted1422, %.preheader51.i187 ], [ %i.adf, %.preheader.i188 ]
  %i.abf = phi float [ %.promoted1420, %.preheader51.i187 ], [ %i.add, %.preheader.i188 ]
  %wide.load721.111418 = phi <4 x float> [ %.promoted1417, %.preheader51.i187 ], [ %i.adb, %.preheader.i188 ]
  %wide.load720.111415 = phi <4 x float> [ %.promoted1414, %.preheader51.i187 ], [ %i.ada, %.preheader.i188 ]
  %wide.load721.101412 = phi <4 x float> [ %.promoted1411, %.preheader51.i187 ], [ %i.acx, %.preheader.i188 ]
  %wide.load720.101409 = phi <4 x float> [ %.promoted1408, %.preheader51.i187 ], [ %i.acw, %.preheader.i188 ]
  %wide.load721.91406 = phi <4 x float> [ %.promoted1405, %.preheader51.i187 ], [ %i.act, %.preheader.i188 ]
  %wide.load720.91403 = phi <4 x float> [ %.promoted1402, %.preheader51.i187 ], [ %i.acs, %.preheader.i188 ]
  %wide.load721.81400 = phi <4 x float> [ %.promoted1399, %.preheader51.i187 ], [ %i.acp, %.preheader.i188 ]
  %wide.load720.81397 = phi <4 x float> [ %.promoted1396, %.preheader51.i187 ], [ %i.aco, %.preheader.i188 ]
  %wide.load721.71394 = phi <4 x float> [ %.promoted1393, %.preheader51.i187 ], [ %i.acl, %.preheader.i188 ]
  %wide.load720.71391 = phi <4 x float> [ %.promoted1390, %.preheader51.i187 ], [ %i.ack, %.preheader.i188 ]
  %wide.load721.61388 = phi <4 x float> [ %.promoted1387, %.preheader51.i187 ], [ %i.ach, %.preheader.i188 ]
  %wide.load720.61385 = phi <4 x float> [ %.promoted1384, %.preheader51.i187 ], [ %i.acg, %.preheader.i188 ]
  %wide.load721.51382 = phi <4 x float> [ %.promoted1381, %.preheader51.i187 ], [ %i.acd, %.preheader.i188 ]
  %wide.load720.51379 = phi <4 x float> [ %.promoted1378, %.preheader51.i187 ], [ %i.acc, %.preheader.i188 ]
  %wide.load721.41376 = phi <4 x float> [ %.promoted1375, %.preheader51.i187 ], [ %i.abz, %.preheader.i188 ]
  %wide.load720.41373 = phi <4 x float> [ %.promoted1372, %.preheader51.i187 ], [ %i.aby, %.preheader.i188 ]
  %wide.load721.31370 = phi <4 x float> [ %.promoted1369, %.preheader51.i187 ], [ %i.abv, %.preheader.i188 ]
  %wide.load720.31367 = phi <4 x float> [ %.promoted1366, %.preheader51.i187 ], [ %i.abu, %.preheader.i188 ]
  %wide.load721.21364 = phi <4 x float> [ %.promoted1363, %.preheader51.i187 ], [ %i.abr, %.preheader.i188 ]
  %wide.load720.21361 = phi <4 x float> [ %.promoted1360, %.preheader51.i187 ], [ %i.abq, %.preheader.i188 ]
  %wide.load721.11358 = phi <4 x float> [ %.promoted1357, %.preheader51.i187 ], [ %i.abn, %.preheader.i188 ]
  %wide.load720.11355 = phi <4 x float> [ %.promoted1354, %.preheader51.i187 ], [ %i.abm, %.preheader.i188 ]
  %i.abg = phi <4 x float> [ %.promoted1352, %.preheader51.i187 ], [ %i.abj, %.preheader.i188 ]
  %wide.load7201350 = phi <4 x float> [ %main.b.promoted1349, %.preheader51.i187 ], [ %i.abi, %.preheader.i188 ]
  %indvars.iv77.i189 = phi i64 [ 0, %.preheader51.i187 ], [ %indvars.iv.next78.i196, %.preheader.i188 ] ; 2 uses
  %invariant.gep82.i190.idx = mul nuw nsw i64 %indvars.iv77.i189, 804
  %invariant.gep82.i190 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i190.idx ; 28 uses
  %i.abh = getelementptr i8, ptr %invariant.gep82.i190, i64 16
  %wide.load722 = load <4 x float>, ptr %invariant.gep82.i190, align 4, !tbaa !11
  %wide.load723 = load <4 x float>, ptr %i.abh, align 4, !tbaa !11
  %i.abi = fadd <4 x float> %wide.load7201350, %wide.load722 ; 2 uses
  %i.abj = fadd <4 x float> %i.abg, %wide.load723 ; 2 uses
  %i.abk = getelementptr i8, ptr %invariant.gep82.i190, i64 32
  %i.abl = getelementptr i8, ptr %invariant.gep82.i190, i64 48
  %wide.load722.1 = load <4 x float>, ptr %i.abk, align 4, !tbaa !11
  %wide.load723.1 = load <4 x float>, ptr %i.abl, align 4, !tbaa !11
  %i.abm = fadd <4 x float> %wide.load720.11355, %wide.load722.1 ; 2 uses
  %i.abn = fadd <4 x float> %wide.load721.11358, %wide.load723.1 ; 2 uses
  %i.abo = getelementptr i8, ptr %invariant.gep82.i190, i64 64
  %i.abp = getelementptr i8, ptr %invariant.gep82.i190, i64 80
  %wide.load722.2 = load <4 x float>, ptr %i.abo, align 4, !tbaa !11
  %wide.load723.2 = load <4 x float>, ptr %i.abp, align 4, !tbaa !11
  %i.abq = fadd <4 x float> %wide.load720.21361, %wide.load722.2 ; 2 uses
  %i.abr = fadd <4 x float> %wide.load721.21364, %wide.load723.2 ; 2 uses
  %i.abs = getelementptr i8, ptr %invariant.gep82.i190, i64 96
  %i.abt = getelementptr i8, ptr %invariant.gep82.i190, i64 112
  %wide.load722.3 = load <4 x float>, ptr %i.abs, align 4, !tbaa !11
  %wide.load723.3 = load <4 x float>, ptr %i.abt, align 4, !tbaa !11
  %i.abu = fadd <4 x float> %wide.load720.31367, %wide.load722.3 ; 2 uses
  %i.abv = fadd <4 x float> %wide.load721.31370, %wide.load723.3 ; 2 uses
  %i.abw = getelementptr i8, ptr %invariant.gep82.i190, i64 128
  %i.abx = getelementptr i8, ptr %invariant.gep82.i190, i64 144
  %wide.load722.4 = load <4 x float>, ptr %i.abw, align 4, !tbaa !11
  %wide.load723.4 = load <4 x float>, ptr %i.abx, align 4, !tbaa !11
  %i.aby = fadd <4 x float> %wide.load720.41373, %wide.load722.4 ; 2 uses
  %i.abz = fadd <4 x float> %wide.load721.41376, %wide.load723.4 ; 2 uses
  %i.aca = getelementptr i8, ptr %invariant.gep82.i190, i64 160
  %i.acb = getelementptr i8, ptr %invariant.gep82.i190, i64 176
  %wide.load722.5 = load <4 x float>, ptr %i.aca, align 4, !tbaa !11
  %wide.load723.5 = load <4 x float>, ptr %i.acb, align 4, !tbaa !11
  %i.acc = fadd <4 x float> %wide.load720.51379, %wide.load722.5 ; 2 uses
  %i.acd = fadd <4 x float> %wide.load721.51382, %wide.load723.5 ; 2 uses
  %i.ace = getelementptr i8, ptr %invariant.gep82.i190, i64 192
  %i.acf = getelementptr i8, ptr %invariant.gep82.i190, i64 208
  %wide.load722.6 = load <4 x float>, ptr %i.ace, align 4, !tbaa !11
  %wide.load723.6 = load <4 x float>, ptr %i.acf, align 4, !tbaa !11
  %i.acg = fadd <4 x float> %wide.load720.61385, %wide.load722.6 ; 2 uses
  %i.ach = fadd <4 x float> %wide.load721.61388, %wide.load723.6 ; 2 uses
  %i.aci = getelementptr i8, ptr %invariant.gep82.i190, i64 224
  %i.acj = getelementptr i8, ptr %invariant.gep82.i190, i64 240
  %wide.load722.7 = load <4 x float>, ptr %i.aci, align 4, !tbaa !11
  %wide.load723.7 = load <4 x float>, ptr %i.acj, align 4, !tbaa !11
  %i.ack = fadd <4 x float> %wide.load720.71391, %wide.load722.7 ; 2 uses
  %i.acl = fadd <4 x float> %wide.load721.71394, %wide.load723.7 ; 2 uses
  %i.acm = getelementptr i8, ptr %invariant.gep82.i190, i64 256
  %i.acn = getelementptr i8, ptr %invariant.gep82.i190, i64 272
  %wide.load722.8 = load <4 x float>, ptr %i.acm, align 4, !tbaa !11
  %wide.load723.8 = load <4 x float>, ptr %i.acn, align 4, !tbaa !11
  %i.aco = fadd <4 x float> %wide.load720.81397, %wide.load722.8 ; 2 uses
  %i.acp = fadd <4 x float> %wide.load721.81400, %wide.load723.8 ; 2 uses
  %i.acq = getelementptr i8, ptr %invariant.gep82.i190, i64 288
  %i.acr = getelementptr i8, ptr %invariant.gep82.i190, i64 304
  %wide.load722.9 = load <4 x float>, ptr %i.acq, align 4, !tbaa !11
  %wide.load723.9 = load <4 x float>, ptr %i.acr, align 4, !tbaa !11
  %i.acs = fadd <4 x float> %wide.load720.91403, %wide.load722.9 ; 2 uses
  %i.act = fadd <4 x float> %wide.load721.91406, %wide.load723.9 ; 2 uses
  %i.acu = getelementptr i8, ptr %invariant.gep82.i190, i64 320
  %i.acv = getelementptr i8, ptr %invariant.gep82.i190, i64 336
  %wide.load722.10 = load <4 x float>, ptr %i.acu, align 4, !tbaa !11
  %wide.load723.10 = load <4 x float>, ptr %i.acv, align 4, !tbaa !11
  %i.acw = fadd <4 x float> %wide.load720.101409, %wide.load722.10 ; 2 uses
  %i.acx = fadd <4 x float> %wide.load721.101412, %wide.load723.10 ; 2 uses
  %i.acy = getelementptr i8, ptr %invariant.gep82.i190, i64 352
  %i.acz = getelementptr i8, ptr %invariant.gep82.i190, i64 368
  %wide.load722.11 = load <4 x float>, ptr %i.acy, align 4, !tbaa !11
  %wide.load723.11 = load <4 x float>, ptr %i.acz, align 4, !tbaa !11
  %i.ada = fadd <4 x float> %wide.load720.111415, %wide.load722.11 ; 2 uses
  %i.adb = fadd <4 x float> %wide.load721.111418, %wide.load723.11 ; 2 uses
  %gep83.i192 = getelementptr i8, ptr %invariant.gep82.i190, i64 384
  %i.adc = load float, ptr %gep83.i192, align 4, !tbaa !11
  %i.add = fadd float %i.abf, %i.adc              ; 2 uses
  %gep83.i192.1 = getelementptr i8, ptr %invariant.gep82.i190, i64 388
  %i.ade = load float, ptr %gep83.i192.1, align 4, !tbaa !11
  %i.adf = fadd float %i.abe, %i.ade              ; 2 uses
  %gep83.i192.2 = getelementptr i8, ptr %invariant.gep82.i190, i64 392
  %i.adg = load float, ptr %gep83.i192.2, align 4, !tbaa !11
  %i.adh = fadd float %i.abd, %i.adg              ; 2 uses
  %gep83.i192.3 = getelementptr i8, ptr %invariant.gep82.i190, i64 396
  %i.adi = load float, ptr %gep83.i192.3, align 4, !tbaa !11
  %i.adj = fadd float %i.abc, %i.adi              ; 2 uses
  %indvars.iv.next78.i196 = add nuw nsw i64 %indvars.iv77.i189, 1 ; 2 uses
  %exitcond81.not.i197 = icmp eq i64 %indvars.iv.next78.i196, 100
  br i1 %exitcond81.not.i197, label %.lr.ph103.i199.preheader.preheader, label %.preheader.i188, !llvm.loop !16

.lr.ph103.i199.preheader.preheader:               ; preds = %.preheader.i188
  store <4 x float> %i.abi, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.abj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.abm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.abn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.abq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.abr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.abu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.abv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.aby, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.abz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.acc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.acd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.acg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.ach, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.ack, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.acl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.aco, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.acp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.acs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.act, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.acw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.acx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.ada, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.adb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.add, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.adf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.adh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.adj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i199.preheader

.lr.ph103.i199.preheader:                         ; preds = %.lr.ph103.i199.preheader.preheader, %.loopexit.i214
  %i.adk = phi i32 [ %i.afw, %.loopexit.i214 ], [ 0, %.lr.ph103.i199.preheader.preheader ]
  %indvars.iv107.i200 = phi i64 [ %indvars.iv.next108.i203, %.loopexit.i214 ], [ 0, %.lr.ph103.i199.preheader.preheader ] ; 12 uses
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i215, %.loopexit.i214 ], [ 1, %.lr.ph103.i199.preheader.preheader ] ; 2 uses
  %i.adl = sub nsw i64 99, %indvars.iv107.i200    ; 3 uses
  %indvars109.i202 = trunc i64 %indvars.iv107.i200 to i32 ; 2 uses
  %indvars.iv.next108.i203 = add nuw nsw i64 %indvars.iv107.i200, 1 ; 2 uses
  %i.adm = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i200
  %i.adn = mul nuw nsw i64 %indvars.iv107.i200, 804
  %i.ado = getelementptr i8, ptr %i.adm, i64 %i.adn ; 7 uses
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !11
  %i.adq = tail call float @llvm.fabs.f32(float %i.adp) ; 2 uses
  %xtraiter851 = and i64 %i.adl, 1
  %i.adr = icmp eq i64 %indvars.iv107.i200, 98
  br i1 %i.adr, label %.lr.ph48.i.i204.epil.preheader, label %.lr.ph103.i199.preheader.new

.lr.ph103.i199.preheader.new:                     ; preds = %.lr.ph103.i199.preheader
  %unroll_iter855 = and i64 %i.adl, -2
  br label %.lr.ph48.i.i204

.lr.ph48.i.i204:                                  ; preds = %.lr.ph48.i.i204, %.lr.ph103.i199.preheader.new
  %indvars.iv52.i.i205 = phi i64 [ 1, %.lr.ph103.i199.preheader.new ], [ %indvars.iv.next53.i.i210.1, %.lr.ph48.i.i204 ] ; 4 uses
  %.247.i.i206 = phi i32 [ 0, %.lr.ph103.i199.preheader.new ], [ %.3.i.i209.1, %.lr.ph48.i.i204 ]
  %.23345.i.i207 = phi float [ %i.adq, %.lr.ph103.i199.preheader.new ], [ %.334.i.i208.1, %.lr.ph48.i.i204 ] ; 2 uses
  %niter856 = phi i64 [ 0, %.lr.ph103.i199.preheader.new ], [ %niter856.next.1, %.lr.ph48.i.i204 ]
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv52.i.i205
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !11
  %i.adu = tail call float @llvm.fabs.f32(float %i.adt) ; 2 uses
  %i.adv = fcmp ogt float %i.adu, %.23345.i.i207  ; 2 uses
  %.334.i.i208 = select i1 %i.adv, float %i.adu, float %.23345.i.i207 ; 2 uses
  %i.adw = trunc nuw nsw i64 %indvars.iv52.i.i205 to i32
  %.3.i.i209 = select i1 %i.adv, i32 %i.adw, i32 %.247.i.i206
  %indvars.iv.next53.i.i210 = add nuw nsw i64 %indvars.iv52.i.i205, 1 ; 2 uses
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv.next53.i.i210
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !11
  %i.adz = tail call float @llvm.fabs.f32(float %i.ady) ; 2 uses
  %i.aea = fcmp ogt float %i.adz, %.334.i.i208    ; 2 uses
  %.334.i.i208.1 = select i1 %i.aea, float %i.adz, float %.334.i.i208 ; 2 uses
  %i.aeb = trunc nuw nsw i64 %indvars.iv.next53.i.i210 to i32
  %.3.i.i209.1 = select i1 %i.aea, i32 %i.aeb, i32 %.3.i.i209 ; 3 uses
  %indvars.iv.next53.i.i210.1 = add nuw nsw i64 %indvars.iv52.i.i205, 2 ; 2 uses
  %niter856.next.1 = add nuw i64 %niter856, 2     ; 2 uses
  %niter856.ncmp.1 = icmp eq i64 %niter856.next.1, %unroll_iter855
  br i1 %niter856.ncmp.1, label %idamax.exit.i212.unr-lcssa, label %.lr.ph48.i.i204, !llvm.loop !27

idamax.exit.i212.unr-lcssa:                       ; preds = %.lr.ph48.i.i204
  %lcmp.mod852.not = icmp eq i64 %xtraiter851, 0
  br i1 %lcmp.mod852.not, label %idamax.exit.i212, label %.lr.ph48.i.i204.epil.preheader

.lr.ph48.i.i204.epil.preheader:                   ; preds = %idamax.exit.i212.unr-lcssa, %.lr.ph103.i199.preheader
  %indvars.iv52.i.i205.epil.init = phi i64 [ 1, %.lr.ph103.i199.preheader ], [ %indvars.iv.next53.i.i210.1, %idamax.exit.i212.unr-lcssa ] ; 2 uses
  %.247.i.i206.epil.init = phi i32 [ 0, %.lr.ph103.i199.preheader ], [ %.3.i.i209.1, %idamax.exit.i212.unr-lcssa ]
  %.23345.i.i207.epil.init = phi float [ %i.adq, %.lr.ph103.i199.preheader ], [ %.334.i.i208.1, %idamax.exit.i212.unr-lcssa ]
  %lcmp.mod854 = trunc i64 %i.adl to i1
  tail call void @llvm.assume(i1 %lcmp.mod854)
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv52.i.i205.epil.init
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !11
  %i.aee = tail call float @llvm.fabs.f32(float %i.aed)
  %i.aef = fcmp ogt float %i.aee, %.23345.i.i207.epil.init
  %i.aeg = trunc nuw nsw i64 %indvars.iv52.i.i205.epil.init to i32
  %.3.i.i209.epil = select i1 %i.aef, i32 %i.aeg, i32 %.247.i.i206.epil.init
  br label %idamax.exit.i212

idamax.exit.i212:                                 ; preds = %idamax.exit.i212.unr-lcssa, %.lr.ph48.i.i204.epil.preheader
  %.3.i.i209.lcssa = phi i32 [ %.3.i.i209.1, %idamax.exit.i212.unr-lcssa ], [ %.3.i.i209.epil, %.lr.ph48.i.i204.epil.preheader ] ; 2 uses
  %i.aeh = add nsw i32 %.3.i.i209.lcssa, %indvars109.i202 ; 2 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i200
  store i32 %i.aeh, ptr %i.aei, align 4, !tbaa !4
  %i.aej = sext i32 %i.aeh to i64                 ; 2 uses
  %.idx392 = mul nuw nsw i64 %indvars.iv107.i200, 804
  %i.aek = getelementptr i8, ptr @main.a, i64 %.idx392
  %i.ael = getelementptr [4 x i8], ptr %i.aek, i64 %i.aej ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !11 ; 3 uses
  %i.aen = fcmp une float %i.aem, 0.000000e+00
  br i1 %i.aen, label %bb.y, label %.loopexit.i214

bb.y:                                             ; preds = %idamax.exit.i212
  %.not.i218 = icmp eq i32 %.3.i.i209.lcssa, 0    ; 2 uses
  %.pre.i219 = load float, ptr %i.ado, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i218, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %.pre.i219, ptr %i.ael, align 4, !tbaa !11
  store float %i.aem, ptr %i.ado, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aeo = phi float [ %i.aem, %bb.z ], [ %.pre.i219, %bb.y ]
  %i.aep = fdiv float -1.000000e+00, %i.aeo       ; 2 uses
  %i.aeq = sub nuw nsw i64 99, %indvars.iv107.i200 ; 6 uses
  %i.aer = getelementptr i8, ptr %i.ado, i64 4    ; 4 uses
  %min.iters.check702 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  br i1 %min.iters.check702, label %.lr.ph25.i.i220.preheader, label %vector.ph703

vector.ph703:                                     ; preds = %bb.aa
  %n.vec705 = and i64 %i.aeq, 120                 ; 3 uses
  %broadcast.splatinsert706 = insertelement <4 x float> poison, float %i.aep, i64 0
  %broadcast.splat707 = shufflevector <4 x float> %broadcast.splatinsert706, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body708

vector.body708:                                   ; preds = %vector.body708, %vector.ph703
  %index709 = phi i64 [ 0, %vector.ph703 ], [ %index.next712, %vector.body708 ] ; 2 uses
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index709 ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 16 ; 2 uses
  %wide.load710 = load <4 x float>, ptr %i.aes, align 4, !tbaa !11
  %wide.load711 = load <4 x float>, ptr %i.aet, align 4, !tbaa !11
  %i.aeu = fmul <4 x float> %broadcast.splat707, %wide.load710
  %i.aev = fmul <4 x float> %broadcast.splat707, %wide.load711
  store <4 x float> %i.aeu, ptr %i.aes, align 4, !tbaa !11
  store <4 x float> %i.aev, ptr %i.aet, align 4, !tbaa !11
  %index.next712 = add nuw i64 %index709, 8       ; 2 uses
  %i.aew = icmp eq i64 %index.next712, %n.vec705
  br i1 %i.aew, label %middle.block713, label %vector.body708, !llvm.loop !36

middle.block713:                                  ; preds = %vector.body708
  %cmp.n714 = icmp eq i64 %i.aeq, %n.vec705
  br i1 %cmp.n714, label %.lr.ph.i224, label %.lr.ph25.i.i220.preheader

.lr.ph25.i.i220.preheader:                        ; preds = %bb.aa, %middle.block713
  %indvars.iv28.i.i221.ph = phi i64 [ 0, %bb.aa ], [ %n.vec705, %middle.block713 ]
  br label %.lr.ph25.i.i220

.lr.ph25.i.i220:                                  ; preds = %.lr.ph25.i.i220.preheader, %.lr.ph25.i.i220
  %indvars.iv28.i.i221 = phi i64 [ %indvars.iv.next29.i.i222, %.lr.ph25.i.i220 ], [ %indvars.iv28.i.i221.ph, %.lr.ph25.i.i220.preheader ] ; 2 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv28.i.i221 ; 2 uses
  %i.aey = load float, ptr %i.aex, align 4, !tbaa !11
  %i.aez = fmul float %i.aep, %i.aey
  store float %i.aez, ptr %i.aex, align 4, !tbaa !11
  %indvars.iv.next29.i.i222 = add nuw nsw i64 %indvars.iv28.i.i221, 1 ; 2 uses
  %exitcond.not.i.i223 = icmp eq i64 %indvars.iv.next29.i.i222, %i.aeq
  br i1 %exitcond.not.i.i223, label %.lr.ph.i224, label %.lr.ph25.i.i220, !llvm.loop !37

.lr.ph.i224:                                      ; preds = %.lr.ph25.i.i220, %middle.block713
  %invariant.gep.i225 = getelementptr [4 x i8], ptr @main.a, i64 %i.aej
  %min.iters.check685 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  %n.vec688 = and i64 %i.aeq, 120                 ; 3 uses
  %cmp.n699 = icmp eq i64 %i.aeq, %n.vec688
  br label %bb.ab

bb.ab:                                            ; preds = %daxpy.exit.i234, %.lr.ph.i224
  %indvars.iv104.i226 = phi i64 [ %indvars.iv.i201, %.lr.ph.i224 ], [ %indvars.iv.next105.i235, %daxpy.exit.i234 ] ; 2 uses
  %i.afa = mul nuw nsw i64 %indvars.iv104.i226, 201 ; 2 uses
  %gep.i227 = getelementptr [4 x i8], ptr %invariant.gep.i225, i64 %i.afa ; 2 uses
  %i.afb = load float, ptr %gep.i227, align 4, !tbaa !11 ; 4 uses
  %.pre112.i228 = add nuw nsw i64 %i.afa, %indvars.iv107.i200 ; 2 uses
  br i1 %.not.i218, label %._crit_edge.i229, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i228 ; 2 uses
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !11
  store float %i.afd, ptr %gep.i227, align 4, !tbaa !11
  store float %i.afb, ptr %i.afc, align 4, !tbaa !11
  br label %._crit_edge.i229

._crit_edge.i229:                                 ; preds = %bb.ac, %bb.ab
  %i.afe = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i228
  %i.aff = getelementptr i8, ptr %i.afe, i64 4    ; 2 uses
  %i.afg = fcmp oeq float %i.afb, 0.000000e+00
  br i1 %i.afg, label %daxpy.exit.i234, label %.lr.ph.i.i230.preheader

.lr.ph.i.i230.preheader:                          ; preds = %._crit_edge.i229
  br i1 %min.iters.check685, label %.lr.ph.i.i230.preheader821, label %vector.ph686

vector.ph686:                                     ; preds = %.lr.ph.i.i230.preheader
  %broadcast.splatinsert689 = insertelement <4 x float> poison, float %i.afb, i64 0
  %broadcast.splat690 = shufflevector <4 x float> %broadcast.splatinsert689, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph686
  %index692 = phi i64 [ 0, %vector.ph686 ], [ %index.next697, %vector.body691 ] ; 3 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %index692 ; 3 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16 ; 2 uses
  %wide.load693 = load <4 x float>, ptr %i.afh, align 4, !tbaa !11
  %wide.load694 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %i.afj = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %index692 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  %wide.load695 = load <4 x float>, ptr %i.afj, align 4, !tbaa !11
  %wide.load696 = load <4 x float>, ptr %i.afk, align 4, !tbaa !11
  %i.afl = fmul <4 x float> %broadcast.splat690, %wide.load695
  %i.afm = fmul <4 x float> %broadcast.splat690, %wide.load696
  %i.afn = fadd <4 x float> %wide.load693, %i.afl
  %i.afo = fadd <4 x float> %wide.load694, %i.afm
  store <4 x float> %i.afn, ptr %i.afh, align 4, !tbaa !11
  store <4 x float> %i.afo, ptr %i.afi, align 4, !tbaa !11
  %index.next697 = add nuw i64 %index692, 8       ; 2 uses
  %i.afp = icmp eq i64 %index.next697, %n.vec688
  br i1 %i.afp, label %middle.block698, label %vector.body691, !llvm.loop !38

middle.block698:                                  ; preds = %vector.body691
  br i1 %cmp.n699, label %daxpy.exit.i234, label %.lr.ph.i.i230.preheader821

.lr.ph.i.i230.preheader821:                       ; preds = %.lr.ph.i.i230.preheader, %middle.block698
  %indvars.iv.i.i231.ph = phi i64 [ 0, %.lr.ph.i.i230.preheader ], [ %n.vec688, %middle.block698 ]
  br label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %.lr.ph.i.i230.preheader821, %.lr.ph.i.i230
  %indvars.iv.i.i231 = phi i64 [ %indvars.iv.next.i.i232, %.lr.ph.i.i230 ], [ %indvars.iv.i.i231.ph, %.lr.ph.i.i230.preheader821 ] ; 3 uses
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aff, i64 %indvars.iv.i.i231 ; 2 uses
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !11
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.aer, i64 %indvars.iv.i.i231
  %i.aft = load float, ptr %i.afs, align 4, !tbaa !11
  %i.afu = fmul float %i.afb, %i.aft
  %i.afv = fadd float %i.afr, %i.afu
  store float %i.afv, ptr %i.afq, align 4, !tbaa !11
  %indvars.iv.next.i.i232 = add nuw nsw i64 %indvars.iv.i.i231, 1 ; 2 uses
  %exitcond.not.i99.i233 = icmp eq i64 %indvars.iv.next.i.i232, %i.aeq
  br i1 %exitcond.not.i99.i233, label %daxpy.exit.i234, label %.lr.ph.i.i230, !llvm.loop !39

daxpy.exit.i234:                                  ; preds = %.lr.ph.i.i230, %middle.block698, %._crit_edge.i229
  %indvars.iv.next105.i235 = add nuw nsw i64 %indvars.iv104.i226, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next105.i235, 100
  br i1 %exitcond.not.i236, label %.loopexit.i214, label %bb.ab, !llvm.loop !32

.loopexit.i214:                                   ; preds = %daxpy.exit.i234, %idamax.exit.i212
  %i.afw = phi i32 [ %indvars109.i202, %idamax.exit.i212 ], [ %i.adk, %daxpy.exit.i234 ] ; 2 uses
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i201, 1
  %exitcond111.not.i216 = icmp eq i64 %indvars.iv.next108.i203, 99
  br i1 %exitcond111.not.i216, label %.loopexit100.i217, label %.lr.ph103.i199.preheader, !llvm.loop !33

.loopexit100.i217:                                ; preds = %.loopexit.i214
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afx = add nuw nsw i32 %storemerge85420, 1    ; 2 uses
  %exitcond470.not = icmp eq i32 %i.afx, %i.aap
  br i1 %exitcond470.not, label %._crit_edge421, label %.preheader52.i174.preheader, !llvm.loop !40

._crit_edge421:                                   ; preds = %.loopexit100.i217
  %i.afy = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.afz = fcmp oeq float %i.afy, 0.000000e+00
  %i.aga = select i1 %i.afz, i32 99, i32 %i.afw
  store i32 %i.aga, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge421, %bb.w
  %i.agb = tail call i64 @clock() #12
  %i.agc = sitofp i64 %i.agb to float
  %i.agd = fdiv float %i.agc, 1.000000e+06
  %i.age = fsub float %i.agd, %i.aao
  %i.agf = fsub float %i.age, %i.aal
  %i.agg = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agh = sitofp i32 %i.agg to float
  %i.agi = fdiv float %i.agf, %i.agh
  %i.agj = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agk
  store float %i.agi, ptr %i.agl, align 4, !tbaa !11
  %i.agm = tail call i64 @clock() #12
  %i.agn = sitofp i64 %i.agm to float
  %i.ago = fdiv float %i.agn, 1.000000e+06
  %i.agp = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.agq = icmp sgt i32 %i.agp, 0
  br i1 %i.agq, label %.preheader395, label %._crit_edge426

.preheader395:                                    ; preds = %bb.ad, %dgesl.exit260
  %storemerge86425 = phi i32 [ %i.aiu, %dgesl.exit260 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader395, %daxpy.exit.i245
  %indvars.iv146.i238 = phi i64 [ %indvars.iv.next147.i240, %daxpy.exit.i245 ], [ 0, %.preheader395 ] ; 7 uses
  %i.agr = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i238
  %i.ags = load i32, ptr %i.agr, align 4, !tbaa !4 ; 2 uses
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.agt ; 2 uses
  %i.agv = load float, ptr %i.agu, align 4, !tbaa !11 ; 4 uses
  %i.agw = zext i32 %i.ags to i64
  %.not103.i239 = icmp eq i64 %indvars.iv146.i238, %i.agw
  br i1 %.not103.i239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i238 ; 2 uses
  %i.agy = load float, ptr %i.agx, align 4, !tbaa !11
  store float %i.agy, ptr %i.agu, align 4, !tbaa !11
  store float %i.agv, ptr %i.agx, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next147.i240 = add nuw nsw i64 %indvars.iv146.i238, 1 ; 3 uses
  %i.agz = mul nuw nsw i64 %indvars.iv146.i238, 808
  %i.aha = getelementptr i8, ptr @main.a, i64 %i.agz
  %i.ahb = getelementptr i8, ptr %i.aha, i64 4    ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i240 ; 2 uses
  %i.ahd = fcmp oeq float %i.agv, 0.000000e+00
  br i1 %i.ahd, label %daxpy.exit.i245, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ahe = sub nuw nsw i64 99, %indvars.iv146.i238 ; 3 uses
  %min.iters.check668 = icmp samesign ugt i64 %indvars.iv146.i238, 91
  br i1 %min.iters.check668, label %.lr.ph.i.i241.preheader, label %vector.ph669

end_hunk_1
begin_hunk_2_@main:bb.a
  %.promoted1542 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1545 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1548 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1551 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1554 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1557 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1560 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1563 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1566 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1569 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1572 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1575 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1578 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1580 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1582 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1584 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i300

bb.ak:                                            ; preds = %bb.ak, %.preheader52.i286
  %indvars.iv.i290 = phi i64 [ 0, %.preheader52.i286 ], [ %indvars.iv.next.i294.1, %bb.ak ] ; 3 uses
  %.14553.i291 = phi i32 [ %.04455.i288, %.preheader52.i286 ], [ %i.anz, %bb.ak ] ; 2 uses
  %i.ant = mul nuw nsw i32 %.14553.i291, 3125
  %i.anu = and i32 %i.ant, 65535
  %i.anv = add nsw i32 %i.anu, -32768
  %i.anw = sitofp i32 %i.anv to float
  %i.anx = fmul nnan float %i.anw, f0x38800000
  %gep.i292 = getelementptr [4 x i8], ptr %invariant.gep.i289, i64 %indvars.iv.i290
  store float %i.anx, ptr %gep.i292, align 8, !tbaa !11
  %i.any = mul nsw i32 %.14553.i291, 761
  %i.anz = and i32 %i.any, 65535                  ; 3 uses
  %i.aoa = add nsw i32 %i.anz, -32768
  %i.aob = sitofp i32 %i.aoa to float
  %i.aoc = fmul nnan float %i.aob, f0x38800000
  %i.aod = getelementptr [4 x i8], ptr %invariant.gep.i289, i64 %indvars.iv.i290
  %gep.i292.1 = getelementptr i8, ptr %i.aod, i64 4
  store float %i.aoc, ptr %gep.i292.1, align 4, !tbaa !11
  %indvars.iv.next.i294.1 = add nuw nsw i64 %indvars.iv.i290, 2 ; 2 uses
  %exitcond.not.i295.1 = icmp eq i64 %indvars.iv.next.i294.1, 100
  br i1 %exitcond.not.i295.1, label %._crit_edge.i296, label %bb.ak, !llvm.loop !13

._crit_edge.i296:                                 ; preds = %bb.ak
  %indvars.iv.next65.i297 = add nuw nsw i64 %indvars.iv64.i287, 1 ; 2 uses
  %exitcond68.not.i298 = icmp eq i64 %indvars.iv.next65.i297, 100
  br i1 %exitcond68.not.i298, label %.preheader51.i299, label %.preheader52.i286, !llvm.loop !15

.preheader.i300:                                  ; preds = %.preheader.i300, %.preheader51.i299
  %i.aoe = phi float [ %.promoted1584, %.preheader51.i299 ], [ %i.aql, %.preheader.i300 ]
  %i.aof = phi float [ %.promoted1582, %.preheader51.i299 ], [ %i.aqj, %.preheader.i300 ]
  %i.aog = phi float [ %.promoted1580, %.preheader51.i299 ], [ %i.aqh, %.preheader.i300 ]
  %i.aoh = phi float [ %.promoted1578, %.preheader51.i299 ], [ %i.aqf, %.preheader.i300 ]
  %wide.load807.111576 = phi <4 x float> [ %.promoted1575, %.preheader51.i299 ], [ %i.aqd, %.preheader.i300 ]
  %wide.load806.111573 = phi <4 x float> [ %.promoted1572, %.preheader51.i299 ], [ %i.aqc, %.preheader.i300 ]
  %wide.load807.101570 = phi <4 x float> [ %.promoted1569, %.preheader51.i299 ], [ %i.apz, %.preheader.i300 ]
  %wide.load806.101567 = phi <4 x float> [ %.promoted1566, %.preheader51.i299 ], [ %i.apy, %.preheader.i300 ]
  %wide.load807.91564 = phi <4 x float> [ %.promoted1563, %.preheader51.i299 ], [ %i.apv, %.preheader.i300 ]
  %wide.load806.91561 = phi <4 x float> [ %.promoted1560, %.preheader51.i299 ], [ %i.apu, %.preheader.i300 ]
  %wide.load807.81558 = phi <4 x float> [ %.promoted1557, %.preheader51.i299 ], [ %i.apr, %.preheader.i300 ]
  %wide.load806.81555 = phi <4 x float> [ %.promoted1554, %.preheader51.i299 ], [ %i.apq, %.preheader.i300 ]
  %wide.load807.71552 = phi <4 x float> [ %.promoted1551, %.preheader51.i299 ], [ %i.apn, %.preheader.i300 ]
  %wide.load806.71549 = phi <4 x float> [ %.promoted1548, %.preheader51.i299 ], [ %i.apm, %.preheader.i300 ]
  %wide.load807.61546 = phi <4 x float> [ %.promoted1545, %.preheader51.i299 ], [ %i.apj, %.preheader.i300 ]
  %wide.load806.61543 = phi <4 x float> [ %.promoted1542, %.preheader51.i299 ], [ %i.api, %.preheader.i300 ]
  %wide.load807.51540 = phi <4 x float> [ %.promoted1539, %.preheader51.i299 ], [ %i.apf, %.preheader.i300 ]
  %wide.load806.51537 = phi <4 x float> [ %.promoted1536, %.preheader51.i299 ], [ %i.ape, %.preheader.i300 ]
  %wide.load807.41534 = phi <4 x float> [ %.promoted1533, %.preheader51.i299 ], [ %i.apb, %.preheader.i300 ]
  %wide.load806.41531 = phi <4 x float> [ %.promoted1530, %.preheader51.i299 ], [ %i.apa, %.preheader.i300 ]
  %wide.load807.31528 = phi <4 x float> [ %.promoted1527, %.preheader51.i299 ], [ %i.aox, %.preheader.i300 ]
  %wide.load806.31525 = phi <4 x float> [ %.promoted1524, %.preheader51.i299 ], [ %i.aow, %.preheader.i300 ]
  %wide.load807.21522 = phi <4 x float> [ %.promoted1521, %.preheader51.i299 ], [ %i.aot, %.preheader.i300 ]
  %wide.load806.21519 = phi <4 x float> [ %.promoted1518, %.preheader51.i299 ], [ %i.aos, %.preheader.i300 ]
  %wide.load807.11516 = phi <4 x float> [ %.promoted1515, %.preheader51.i299 ], [ %i.aop, %.preheader.i300 ]
  %wide.load806.11513 = phi <4 x float> [ %.promoted1512, %.preheader51.i299 ], [ %i.aoo, %.preheader.i300 ]
  %i.aoi = phi <4 x float> [ %.promoted1510, %.preheader51.i299 ], [ %i.aol, %.preheader.i300 ]
  %wide.load8061508 = phi <4 x float> [ %main.b.promoted1507, %.preheader51.i299 ], [ %i.aok, %.preheader.i300 ]
  %indvars.iv77.i301 = phi i64 [ 0, %.preheader51.i299 ], [ %indvars.iv.next78.i308, %.preheader.i300 ] ; 2 uses
  %invariant.gep82.i302.idx = mul nuw nsw i64 %indvars.iv77.i301, 800
  %invariant.gep82.i302 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i302.idx ; 28 uses
  %i.aoj = getelementptr i8, ptr %invariant.gep82.i302, i64 16
  %wide.load808 = load <4 x float>, ptr %invariant.gep82.i302, align 16, !tbaa !11
  %wide.load809 = load <4 x float>, ptr %i.aoj, align 16, !tbaa !11
  %i.aok = fadd <4 x float> %wide.load8061508, %wide.load808 ; 2 uses
  %i.aol = fadd <4 x float> %i.aoi, %wide.load809 ; 2 uses
  %i.aom = getelementptr i8, ptr %invariant.gep82.i302, i64 32
  %i.aon = getelementptr i8, ptr %invariant.gep82.i302, i64 48
  %wide.load808.1 = load <4 x float>, ptr %i.aom, align 16, !tbaa !11
  %wide.load809.1 = load <4 x float>, ptr %i.aon, align 16, !tbaa !11
  %i.aoo = fadd <4 x float> %wide.load806.11513, %wide.load808.1 ; 2 uses
  %i.aop = fadd <4 x float> %wide.load807.11516, %wide.load809.1 ; 2 uses
  %i.aoq = getelementptr i8, ptr %invariant.gep82.i302, i64 64
  %i.aor = getelementptr i8, ptr %invariant.gep82.i302, i64 80
  %wide.load808.2 = load <4 x float>, ptr %i.aoq, align 16, !tbaa !11
  %wide.load809.2 = load <4 x float>, ptr %i.aor, align 16, !tbaa !11
  %i.aos = fadd <4 x float> %wide.load806.21519, %wide.load808.2 ; 2 uses
  %i.aot = fadd <4 x float> %wide.load807.21522, %wide.load809.2 ; 2 uses
  %i.aou = getelementptr i8, ptr %invariant.gep82.i302, i64 96
  %i.aov = getelementptr i8, ptr %invariant.gep82.i302, i64 112
  %wide.load808.3 = load <4 x float>, ptr %i.aou, align 16, !tbaa !11
  %wide.load809.3 = load <4 x float>, ptr %i.aov, align 16, !tbaa !11
  %i.aow = fadd <4 x float> %wide.load806.31525, %wide.load808.3 ; 2 uses
  %i.aox = fadd <4 x float> %wide.load807.31528, %wide.load809.3 ; 2 uses
  %i.aoy = getelementptr i8, ptr %invariant.gep82.i302, i64 128
  %i.aoz = getelementptr i8, ptr %invariant.gep82.i302, i64 144
  %wide.load808.4 = load <4 x float>, ptr %i.aoy, align 16, !tbaa !11
  %wide.load809.4 = load <4 x float>, ptr %i.aoz, align 16, !tbaa !11
  %i.apa = fadd <4 x float> %wide.load806.41531, %wide.load808.4 ; 2 uses
  %i.apb = fadd <4 x float> %wide.load807.41534, %wide.load809.4 ; 2 uses
  %i.apc = getelementptr i8, ptr %invariant.gep82.i302, i64 160
  %i.apd = getelementptr i8, ptr %invariant.gep82.i302, i64 176
  %wide.load808.5 = load <4 x float>, ptr %i.apc, align 16, !tbaa !11
  %wide.load809.5 = load <4 x float>, ptr %i.apd, align 16, !tbaa !11
  %i.ape = fadd <4 x float> %wide.load806.51537, %wide.load808.5 ; 2 uses
  %i.apf = fadd <4 x float> %wide.load807.51540, %wide.load809.5 ; 2 uses
  %i.apg = getelementptr i8, ptr %invariant.gep82.i302, i64 192
  %i.aph = getelementptr i8, ptr %invariant.gep82.i302, i64 208
  %wide.load808.6 = load <4 x float>, ptr %i.apg, align 16, !tbaa !11
  %wide.load809.6 = load <4 x float>, ptr %i.aph, align 16, !tbaa !11
  %i.api = fadd <4 x float> %wide.load806.61543, %wide.load808.6 ; 2 uses
  %i.apj = fadd <4 x float> %wide.load807.61546, %wide.load809.6 ; 2 uses
  %i.apk = getelementptr i8, ptr %invariant.gep82.i302, i64 224
  %i.apl = getelementptr i8, ptr %invariant.gep82.i302, i64 240
  %wide.load808.7 = load <4 x float>, ptr %i.apk, align 16, !tbaa !11
  %wide.load809.7 = load <4 x float>, ptr %i.apl, align 16, !tbaa !11
  %i.apm = fadd <4 x float> %wide.load806.71549, %wide.load808.7 ; 2 uses
  %i.apn = fadd <4 x float> %wide.load807.71552, %wide.load809.7 ; 2 uses
  %i.apo = getelementptr i8, ptr %invariant.gep82.i302, i64 256
  %i.app = getelementptr i8, ptr %invariant.gep82.i302, i64 272
  %wide.load808.8 = load <4 x float>, ptr %i.apo, align 16, !tbaa !11
  %wide.load809.8 = load <4 x float>, ptr %i.app, align 16, !tbaa !11
  %i.apq = fadd <4 x float> %wide.load806.81555, %wide.load808.8 ; 2 uses
  %i.apr = fadd <4 x float> %wide.load807.81558, %wide.load809.8 ; 2 uses
  %i.aps = getelementptr i8, ptr %invariant.gep82.i302, i64 288
  %i.apt = getelementptr i8, ptr %invariant.gep82.i302, i64 304
  %wide.load808.9 = load <4 x float>, ptr %i.aps, align 16, !tbaa !11
  %wide.load809.9 = load <4 x float>, ptr %i.apt, align 16, !tbaa !11
  %i.apu = fadd <4 x float> %wide.load806.91561, %wide.load808.9 ; 2 uses
  %i.apv = fadd <4 x float> %wide.load807.91564, %wide.load809.9 ; 2 uses
  %i.apw = getelementptr i8, ptr %invariant.gep82.i302, i64 320
  %i.apx = getelementptr i8, ptr %invariant.gep82.i302, i64 336
  %wide.load808.10 = load <4 x float>, ptr %i.apw, align 16, !tbaa !11
  %wide.load809.10 = load <4 x float>, ptr %i.apx, align 16, !tbaa !11
  %i.apy = fadd <4 x float> %wide.load806.101567, %wide.load808.10 ; 2 uses
  %i.apz = fadd <4 x float> %wide.load807.101570, %wide.load809.10 ; 2 uses
  %i.aqa = getelementptr i8, ptr %invariant.gep82.i302, i64 352
  %i.aqb = getelementptr i8, ptr %invariant.gep82.i302, i64 368
  %wide.load808.11 = load <4 x float>, ptr %i.aqa, align 16, !tbaa !11
  %wide.load809.11 = load <4 x float>, ptr %i.aqb, align 16, !tbaa !11
  %i.aqc = fadd <4 x float> %wide.load806.111573, %wide.load808.11 ; 2 uses
  %i.aqd = fadd <4 x float> %wide.load807.111576, %wide.load809.11 ; 2 uses
  %gep83.i304 = getelementptr i8, ptr %invariant.gep82.i302, i64 384
  %i.aqe = load float, ptr %gep83.i304, align 16, !tbaa !11
  %i.aqf = fadd float %i.aoh, %i.aqe              ; 2 uses
  %gep83.i304.1 = getelementptr i8, ptr %invariant.gep82.i302, i64 388
  %i.aqg = load float, ptr %gep83.i304.1, align 4, !tbaa !11
  %i.aqh = fadd float %i.aog, %i.aqg              ; 2 uses
  %gep83.i304.2 = getelementptr i8, ptr %invariant.gep82.i302, i64 392
  %i.aqi = load float, ptr %gep83.i304.2, align 8, !tbaa !11
  %i.aqj = fadd float %i.aof, %i.aqi              ; 2 uses
  %gep83.i304.3 = getelementptr i8, ptr %invariant.gep82.i302, i64 396
  %i.aqk = load float, ptr %gep83.i304.3, align 4, !tbaa !11
  %i.aql = fadd float %i.aoe, %i.aqk              ; 2 uses
  %indvars.iv.next78.i308 = add nuw nsw i64 %indvars.iv77.i301, 1 ; 2 uses
  %exitcond81.not.i309 = icmp eq i64 %indvars.iv.next78.i308, 100
  br i1 %exitcond81.not.i309, label %.lr.ph103.i311.preheader.preheader, label %.preheader.i300, !llvm.loop !16

.lr.ph103.i311.preheader.preheader:               ; preds = %.preheader.i300
  store <4 x float> %i.aok, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.aol, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.aoo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.aop, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aos, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.aot, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.aow, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.aox, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.apa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.apb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.ape, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.apf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.api, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.apj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.apm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.apn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.apq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.apr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.apu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.apv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.apy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.apz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.aqc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.aqd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.aqf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.aqh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.aqj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.aql, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i311.preheader

.lr.ph103.i311.preheader:                         ; preds = %.lr.ph103.i311.preheader.preheader, %.loopexit.i326
  %i.aqm = phi i32 [ %i.asy, %.loopexit.i326 ], [ 0, %.lr.ph103.i311.preheader.preheader ]
  %indvars.iv107.i312 = phi i64 [ %indvars.iv.next108.i315, %.loopexit.i326 ], [ 0, %.lr.ph103.i311.preheader.preheader ] ; 12 uses
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i327, %.loopexit.i326 ], [ 1, %.lr.ph103.i311.preheader.preheader ] ; 2 uses
  %i.aqn = sub nsw i64 99, %indvars.iv107.i312    ; 3 uses
  %indvars109.i314 = trunc i64 %indvars.iv107.i312 to i32 ; 2 uses
  %indvars.iv.next108.i315 = add nuw nsw i64 %indvars.iv107.i312, 1 ; 2 uses
  %i.aqo = getelementptr [4 x i8], ptr @main.aa, i64 %indvars.iv107.i312
  %i.aqp = mul nuw nsw i64 %indvars.iv107.i312, 800
  %i.aqq = getelementptr i8, ptr %i.aqo, i64 %i.aqp ; 7 uses
  %i.aqr = load float, ptr %i.aqq, align 4, !tbaa !11
  %i.aqs = tail call float @llvm.fabs.f32(float %i.aqr) ; 2 uses
  %xtraiter857 = and i64 %i.aqn, 1
  %i.aqt = icmp eq i64 %indvars.iv107.i312, 98
  br i1 %i.aqt, label %.lr.ph48.i.i316.epil.preheader, label %.lr.ph103.i311.preheader.new

.lr.ph103.i311.preheader.new:                     ; preds = %.lr.ph103.i311.preheader
  %unroll_iter861 = and i64 %i.aqn, -2
  br label %.lr.ph48.i.i316

.lr.ph48.i.i316:                                  ; preds = %.lr.ph48.i.i316, %.lr.ph103.i311.preheader.new
  %indvars.iv52.i.i317 = phi i64 [ 1, %.lr.ph103.i311.preheader.new ], [ %indvars.iv.next53.i.i322.1, %.lr.ph48.i.i316 ] ; 4 uses
  %.247.i.i318 = phi i32 [ 0, %.lr.ph103.i311.preheader.new ], [ %.3.i.i321.1, %.lr.ph48.i.i316 ]
  %.23345.i.i319 = phi float [ %i.aqs, %.lr.ph103.i311.preheader.new ], [ %.334.i.i320.1, %.lr.ph48.i.i316 ] ; 2 uses
  %niter862 = phi i64 [ 0, %.lr.ph103.i311.preheader.new ], [ %niter862.next.1, %.lr.ph48.i.i316 ]
  %i.aqu = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %indvars.iv52.i.i317
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !11
  %i.aqw = tail call float @llvm.fabs.f32(float %i.aqv) ; 2 uses
  %i.aqx = fcmp ogt float %i.aqw, %.23345.i.i319  ; 2 uses
  %.334.i.i320 = select i1 %i.aqx, float %i.aqw, float %.23345.i.i319 ; 2 uses
  %i.aqy = trunc nuw nsw i64 %indvars.iv52.i.i317 to i32
  %.3.i.i321 = select i1 %i.aqx, i32 %i.aqy, i32 %.247.i.i318
  %indvars.iv.next53.i.i322 = add nuw nsw i64 %indvars.iv52.i.i317, 1 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %indvars.iv.next53.i.i322
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !11
  %i.arb = tail call float @llvm.fabs.f32(float %i.ara) ; 2 uses
  %i.arc = fcmp ogt float %i.arb, %.334.i.i320    ; 2 uses
  %.334.i.i320.1 = select i1 %i.arc, float %i.arb, float %.334.i.i320 ; 2 uses
  %i.ard = trunc nuw nsw i64 %indvars.iv.next53.i.i322 to i32
  %.3.i.i321.1 = select i1 %i.arc, i32 %i.ard, i32 %.3.i.i321 ; 3 uses
  %indvars.iv.next53.i.i322.1 = add nuw nsw i64 %indvars.iv52.i.i317, 2 ; 2 uses
  %niter862.next.1 = add nuw i64 %niter862, 2     ; 2 uses
  %niter862.ncmp.1 = icmp eq i64 %niter862.next.1, %unroll_iter861
  br i1 %niter862.ncmp.1, label %idamax.exit.i324.unr-lcssa, label %.lr.ph48.i.i316, !llvm.loop !27

idamax.exit.i324.unr-lcssa:                       ; preds = %.lr.ph48.i.i316
  %lcmp.mod858.not = icmp eq i64 %xtraiter857, 0
  br i1 %lcmp.mod858.not, label %idamax.exit.i324, label %.lr.ph48.i.i316.epil.preheader

.lr.ph48.i.i316.epil.preheader:                   ; preds = %idamax.exit.i324.unr-lcssa, %.lr.ph103.i311.preheader
  %indvars.iv52.i.i317.epil.init = phi i64 [ 1, %.lr.ph103.i311.preheader ], [ %indvars.iv.next53.i.i322.1, %idamax.exit.i324.unr-lcssa ] ; 2 uses
  %.247.i.i318.epil.init = phi i32 [ 0, %.lr.ph103.i311.preheader ], [ %.3.i.i321.1, %idamax.exit.i324.unr-lcssa ]
  %.23345.i.i319.epil.init = phi float [ %i.aqs, %.lr.ph103.i311.preheader ], [ %.334.i.i320.1, %idamax.exit.i324.unr-lcssa ]
  %lcmp.mod860 = trunc i64 %i.aqn to i1
  tail call void @llvm.assume(i1 %lcmp.mod860)
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aqq, i64 %indvars.iv52.i.i317.epil.init
  %i.arf = load float, ptr %i.are, align 4, !tbaa !11
  %i.arg = tail call float @llvm.fabs.f32(float %i.arf)
  %i.arh = fcmp ogt float %i.arg, %.23345.i.i319.epil.init
  %i.ari = trunc nuw nsw i64 %indvars.iv52.i.i317.epil.init to i32
  %.3.i.i321.epil = select i1 %i.arh, i32 %i.ari, i32 %.247.i.i318.epil.init
  br label %idamax.exit.i324

idamax.exit.i324:                                 ; preds = %idamax.exit.i324.unr-lcssa, %.lr.ph48.i.i316.epil.preheader
  %.3.i.i321.lcssa = phi i32 [ %.3.i.i321.1, %idamax.exit.i324.unr-lcssa ], [ %.3.i.i321.epil, %.lr.ph48.i.i316.epil.preheader ] ; 2 uses
  %i.arj = add nsw i32 %.3.i.i321.lcssa, %indvars109.i314 ; 2 uses
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i312
  store i32 %i.arj, ptr %i.ark, align 4, !tbaa !4
  %i.arl = sext i32 %i.arj to i64                 ; 2 uses
  %.idx387 = mul nuw nsw i64 %indvars.iv107.i312, 800
  %i.arm = getelementptr i8, ptr @main.aa, i64 %.idx387
  %i.arn = getelementptr [4 x i8], ptr %i.arm, i64 %i.arl ; 2 uses
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !11 ; 3 uses
  %i.arp = fcmp une float %i.aro, 0.000000e+00
  br i1 %i.arp, label %bb.al, label %.loopexit.i326

bb.al:                                            ; preds = %idamax.exit.i324
  %.not.i330 = icmp eq i32 %.3.i.i321.lcssa, 0    ; 2 uses
  %.pre.i331 = load float, ptr %i.aqq, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i330, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %.pre.i331, ptr %i.arn, align 4, !tbaa !11
  store float %i.aro, ptr %i.aqq, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.arq = phi float [ %i.aro, %bb.am ], [ %.pre.i331, %bb.al ]
  %i.arr = fdiv float -1.000000e+00, %i.arq       ; 2 uses
  %i.ars = sub nuw nsw i64 99, %indvars.iv107.i312 ; 6 uses
  %i.art = getelementptr i8, ptr %i.aqq, i64 4    ; 4 uses
  %min.iters.check788 = icmp samesign ugt i64 %indvars.iv107.i312, 91
  br i1 %min.iters.check788, label %.lr.ph25.i.i332.preheader, label %vector.ph789

vector.ph789:                                     ; preds = %bb.an
  %n.vec791 = and i64 %i.ars, 120                 ; 3 uses
  %broadcast.splatinsert792 = insertelement <4 x float> poison, float %i.arr, i64 0
  %broadcast.splat793 = shufflevector <4 x float> %broadcast.splatinsert792, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body794

vector.body794:                                   ; preds = %vector.body794, %vector.ph789
  %index795 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body794 ] ; 2 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %index795 ; 3 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 16 ; 2 uses
  %wide.load796 = load <4 x float>, ptr %i.aru, align 4, !tbaa !11
  %wide.load797 = load <4 x float>, ptr %i.arv, align 4, !tbaa !11
  %i.arw = fmul <4 x float> %broadcast.splat793, %wide.load796
  %i.arx = fmul <4 x float> %broadcast.splat793, %wide.load797
  store <4 x float> %i.arw, ptr %i.aru, align 4, !tbaa !11
  store <4 x float> %i.arx, ptr %i.arv, align 4, !tbaa !11
  %index.next798 = add nuw i64 %index795, 8       ; 2 uses
  %i.ary = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.ary, label %middle.block799, label %vector.body794, !llvm.loop !48

middle.block799:                                  ; preds = %vector.body794
  %cmp.n800 = icmp eq i64 %i.ars, %n.vec791
  br i1 %cmp.n800, label %.lr.ph.i336, label %.lr.ph25.i.i332.preheader

.lr.ph25.i.i332.preheader:                        ; preds = %bb.an, %middle.block799
  %indvars.iv28.i.i333.ph = phi i64 [ 0, %bb.an ], [ %n.vec791, %middle.block799 ]
  br label %.lr.ph25.i.i332

.lr.ph25.i.i332:                                  ; preds = %.lr.ph25.i.i332.preheader, %.lr.ph25.i.i332
  %indvars.iv28.i.i333 = phi i64 [ %indvars.iv.next29.i.i334, %.lr.ph25.i.i332 ], [ %indvars.iv28.i.i333.ph, %.lr.ph25.i.i332.preheader ] ; 2 uses
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %indvars.iv28.i.i333 ; 2 uses
  %i.asa = load float, ptr %i.arz, align 4, !tbaa !11
  %i.asb = fmul float %i.arr, %i.asa
  store float %i.asb, ptr %i.arz, align 4, !tbaa !11
  %indvars.iv.next29.i.i334 = add nuw nsw i64 %indvars.iv28.i.i333, 1 ; 2 uses
  %exitcond.not.i.i335 = icmp eq i64 %indvars.iv.next29.i.i334, %i.ars
  br i1 %exitcond.not.i.i335, label %.lr.ph.i336, label %.lr.ph25.i.i332, !llvm.loop !49

.lr.ph.i336:                                      ; preds = %.lr.ph25.i.i332, %middle.block799
  %invariant.gep.i337 = getelementptr [4 x i8], ptr @main.aa, i64 %i.arl
  %min.iters.check771 = icmp samesign ugt i64 %indvars.iv107.i312, 91
  %n.vec774 = and i64 %i.ars, 120                 ; 3 uses
  %cmp.n785 = icmp eq i64 %i.ars, %n.vec774
  br label %bb.ao

bb.ao:                                            ; preds = %daxpy.exit.i346, %.lr.ph.i336
  %indvars.iv104.i338 = phi i64 [ %indvars.iv.i313, %.lr.ph.i336 ], [ %indvars.iv.next105.i347, %daxpy.exit.i346 ] ; 2 uses
  %i.asc = mul nuw nsw i64 %indvars.iv104.i338, 200 ; 2 uses
  %gep.i339 = getelementptr [4 x i8], ptr %invariant.gep.i337, i64 %i.asc ; 2 uses
  %i.asd = load float, ptr %gep.i339, align 4, !tbaa !11 ; 4 uses
  %.pre112.i340 = add nuw nsw i64 %i.asc, %indvars.iv107.i312 ; 2 uses
  br i1 %.not.i330, label %._crit_edge.i341, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre112.i340 ; 2 uses
  %i.asf = load float, ptr %i.ase, align 4, !tbaa !11
  store float %i.asf, ptr %gep.i339, align 4, !tbaa !11
  store float %i.asd, ptr %i.ase, align 4, !tbaa !11
  br label %._crit_edge.i341

._crit_edge.i341:                                 ; preds = %bb.ap, %bb.ao
  %i.asg = getelementptr [4 x i8], ptr @main.aa, i64 %.pre112.i340
  %i.ash = getelementptr i8, ptr %i.asg, i64 4    ; 2 uses
  %i.asi = fcmp oeq float %i.asd, 0.000000e+00
  br i1 %i.asi, label %daxpy.exit.i346, label %.lr.ph.i.i342.preheader

.lr.ph.i.i342.preheader:                          ; preds = %._crit_edge.i341
  br i1 %min.iters.check771, label %.lr.ph.i.i342.preheader816, label %vector.ph772

vector.ph772:                                     ; preds = %.lr.ph.i.i342.preheader
  %broadcast.splatinsert775 = insertelement <4 x float> poison, float %i.asd, i64 0
  %broadcast.splat776 = shufflevector <4 x float> %broadcast.splatinsert775, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph772
  %index778 = phi i64 [ 0, %vector.ph772 ], [ %index.next783, %vector.body777 ] ; 3 uses
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %index778 ; 3 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16 ; 2 uses
  %wide.load779 = load <4 x float>, ptr %i.asj, align 4, !tbaa !11
  %wide.load780 = load <4 x float>, ptr %i.ask, align 4, !tbaa !11
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %index778 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %wide.load781 = load <4 x float>, ptr %i.asl, align 4, !tbaa !11
  %wide.load782 = load <4 x float>, ptr %i.asm, align 4, !tbaa !11
  %i.asn = fmul <4 x float> %broadcast.splat776, %wide.load781
  %i.aso = fmul <4 x float> %broadcast.splat776, %wide.load782
  %i.asp = fadd <4 x float> %wide.load779, %i.asn
  %i.asq = fadd <4 x float> %wide.load780, %i.aso
  store <4 x float> %i.asp, ptr %i.asj, align 4, !tbaa !11
  store <4 x float> %i.asq, ptr %i.ask, align 4, !tbaa !11
  %index.next783 = add nuw i64 %index778, 8       ; 2 uses
  %i.asr = icmp eq i64 %index.next783, %n.vec774
  br i1 %i.asr, label %middle.block784, label %vector.body777, !llvm.loop !50

middle.block784:                                  ; preds = %vector.body777
  br i1 %cmp.n785, label %daxpy.exit.i346, label %.lr.ph.i.i342.preheader816

.lr.ph.i.i342.preheader816:                       ; preds = %.lr.ph.i.i342.preheader, %middle.block784
  %indvars.iv.i.i343.ph = phi i64 [ 0, %.lr.ph.i.i342.preheader ], [ %n.vec774, %middle.block784 ]
  br label %.lr.ph.i.i342

.lr.ph.i.i342:                                    ; preds = %.lr.ph.i.i342.preheader816, %.lr.ph.i.i342
  %indvars.iv.i.i343 = phi i64 [ %indvars.iv.next.i.i344, %.lr.ph.i.i342 ], [ %indvars.iv.i.i343.ph, %.lr.ph.i.i342.preheader816 ] ; 3 uses
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %indvars.iv.i.i343 ; 2 uses
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !11
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %indvars.iv.i.i343
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !11
  %i.asw = fmul float %i.asd, %i.asv
  %i.asx = fadd float %i.ast, %i.asw
  store float %i.asx, ptr %i.ass, align 4, !tbaa !11
  %indvars.iv.next.i.i344 = add nuw nsw i64 %indvars.iv.i.i343, 1 ; 2 uses
  %exitcond.not.i99.i345 = icmp eq i64 %indvars.iv.next.i.i344, %i.ars
  br i1 %exitcond.not.i99.i345, label %daxpy.exit.i346, label %.lr.ph.i.i342, !llvm.loop !51

daxpy.exit.i346:                                  ; preds = %.lr.ph.i.i342, %middle.block784, %._crit_edge.i341
  %indvars.iv.next105.i347 = add nuw nsw i64 %indvars.iv104.i338, 1 ; 2 uses
  %exitcond.not.i348 = icmp eq i64 %indvars.iv.next105.i347, 100
  br i1 %exitcond.not.i348, label %.loopexit.i326, label %bb.ao, !llvm.loop !32

.loopexit.i326:                                   ; preds = %daxpy.exit.i346, %idamax.exit.i324
  %i.asy = phi i32 [ %indvars109.i314, %idamax.exit.i324 ], [ %i.aqm, %daxpy.exit.i346 ] ; 2 uses
  %indvars.iv.next.i327 = add nuw nsw i64 %indvars.iv.i313, 1
  %exitcond111.not.i328 = icmp eq i64 %indvars.iv.next108.i315, 99
  br i1 %exitcond111.not.i328, label %.loopexit100.i329, label %.lr.ph103.i311.preheader, !llvm.loop !33

.loopexit100.i329:                                ; preds = %.loopexit.i326
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.asz = add nuw nsw i32 %storemerge83431, 1    ; 2 uses
  %exitcond473.not = icmp eq i32 %i.asz, %i.anr
  br i1 %exitcond473.not, label %._crit_edge432, label %.preheader52.i286.preheader, !llvm.loop !52

._crit_edge432:                                   ; preds = %.loopexit100.i329
  %i.ata = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.atb = fcmp oeq float %i.ata, 0.000000e+00
  %i.atc = select i1 %i.atb, i32 99, i32 %i.asy
  store i32 %i.atc, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge432, %bb.aj
  %i.atd = tail call i64 @clock() #12
  %i.ate = sitofp i64 %i.atd to float
  %i.atf = fdiv float %i.ate, 1.000000e+06
  %i.atg = fsub float %i.atf, %i.anq
  %i.ath = fsub float %i.atg, %i.ann
  %i.ati = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.atj = sitofp i32 %i.ati to float
  %i.atk = fdiv float %i.ath, %i.atj
  %i.atl = load i32, ptr @main.j, align 4, !tbaa !4
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.atm
  store float %i.atk, ptr %i.atn, align 4, !tbaa !11
  %i.ato = tail call i64 @clock() #12
  %i.atp = sitofp i64 %i.ato to float
  %i.atq = fdiv float %i.atp, 1.000000e+06
  %i.atr = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.ats = icmp sgt i32 %i.atr, 0
  br i1 %i.ats, label %.preheader, label %._crit_edge437

.preheader:                                       ; preds = %bb.aq, %dgesl.exit372
  %storemerge84436 = phi i32 [ %i.avw, %dgesl.exit372 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i357
  %indvars.iv146.i350 = phi i64 [ %indvars.iv.next147.i352, %daxpy.exit.i357 ], [ 0, %.preheader ] ; 7 uses
  %i.att = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i350
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !4 ; 2 uses
  %i.atv = sext i32 %i.atu to i64
  %i.atw = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.atv ; 2 uses
  %i.atx = load float, ptr %i.atw, align 4, !tbaa !11 ; 4 uses
  %i.aty = zext i32 %i.atu to i64
  %.not103.i351 = icmp eq i64 %indvars.iv146.i350, %i.aty
  br i1 %.not103.i351, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i350 ; 2 uses
  %i.aua = load float, ptr %i.atz, align 4, !tbaa !11
  store float %i.aua, ptr %i.atw, align 4, !tbaa !11
  store float %i.atx, ptr %i.atz, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next147.i352 = add nuw nsw i64 %indvars.iv146.i350, 1 ; 3 uses
  %i.aub = mul nuw nsw i64 %indvars.iv146.i350, 804
  %i.auc = getelementptr i8, ptr @main.aa, i64 %i.aub
  %i.aud = getelementptr i8, ptr %i.auc, i64 4    ; 2 uses
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i352 ; 2 uses
  %i.auf = fcmp oeq float %i.atx, 0.000000e+00
  br i1 %i.auf, label %daxpy.exit.i357, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aug = sub nuw nsw i64 99, %indvars.iv146.i350 ; 3 uses
  %min.iters.check754 = icmp samesign ugt i64 %indvars.iv146.i350, 91
  br i1 %min.iters.check754, label %.lr.ph.i.i353.preheader, label %vector.ph755

end_hunk_2
