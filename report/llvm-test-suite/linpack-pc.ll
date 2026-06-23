inline.NumInlined: 42
begin_hunk_0_@main:bb.a
  %.promoted1301 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1304 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1307 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1310 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1313 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1316 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1319 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1322 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1325 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1328 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1331 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1334 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1337.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1339.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1341 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1343 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i152

bb.o:                                             ; preds = %bb.o, %.preheader52.i138
  %indvars.iv.i142 = phi i64 [ 0, %.preheader52.i138 ], [ %indvars.iv.next.i146.1, %bb.o ] ; 3 uses
  %.14553.i143 = phi i32 [ %.04455.i140, %.preheader52.i138 ], [ %i.uj, %bb.o ] ; 2 uses
  %i.ud = mul nuw nsw i32 %.14553.i143, 3125
  %i.ue = and i32 %i.ud, 65535
  %i.uf = add nsw i32 %i.ue, -32768
  %i.ug = sitofp i32 %i.uf to float
  %i.uh = fmul nnan float %i.ug, f0x38800000
  %gep.i144 = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  store float %i.uh, ptr %gep.i144, align 4, !tbaa !11
  %i.ui = mul nsw i32 %.14553.i143, 761
  %i.uj = and i32 %i.ui, 65535                    ; 3 uses
  %i.uk = add nsw i32 %i.uj, -32768
  %i.ul = sitofp i32 %i.uk to float
  %i.um = fmul nnan float %i.ul, f0x38800000
  %i.un = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.un, i64 4
  store float %i.um, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.i148, label %bb.o, !llvm.loop !13

._crit_edge.i148:                                 ; preds = %bb.o
  %indvars.iv.next65.i149 = add nuw nsw i64 %indvars.iv64.i139, 1 ; 2 uses
  %exitcond68.not.i150 = icmp eq i64 %indvars.iv.next65.i149, 100
  br i1 %exitcond68.not.i150, label %.preheader51.i151, label %.preheader52.i138, !llvm.loop !15

.preheader.i152:                                  ; preds = %.preheader.i152, %.preheader51.i151
  %i.uo = phi float [ %.promoted1343, %.preheader51.i151 ], [ %i.wv, %.preheader.i152 ]
  %i.up = phi float [ %.promoted1341, %.preheader51.i151 ], [ %i.wt, %.preheader.i152 ]
  %i.uq = phi float [ %.promoted1339.a, %.preheader51.i151 ], [ %i.wr, %.preheader.i152 ]
  %i.ur = phi float [ %.promoted1337.a, %.preheader51.i151 ], [ %i.wp, %.preheader.i152 ]
  %wide.load645.111335 = phi <4 x float> [ %.promoted1334, %.preheader51.i151 ], [ %i.wn, %.preheader.i152 ]
  %wide.load644.111332 = phi <4 x float> [ %.promoted1331, %.preheader51.i151 ], [ %i.wm, %.preheader.i152 ]
  %wide.load645.101329 = phi <4 x float> [ %.promoted1328, %.preheader51.i151 ], [ %i.wj, %.preheader.i152 ]
  %wide.load644.101326 = phi <4 x float> [ %.promoted1325, %.preheader51.i151 ], [ %i.wi, %.preheader.i152 ]
  %wide.load645.91323 = phi <4 x float> [ %.promoted1322, %.preheader51.i151 ], [ %i.wf, %.preheader.i152 ]
  %wide.load644.91320 = phi <4 x float> [ %.promoted1319, %.preheader51.i151 ], [ %i.we, %.preheader.i152 ]
  %wide.load645.81317 = phi <4 x float> [ %.promoted1316, %.preheader51.i151 ], [ %i.wb, %.preheader.i152 ]
  %wide.load644.81314 = phi <4 x float> [ %.promoted1313, %.preheader51.i151 ], [ %i.wa, %.preheader.i152 ]
  %wide.load645.71311 = phi <4 x float> [ %.promoted1310, %.preheader51.i151 ], [ %i.vx, %.preheader.i152 ]
  %wide.load644.71308 = phi <4 x float> [ %.promoted1307, %.preheader51.i151 ], [ %i.vw, %.preheader.i152 ]
  %wide.load645.61305 = phi <4 x float> [ %.promoted1304, %.preheader51.i151 ], [ %i.vt, %.preheader.i152 ]
  %wide.load644.61302 = phi <4 x float> [ %.promoted1301, %.preheader51.i151 ], [ %i.vs, %.preheader.i152 ]
  %wide.load645.51299 = phi <4 x float> [ %.promoted1298, %.preheader51.i151 ], [ %i.vp, %.preheader.i152 ]
  %wide.load644.51296 = phi <4 x float> [ %.promoted1295, %.preheader51.i151 ], [ %i.vo, %.preheader.i152 ]
  %wide.load645.41293 = phi <4 x float> [ %.promoted1292, %.preheader51.i151 ], [ %i.vl, %.preheader.i152 ]
  %wide.load644.41290 = phi <4 x float> [ %.promoted1289, %.preheader51.i151 ], [ %i.vk, %.preheader.i152 ]
  %wide.load645.31287 = phi <4 x float> [ %.promoted1286, %.preheader51.i151 ], [ %i.vh, %.preheader.i152 ]
  %wide.load644.31284 = phi <4 x float> [ %.promoted1283, %.preheader51.i151 ], [ %i.vg, %.preheader.i152 ]
  %wide.load645.21281 = phi <4 x float> [ %.promoted1280, %.preheader51.i151 ], [ %i.vd, %.preheader.i152 ]
  %wide.load644.21278 = phi <4 x float> [ %.promoted1277, %.preheader51.i151 ], [ %i.vc, %.preheader.i152 ]
  %wide.load645.11275 = phi <4 x float> [ %.promoted1274, %.preheader51.i151 ], [ %i.uz, %.preheader.i152 ]
  %wide.load644.11272 = phi <4 x float> [ %.promoted1271, %.preheader51.i151 ], [ %i.uy, %.preheader.i152 ]
  %i.us = phi <4 x float> [ %.promoted1269, %.preheader51.i151 ], [ %i.uv, %.preheader.i152 ]
  %wide.load6441267 = phi <4 x float> [ %main.b.promoted1266, %.preheader51.i151 ], [ %i.uu, %.preheader.i152 ]
  %indvars.iv77.i153 = phi i64 [ 0, %.preheader51.i151 ], [ %indvars.iv.next78.i160, %.preheader.i152 ] ; 2 uses
  %invariant.gep82.i154.idx = mul nuw nsw i64 %indvars.iv77.i153, 804
  %invariant.gep82.i154 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i154.idx ; 28 uses
  %i.ut = getelementptr i8, ptr %invariant.gep82.i154, i64 16
  %wide.load646 = load <4 x float>, ptr %invariant.gep82.i154, align 4, !tbaa !11
  %wide.load647 = load <4 x float>, ptr %i.ut, align 4, !tbaa !11
  %i.uu = fadd <4 x float> %wide.load6441267, %wide.load646 ; 2 uses
  %i.uv = fadd <4 x float> %i.us, %wide.load647   ; 2 uses
  %i.uw = getelementptr i8, ptr %invariant.gep82.i154, i64 32
  %i.ux = getelementptr i8, ptr %invariant.gep82.i154, i64 48
  %wide.load646.1 = load <4 x float>, ptr %i.uw, align 4, !tbaa !11
  %wide.load647.1 = load <4 x float>, ptr %i.ux, align 4, !tbaa !11
  %i.uy = fadd <4 x float> %wide.load644.11272, %wide.load646.1 ; 2 uses
  %i.uz = fadd <4 x float> %wide.load645.11275, %wide.load647.1 ; 2 uses
  %i.va = getelementptr i8, ptr %invariant.gep82.i154, i64 64
  %i.vb = getelementptr i8, ptr %invariant.gep82.i154, i64 80
  %wide.load646.2 = load <4 x float>, ptr %i.va, align 4, !tbaa !11
  %wide.load647.2 = load <4 x float>, ptr %i.vb, align 4, !tbaa !11
  %i.vc = fadd <4 x float> %wide.load644.21278, %wide.load646.2 ; 2 uses
  %i.vd = fadd <4 x float> %wide.load645.21281, %wide.load647.2 ; 2 uses
  %i.ve = getelementptr i8, ptr %invariant.gep82.i154, i64 96
  %i.vf = getelementptr i8, ptr %invariant.gep82.i154, i64 112
  %wide.load646.3 = load <4 x float>, ptr %i.ve, align 4, !tbaa !11
  %wide.load647.3 = load <4 x float>, ptr %i.vf, align 4, !tbaa !11
  %i.vg = fadd <4 x float> %wide.load644.31284, %wide.load646.3 ; 2 uses
  %i.vh = fadd <4 x float> %wide.load645.31287, %wide.load647.3 ; 2 uses
  %i.vi = getelementptr i8, ptr %invariant.gep82.i154, i64 128
  %i.vj = getelementptr i8, ptr %invariant.gep82.i154, i64 144
  %wide.load646.4 = load <4 x float>, ptr %i.vi, align 4, !tbaa !11
  %wide.load647.4 = load <4 x float>, ptr %i.vj, align 4, !tbaa !11
  %i.vk = fadd <4 x float> %wide.load644.41290, %wide.load646.4 ; 2 uses
  %i.vl = fadd <4 x float> %wide.load645.41293, %wide.load647.4 ; 2 uses
  %i.vm = getelementptr i8, ptr %invariant.gep82.i154, i64 160
  %i.vn = getelementptr i8, ptr %invariant.gep82.i154, i64 176
  %wide.load646.5 = load <4 x float>, ptr %i.vm, align 4, !tbaa !11
  %wide.load647.5 = load <4 x float>, ptr %i.vn, align 4, !tbaa !11
  %i.vo = fadd <4 x float> %wide.load644.51296, %wide.load646.5 ; 2 uses
  %i.vp = fadd <4 x float> %wide.load645.51299, %wide.load647.5 ; 2 uses
  %i.vq = getelementptr i8, ptr %invariant.gep82.i154, i64 192
  %i.vr = getelementptr i8, ptr %invariant.gep82.i154, i64 208
  %wide.load646.6 = load <4 x float>, ptr %i.vq, align 4, !tbaa !11
  %wide.load647.6 = load <4 x float>, ptr %i.vr, align 4, !tbaa !11
  %i.vs = fadd <4 x float> %wide.load644.61302, %wide.load646.6 ; 2 uses
  %i.vt = fadd <4 x float> %wide.load645.61305, %wide.load647.6 ; 2 uses
  %i.vu = getelementptr i8, ptr %invariant.gep82.i154, i64 224
  %i.vv = getelementptr i8, ptr %invariant.gep82.i154, i64 240
  %wide.load646.7 = load <4 x float>, ptr %i.vu, align 4, !tbaa !11
  %wide.load647.7 = load <4 x float>, ptr %i.vv, align 4, !tbaa !11
  %i.vw = fadd <4 x float> %wide.load644.71308, %wide.load646.7 ; 2 uses
  %i.vx = fadd <4 x float> %wide.load645.71311, %wide.load647.7 ; 2 uses
  %i.vy = getelementptr i8, ptr %invariant.gep82.i154, i64 256
  %i.vz = getelementptr i8, ptr %invariant.gep82.i154, i64 272
  %wide.load646.8 = load <4 x float>, ptr %i.vy, align 4, !tbaa !11
  %wide.load647.8 = load <4 x float>, ptr %i.vz, align 4, !tbaa !11
  %i.wa = fadd <4 x float> %wide.load644.81314, %wide.load646.8 ; 2 uses
  %i.wb = fadd <4 x float> %wide.load645.81317, %wide.load647.8 ; 2 uses
  %i.wc = getelementptr i8, ptr %invariant.gep82.i154, i64 288
  %i.wd = getelementptr i8, ptr %invariant.gep82.i154, i64 304
  %wide.load646.9 = load <4 x float>, ptr %i.wc, align 4, !tbaa !11
  %wide.load647.9 = load <4 x float>, ptr %i.wd, align 4, !tbaa !11
  %i.we = fadd <4 x float> %wide.load644.91320, %wide.load646.9 ; 2 uses
  %i.wf = fadd <4 x float> %wide.load645.91323, %wide.load647.9 ; 2 uses
  %i.wg = getelementptr i8, ptr %invariant.gep82.i154, i64 320
  %i.wh = getelementptr i8, ptr %invariant.gep82.i154, i64 336
  %wide.load646.10 = load <4 x float>, ptr %i.wg, align 4, !tbaa !11
  %wide.load647.10 = load <4 x float>, ptr %i.wh, align 4, !tbaa !11
  %i.wi = fadd <4 x float> %wide.load644.101326, %wide.load646.10 ; 2 uses
  %i.wj = fadd <4 x float> %wide.load645.101329, %wide.load647.10 ; 2 uses
  %i.wk = getelementptr i8, ptr %invariant.gep82.i154, i64 352
  %i.wl = getelementptr i8, ptr %invariant.gep82.i154, i64 368
  %wide.load646.11 = load <4 x float>, ptr %i.wk, align 4, !tbaa !11
  %wide.load647.11 = load <4 x float>, ptr %i.wl, align 4, !tbaa !11
  %i.wm = fadd <4 x float> %wide.load644.111332, %wide.load646.11 ; 2 uses
  %i.wn = fadd <4 x float> %wide.load645.111335, %wide.load647.11 ; 2 uses
  %gep83.i156 = getelementptr i8, ptr %invariant.gep82.i154, i64 384
  %i.wo = load float, ptr %gep83.i156, align 4, !tbaa !11
  %i.wp = fadd float %i.ur, %i.wo                 ; 2 uses
  %gep83.i156.1 = getelementptr i8, ptr %invariant.gep82.i154, i64 388
  %i.wq = load float, ptr %gep83.i156.1, align 4, !tbaa !11
  %i.wr = fadd float %i.uq, %i.wq                 ; 2 uses
  %gep83.i156.2 = getelementptr i8, ptr %invariant.gep82.i154, i64 392
  %i.ws = load float, ptr %gep83.i156.2, align 4, !tbaa !11
  %i.wt = fadd float %i.up, %i.ws                 ; 2 uses
  %gep83.i156.3 = getelementptr i8, ptr %invariant.gep82.i154, i64 396
  %i.wu = load float, ptr %gep83.i156.3, align 4, !tbaa !11
  %i.wv = fadd float %i.uo, %i.wu                 ; 2 uses
  %indvars.iv.next78.i160 = add nuw nsw i64 %indvars.iv77.i153, 1 ; 2 uses
  %exitcond81.not.i161 = icmp eq i64 %indvars.iv.next78.i160, 100
  br i1 %exitcond81.not.i161, label %.lr.ph103.i.preheader.preheader, label %.preheader.i152, !llvm.loop !16

.lr.ph103.i.preheader.preheader:                  ; preds = %.preheader.i152
  store <4 x float> %i.uu, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.uv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.uy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.vc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.vd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.vg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.vh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.vk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.vo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.vp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.vs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.vw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.vx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.wa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.wb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.we, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.wf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.wi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.wj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.wm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.wn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.wp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.wr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.wt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.wv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i.preheader

.lr.ph103.i.preheader:                            ; preds = %.lr.ph103.i.preheader.preheader, %.loopexit.i
  %i.ww = phi i32 [ %i.zi, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader.preheader ] ; 12 uses
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %.loopexit.i ], [ 1, %.lr.ph103.i.preheader.preheader ] ; 2 uses
  %i.wx = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %indvars109.i = trunc i64 %indvars.iv107.i to i32 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.wy = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i
  %i.wz = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xa = getelementptr i8, ptr %i.wy, i64 %i.wz  ; 7 uses
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !11
  %i.xc = tail call float @llvm.fabs.f32(float %i.xb) ; 2 uses
  %xtraiter = and i64 %i.wx, 1
  %i.xd = icmp eq i64 %indvars.iv107.i, 98
  br i1 %i.xd, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph103.i.preheader.new

.lr.ph103.i.preheader.new:                        ; preds = %.lr.ph103.i.preheader
  %unroll_iter = and i64 %i.wx, -2
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph103.i.preheader.new
  %indvars.iv52.i.i = phi i64 [ 1, %.lr.ph103.i.preheader.new ], [ %indvars.iv.next53.i.i.1, %.lr.ph48.i.i ] ; 4 uses
  %.247.i.i = phi i32 [ 0, %.lr.ph103.i.preheader.new ], [ %.3.i.i.1, %.lr.ph48.i.i ]
  %.23345.i.i = phi float [ %i.xc, %.lr.ph103.i.preheader.new ], [ %.334.i.i.1, %.lr.ph48.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.i.preheader.new ], [ %niter.next.1, %.lr.ph48.i.i ]
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv52.i.i
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !11
  %i.xg = tail call float @llvm.fabs.f32(float %i.xf) ; 2 uses
  %i.xh = fcmp ogt float %i.xg, %.23345.i.i       ; 2 uses
  %.334.i.i = select i1 %i.xh, float %i.xg, float %.23345.i.i ; 2 uses
  %i.xi = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %.3.i.i = select i1 %i.xh, i32 %i.xi, i32 %.247.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv.next53.i.i
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !11
  %i.xl = tail call float @llvm.fabs.f32(float %i.xk) ; 2 uses
  %i.xm = fcmp ogt float %i.xl, %.334.i.i         ; 2 uses
  %.334.i.i.1 = select i1 %i.xm, float %i.xl, float %.334.i.i ; 2 uses
  %i.xn = trunc nuw nsw i64 %indvars.iv.next53.i.i to i32
  %.3.i.i.1 = select i1 %i.xm, i32 %i.xn, i32 %.3.i.i ; 3 uses
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.i.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !27

idamax.exit.i.unr-lcssa:                          ; preds = %.lr.ph48.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.i, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph103.i.preheader
  %indvars.iv52.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i.preheader ], [ %indvars.iv.next53.i.i.1, %idamax.exit.i.unr-lcssa ] ; 2 uses
  %.247.i.i.epil.init = phi i32 [ 0, %.lr.ph103.i.preheader ], [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ]
  %.23345.i.i.epil.init = phi float [ %i.xc, %.lr.ph103.i.preheader ], [ %.334.i.i.1, %idamax.exit.i.unr-lcssa ]
  %lcmp.mod846.a = trunc i64 %i.wx to i1
  tail call void @llvm.assume(i1 %lcmp.mod846.a)
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %indvars.iv52.i.i.epil.init
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !11
  %i.xq = tail call float @llvm.fabs.f32(float %i.xp)
  %i.xr = fcmp ogt float %i.xq, %.23345.i.i.epil.init
  %i.xs = trunc nuw nsw i64 %indvars.iv52.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.xr, i32 %i.xs, i32 %.247.i.i.epil.init
  br label %idamax.exit.i

idamax.exit.i:                                    ; preds = %idamax.exit.i.unr-lcssa, %.lr.ph48.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph48.i.i.epil.preheader ] ; 2 uses
  %i.xt = add nsw i32 %.3.i.i.lcssa, %indvars109.i ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i
  store i32 %i.xt, ptr %i.xu, align 4, !tbaa !4
  %i.xv = sext i32 %i.xt to i64                   ; 2 uses
  %.idx394 = mul nuw nsw i64 %indvars.iv107.i, 804
  %i.xw = getelementptr i8, ptr @main.a, i64 %.idx394
  %i.xx = getelementptr [4 x i8], ptr %i.xw, i64 %i.xv ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !11 ; 3 uses
  %i.xz = fcmp une float %i.xy, 0.000000e+00
  br i1 %i.xz, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %idamax.exit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  %.pre.i = load float, ptr %i.xa, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %.pre.i, ptr %i.xx, align 4, !tbaa !11
  store float %i.xy, ptr %i.xa, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ya = phi float [ %i.xy, %bb.q ], [ %.pre.i, %bb.p ]
  %i.yb = fdiv float -1.000000e+00, %i.ya         ; 2 uses
  %i.yc = sub nuw nsw i64 99, %indvars.iv107.i    ; 6 uses
  %i.yd = getelementptr i8, ptr %i.xa, i64 4      ; 4 uses
  %min.iters.check626 = icmp samesign ugt i64 %indvars.iv107.i, 91
  br i1 %min.iters.check626, label %.lr.ph25.i.i.preheader, label %vector.ph627

vector.ph627:                                     ; preds = %bb.r
  %n.vec629 = and i64 %i.yc, 120                  ; 3 uses
  %broadcast.splatinsert630 = insertelement <4 x float> poison, float %i.yb, i64 0
  %broadcast.splat631 = shufflevector <4 x float> %broadcast.splatinsert630, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body632

vector.body632:                                   ; preds = %vector.body632, %vector.ph627
  %index633 = phi i64 [ 0, %vector.ph627 ], [ %index.next636, %vector.body632 ] ; 2 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index633 ; 3 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  %wide.load634 = load <4 x float>, ptr %i.ye, align 4, !tbaa !11
  %wide.load635 = load <4 x float>, ptr %i.yf, align 4, !tbaa !11
  %i.yg = fmul <4 x float> %broadcast.splat631, %wide.load634
  %i.yh = fmul <4 x float> %broadcast.splat631, %wide.load635
  store <4 x float> %i.yg, ptr %i.ye, align 4, !tbaa !11
  store <4 x float> %i.yh, ptr %i.yf, align 4, !tbaa !11
  %index.next636 = add nuw i64 %index633, 8       ; 2 uses
  %i.yi = icmp eq i64 %index.next636, %n.vec629
  br i1 %i.yi, label %middle.block637, label %vector.body632, !llvm.loop !28

middle.block637:                                  ; preds = %vector.body632
  %cmp.n638 = icmp eq i64 %i.yc, %n.vec629
  br i1 %cmp.n638, label %.lr.ph.i, label %.lr.ph25.i.i.preheader

.lr.ph25.i.i.preheader:                           ; preds = %bb.r, %middle.block637
  %indvars.iv28.i.i.ph = phi i64 [ 0, %bb.r ], [ %n.vec629, %middle.block637 ]
  br label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.lr.ph25.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.lr.ph25.i.i ], [ %indvars.iv28.i.i.ph, %.lr.ph25.i.i.preheader ] ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv28.i.i ; 2 uses
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !11
  %i.yl = fmul float %i.yb, %i.yk
  store float %i.yl, ptr %i.yj, align 4, !tbaa !11
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next29.i.i, %i.yc
  br i1 %exitcond.not.i.i165, label %.lr.ph.i, label %.lr.ph25.i.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %.lr.ph25.i.i, %middle.block637
  %invariant.gep.i166 = getelementptr [4 x i8], ptr @main.a, i64 %i.xv
  %min.iters.check609 = icmp samesign ugt i64 %indvars.iv107.i, 91
  %n.vec612 = and i64 %i.yc, 120                  ; 3 uses
  %cmp.n623 = icmp eq i64 %i.yc, %n.vec612
  br label %bb.s

bb.s:                                             ; preds = %daxpy.exit.i172, %.lr.ph.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.i163, %.lr.ph.i ], [ %indvars.iv.next105.i, %daxpy.exit.i172 ] ; 2 uses
  %i.ym = mul nuw nsw i64 %indvars.iv104.i, 201   ; 2 uses
  %gep.i167 = getelementptr [4 x i8], ptr %invariant.gep.i166, i64 %i.ym ; 2 uses
  %i.yn = load float, ptr %gep.i167, align 4, !tbaa !11 ; 4 uses
  %.pre112.i = add nuw nsw i64 %i.ym, %indvars.iv107.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i168, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i ; 2 uses
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !11
  store float %i.yp, ptr %gep.i167, align 4, !tbaa !11
  store float %i.yn, ptr %i.yo, align 4, !tbaa !11
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %bb.t, %bb.s
  %i.yq = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i
  %i.yr = getelementptr i8, ptr %i.yq, i64 4      ; 2 uses
  %i.ys = fcmp oeq float %i.yn, 0.000000e+00
  br i1 %i.ys, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %._crit_edge.i168
  br i1 %min.iters.check609, label %.lr.ph.i.i169.preheader822, label %vector.ph610

vector.ph610:                                     ; preds = %.lr.ph.i.i169.preheader
  %broadcast.splatinsert613 = insertelement <4 x float> poison, float %i.yn, i64 0
  %broadcast.splat614 = shufflevector <4 x float> %broadcast.splatinsert613, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph610
  %index616 = phi i64 [ 0, %vector.ph610 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %index616 ; 3 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16 ; 2 uses
  %wide.load617 = load <4 x float>, ptr %i.yt, align 4, !tbaa !11
  %wide.load618 = load <4 x float>, ptr %i.yu, align 4, !tbaa !11
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index616 ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %wide.load619 = load <4 x float>, ptr %i.yv, align 4, !tbaa !11
  %wide.load620 = load <4 x float>, ptr %i.yw, align 4, !tbaa !11
  %i.yx = fmul <4 x float> %broadcast.splat614, %wide.load619
  %i.yy = fmul <4 x float> %broadcast.splat614, %wide.load620
  %i.yz = fadd <4 x float> %wide.load617, %i.yx
  %i.za = fadd <4 x float> %wide.load618, %i.yy
  store <4 x float> %i.yz, ptr %i.yt, align 4, !tbaa !11
  store <4 x float> %i.za, ptr %i.yu, align 4, !tbaa !11
  %index.next621 = add nuw i64 %index616, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next621, %n.vec612
  br i1 %i.zb, label %middle.block622, label %vector.body615, !llvm.loop !30

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader822

.lr.ph.i.i169.preheader822:                       ; preds = %.lr.ph.i.i169.preheader, %middle.block622
  %indvars.iv.i.i170.ph = phi i64 [ 0, %.lr.ph.i.i169.preheader ], [ %n.vec612, %middle.block622 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader822, %.lr.ph.i.i169
  %indvars.iv.i.i170 = phi i64 [ %indvars.iv.next.i.i171, %.lr.ph.i.i169 ], [ %indvars.iv.i.i170.ph, %.lr.ph.i.i169.preheader822 ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %indvars.iv.i.i170 ; 2 uses
  %i.zd = load float, ptr %i.zc, align 4, !tbaa !11
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv.i.i170
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !11
  %i.zg = fmul float %i.yn, %i.zf
  %i.zh = fadd float %i.zd, %i.zg
  store float %i.zh, ptr %i.zc, align 4, !tbaa !11
  %indvars.iv.next.i.i171 = add nuw nsw i64 %indvars.iv.i.i170, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i.i171, %i.yc
  br i1 %exitcond.not.i99.i, label %daxpy.exit.i172, label %.lr.ph.i.i169, !llvm.loop !31

daxpy.exit.i172:                                  ; preds = %.lr.ph.i.i169, %middle.block622, %._crit_edge.i168
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next105.i, 100
  br i1 %exitcond.not.i173, label %.loopexit.i, label %bb.s, !llvm.loop !32

.loopexit.i:                                      ; preds = %daxpy.exit.i172, %idamax.exit.i
  %i.zi = phi i32 [ %indvars109.i, %idamax.exit.i ], [ %i.ww, %daxpy.exit.i172 ] ; 2 uses
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, 99
  br i1 %exitcond111.not.i, label %.loopexit100.i, label %.lr.ph103.i.preheader, !llvm.loop !33

.loopexit100.i:                                   ; preds = %.loopexit.i
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.zj = add nuw nsw i32 %storemerge79415, 1     ; 2 uses
  %exitcond468.not.a = icmp eq i32 %i.zj, %i.ub
  br i1 %exitcond468.not.a, label %._crit_edge416, label %.preheader52.i138.preheader, !llvm.loop !34

._crit_edge416:                                   ; preds = %.loopexit100.i
  %i.zk = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.zl = fcmp oeq float %i.zk, 0.000000e+00
  %i.zm = select i1 %i.zl, i32 99, i32 %i.zi
  store i32 %i.zm, ptr @main.info, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge416, %bb.n
  %i.zn = tail call i64 @clock() #12              ; 0 uses
  %i.zo = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.zp = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zo, ptr noundef nonnull @.str.15, i32 noundef %i.zp, double noundef 0.000000e+00) #14 ; 0 uses
  %exitcond469.not.a = icmp eq i32 %.162, -1
  br i1 %exitcond469.not.a, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zr = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zs = shl nsw i32 %i.zr, 1
  br label %bb.n, !llvm.loop !35

.critedge:                                        ; preds = %bb.u
  %i.zt = sitofp i64 %i.qx to float
  %i.zu = fdiv nnan float %i.zt, 1.000000e+06
  %i.zv = sitofp i64 %i.ts to float
  %i.zw = fdiv nnan float %i.zv, 1.000000e+06
  %i.zx = fsub float %i.zw, %i.zu
  %i.zy = fdiv float %i.zx, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %i.zz = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aaa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zz, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.aab = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aab, ptr noundef nonnull @.str.19, i32 noundef 201) #14 ; 0 uses
  %i.aad = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aae = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.aad) #13 ; 0 uses
  %i.aaf = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aag = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.aaf) #13 ; 0 uses
  %i.aah = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aai = sitofp i32 %i.aah to float
  %i.aaj = fmul float %i.zy, %i.aai
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %._crit_edge426
  %i.aak = tail call i64 @clock() #12
  %i.aal = sitofp i64 %i.aak to float
  %i.aam = fdiv float %i.aal, 1.000000e+06
  %i.aan = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.aao = icmp sgt i32 %i.aan, 0
  br i1 %i.aao, label %.preheader52.i174.preheader, label %bb.ad

.preheader52.i174.preheader:                      ; preds = %bb.w, %.loopexit100.i217
  %storemerge85420 = phi i32 [ %i.afv, %.loopexit100.i217 ], [ 0, %bb.w ]
  br label %.preheader52.i174

.preheader52.i174:                                ; preds = %.preheader52.i174.preheader, %._crit_edge.i184
  %indvars.iv64.i175 = phi i64 [ %indvars.iv.next65.i185, %._crit_edge.i184 ], [ 0, %.preheader52.i174.preheader ] ; 2 uses
  %.04455.i176 = phi i32 [ %i.aav, %._crit_edge.i184 ], [ 1325, %.preheader52.i174.preheader ]
  %invariant.gep.i177.idx = mul nuw nsw i64 %indvars.iv64.i175, 804
  %invariant.gep.i177 = getelementptr i8, ptr @main.a, i64 %invariant.gep.i177.idx ; 2 uses
  br label %bb.x

.preheader51.i187:                                ; preds = %._crit_edge.i184
end_hunk_0
begin_hunk_1_@main:bb.a
  %.promoted1371 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1374 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1377 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1380 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1383 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1386 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1389 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1392 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1395 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1398 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1401 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1404 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1407 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1410 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1413 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1416.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1418.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1420 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1422 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i188

bb.x:                                             ; preds = %bb.x, %.preheader52.i174
  %indvars.iv.i178 = phi i64 [ 0, %.preheader52.i174 ], [ %indvars.iv.next.i182.1, %bb.x ] ; 3 uses
  %.14553.i179 = phi i32 [ %.04455.i176, %.preheader52.i174 ], [ %i.aav, %bb.x ] ; 2 uses
  %i.aap = mul nuw nsw i32 %.14553.i179, 3125
  %i.aaq = and i32 %i.aap, 65535
  %i.aar = add nsw i32 %i.aaq, -32768
  %i.aas = sitofp i32 %i.aar to float
  %i.aat = fmul nnan float %i.aas, f0x38800000
  %gep.i180 = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  store float %i.aat, ptr %gep.i180, align 4, !tbaa !11
  %i.aau = mul nsw i32 %.14553.i179, 761
  %i.aav = and i32 %i.aau, 65535                  ; 3 uses
  %i.aaw = add nsw i32 %i.aav, -32768
  %i.aax = sitofp i32 %i.aaw to float
  %i.aay = fmul nnan float %i.aax, f0x38800000
  %i.aaz = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  %gep.i180.1 = getelementptr i8, ptr %i.aaz, i64 4
  store float %i.aay, ptr %gep.i180.1, align 4, !tbaa !11
  %indvars.iv.next.i182.1 = add nuw nsw i64 %indvars.iv.i178, 2 ; 2 uses
  %exitcond.not.i183.1 = icmp eq i64 %indvars.iv.next.i182.1, 100
  br i1 %exitcond.not.i183.1, label %._crit_edge.i184, label %bb.x, !llvm.loop !13

._crit_edge.i184:                                 ; preds = %bb.x
  %indvars.iv.next65.i185 = add nuw nsw i64 %indvars.iv64.i175, 1 ; 2 uses
  %exitcond68.not.i186 = icmp eq i64 %indvars.iv.next65.i185, 100
  br i1 %exitcond68.not.i186, label %.preheader51.i187, label %.preheader52.i174, !llvm.loop !15

.preheader.i188:                                  ; preds = %.preheader.i188, %.preheader51.i187
  %i.aba = phi float [ %.promoted1422, %.preheader51.i187 ], [ %i.adh, %.preheader.i188 ]
  %i.abb = phi float [ %.promoted1420, %.preheader51.i187 ], [ %i.adf, %.preheader.i188 ]
  %i.abc = phi float [ %.promoted1418.a, %.preheader51.i187 ], [ %i.add, %.preheader.i188 ]
  %i.abd = phi float [ %.promoted1416.a, %.preheader51.i187 ], [ %i.adb, %.preheader.i188 ]
  %wide.load721.111414 = phi <4 x float> [ %.promoted1413, %.preheader51.i187 ], [ %i.acz, %.preheader.i188 ]
  %wide.load720.111411 = phi <4 x float> [ %.promoted1410, %.preheader51.i187 ], [ %i.acy, %.preheader.i188 ]
  %wide.load721.101408 = phi <4 x float> [ %.promoted1407, %.preheader51.i187 ], [ %i.acv, %.preheader.i188 ]
  %wide.load720.101405 = phi <4 x float> [ %.promoted1404, %.preheader51.i187 ], [ %i.acu, %.preheader.i188 ]
  %wide.load721.91402 = phi <4 x float> [ %.promoted1401, %.preheader51.i187 ], [ %i.acr, %.preheader.i188 ]
  %wide.load720.91399 = phi <4 x float> [ %.promoted1398, %.preheader51.i187 ], [ %i.acq, %.preheader.i188 ]
  %wide.load721.81396 = phi <4 x float> [ %.promoted1395, %.preheader51.i187 ], [ %i.acn, %.preheader.i188 ]
  %wide.load720.81393 = phi <4 x float> [ %.promoted1392, %.preheader51.i187 ], [ %i.acm, %.preheader.i188 ]
  %wide.load721.71390 = phi <4 x float> [ %.promoted1389, %.preheader51.i187 ], [ %i.acj, %.preheader.i188 ]
  %wide.load720.71387 = phi <4 x float> [ %.promoted1386, %.preheader51.i187 ], [ %i.aci, %.preheader.i188 ]
  %wide.load721.61384 = phi <4 x float> [ %.promoted1383, %.preheader51.i187 ], [ %i.acf, %.preheader.i188 ]
  %wide.load720.61381 = phi <4 x float> [ %.promoted1380, %.preheader51.i187 ], [ %i.ace, %.preheader.i188 ]
  %wide.load721.51378 = phi <4 x float> [ %.promoted1377, %.preheader51.i187 ], [ %i.acb, %.preheader.i188 ]
  %wide.load720.51375 = phi <4 x float> [ %.promoted1374, %.preheader51.i187 ], [ %i.aca, %.preheader.i188 ]
  %wide.load721.41372 = phi <4 x float> [ %.promoted1371, %.preheader51.i187 ], [ %i.abx, %.preheader.i188 ]
  %wide.load720.41369 = phi <4 x float> [ %.promoted1368, %.preheader51.i187 ], [ %i.abw, %.preheader.i188 ]
  %wide.load721.31366 = phi <4 x float> [ %.promoted1365, %.preheader51.i187 ], [ %i.abt, %.preheader.i188 ]
  %wide.load720.31363 = phi <4 x float> [ %.promoted1362, %.preheader51.i187 ], [ %i.abs, %.preheader.i188 ]
  %wide.load721.21360 = phi <4 x float> [ %.promoted1359, %.preheader51.i187 ], [ %i.abp, %.preheader.i188 ]
  %wide.load720.21357 = phi <4 x float> [ %.promoted1356, %.preheader51.i187 ], [ %i.abo, %.preheader.i188 ]
  %wide.load721.11354 = phi <4 x float> [ %.promoted1353, %.preheader51.i187 ], [ %i.abl, %.preheader.i188 ]
  %wide.load720.11351 = phi <4 x float> [ %.promoted1350, %.preheader51.i187 ], [ %i.abk, %.preheader.i188 ]
  %i.abe = phi <4 x float> [ %.promoted1348, %.preheader51.i187 ], [ %i.abh, %.preheader.i188 ]
  %wide.load7201346 = phi <4 x float> [ %main.b.promoted1345, %.preheader51.i187 ], [ %i.abg, %.preheader.i188 ]
  %indvars.iv77.i189 = phi i64 [ 0, %.preheader51.i187 ], [ %indvars.iv.next78.i196, %.preheader.i188 ] ; 2 uses
  %invariant.gep82.i190.idx = mul nuw nsw i64 %indvars.iv77.i189, 804
  %invariant.gep82.i190 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i190.idx ; 28 uses
  %i.abf = getelementptr i8, ptr %invariant.gep82.i190, i64 16
  %wide.load722 = load <4 x float>, ptr %invariant.gep82.i190, align 4, !tbaa !11
  %wide.load723 = load <4 x float>, ptr %i.abf, align 4, !tbaa !11
  %i.abg = fadd <4 x float> %wide.load7201346, %wide.load722 ; 2 uses
  %i.abh = fadd <4 x float> %i.abe, %wide.load723 ; 2 uses
  %i.abi = getelementptr i8, ptr %invariant.gep82.i190, i64 32
  %i.abj = getelementptr i8, ptr %invariant.gep82.i190, i64 48
  %wide.load722.1 = load <4 x float>, ptr %i.abi, align 4, !tbaa !11
  %wide.load723.1 = load <4 x float>, ptr %i.abj, align 4, !tbaa !11
  %i.abk = fadd <4 x float> %wide.load720.11351, %wide.load722.1 ; 2 uses
  %i.abl = fadd <4 x float> %wide.load721.11354, %wide.load723.1 ; 2 uses
  %i.abm = getelementptr i8, ptr %invariant.gep82.i190, i64 64
  %i.abn = getelementptr i8, ptr %invariant.gep82.i190, i64 80
  %wide.load722.2 = load <4 x float>, ptr %i.abm, align 4, !tbaa !11
  %wide.load723.2 = load <4 x float>, ptr %i.abn, align 4, !tbaa !11
  %i.abo = fadd <4 x float> %wide.load720.21357, %wide.load722.2 ; 2 uses
  %i.abp = fadd <4 x float> %wide.load721.21360, %wide.load723.2 ; 2 uses
  %i.abq = getelementptr i8, ptr %invariant.gep82.i190, i64 96
  %i.abr = getelementptr i8, ptr %invariant.gep82.i190, i64 112
  %wide.load722.3 = load <4 x float>, ptr %i.abq, align 4, !tbaa !11
  %wide.load723.3 = load <4 x float>, ptr %i.abr, align 4, !tbaa !11
  %i.abs = fadd <4 x float> %wide.load720.31363, %wide.load722.3 ; 2 uses
  %i.abt = fadd <4 x float> %wide.load721.31366, %wide.load723.3 ; 2 uses
  %i.abu = getelementptr i8, ptr %invariant.gep82.i190, i64 128
  %i.abv = getelementptr i8, ptr %invariant.gep82.i190, i64 144
  %wide.load722.4 = load <4 x float>, ptr %i.abu, align 4, !tbaa !11
  %wide.load723.4 = load <4 x float>, ptr %i.abv, align 4, !tbaa !11
  %i.abw = fadd <4 x float> %wide.load720.41369, %wide.load722.4 ; 2 uses
  %i.abx = fadd <4 x float> %wide.load721.41372, %wide.load723.4 ; 2 uses
  %i.aby = getelementptr i8, ptr %invariant.gep82.i190, i64 160
  %i.abz = getelementptr i8, ptr %invariant.gep82.i190, i64 176
  %wide.load722.5 = load <4 x float>, ptr %i.aby, align 4, !tbaa !11
  %wide.load723.5 = load <4 x float>, ptr %i.abz, align 4, !tbaa !11
  %i.aca = fadd <4 x float> %wide.load720.51375, %wide.load722.5 ; 2 uses
  %i.acb = fadd <4 x float> %wide.load721.51378, %wide.load723.5 ; 2 uses
  %i.acc = getelementptr i8, ptr %invariant.gep82.i190, i64 192
  %i.acd = getelementptr i8, ptr %invariant.gep82.i190, i64 208
  %wide.load722.6 = load <4 x float>, ptr %i.acc, align 4, !tbaa !11
  %wide.load723.6 = load <4 x float>, ptr %i.acd, align 4, !tbaa !11
  %i.ace = fadd <4 x float> %wide.load720.61381, %wide.load722.6 ; 2 uses
  %i.acf = fadd <4 x float> %wide.load721.61384, %wide.load723.6 ; 2 uses
  %i.acg = getelementptr i8, ptr %invariant.gep82.i190, i64 224
  %i.ach = getelementptr i8, ptr %invariant.gep82.i190, i64 240
  %wide.load722.7 = load <4 x float>, ptr %i.acg, align 4, !tbaa !11
  %wide.load723.7 = load <4 x float>, ptr %i.ach, align 4, !tbaa !11
  %i.aci = fadd <4 x float> %wide.load720.71387, %wide.load722.7 ; 2 uses
  %i.acj = fadd <4 x float> %wide.load721.71390, %wide.load723.7 ; 2 uses
  %i.ack = getelementptr i8, ptr %invariant.gep82.i190, i64 256
  %i.acl = getelementptr i8, ptr %invariant.gep82.i190, i64 272
  %wide.load722.8 = load <4 x float>, ptr %i.ack, align 4, !tbaa !11
  %wide.load723.8 = load <4 x float>, ptr %i.acl, align 4, !tbaa !11
  %i.acm = fadd <4 x float> %wide.load720.81393, %wide.load722.8 ; 2 uses
  %i.acn = fadd <4 x float> %wide.load721.81396, %wide.load723.8 ; 2 uses
  %i.aco = getelementptr i8, ptr %invariant.gep82.i190, i64 288
  %i.acp = getelementptr i8, ptr %invariant.gep82.i190, i64 304
  %wide.load722.9 = load <4 x float>, ptr %i.aco, align 4, !tbaa !11
  %wide.load723.9 = load <4 x float>, ptr %i.acp, align 4, !tbaa !11
  %i.acq = fadd <4 x float> %wide.load720.91399, %wide.load722.9 ; 2 uses
  %i.acr = fadd <4 x float> %wide.load721.91402, %wide.load723.9 ; 2 uses
  %i.acs = getelementptr i8, ptr %invariant.gep82.i190, i64 320
  %i.act = getelementptr i8, ptr %invariant.gep82.i190, i64 336
  %wide.load722.10 = load <4 x float>, ptr %i.acs, align 4, !tbaa !11
  %wide.load723.10 = load <4 x float>, ptr %i.act, align 4, !tbaa !11
  %i.acu = fadd <4 x float> %wide.load720.101405, %wide.load722.10 ; 2 uses
  %i.acv = fadd <4 x float> %wide.load721.101408, %wide.load723.10 ; 2 uses
  %i.acw = getelementptr i8, ptr %invariant.gep82.i190, i64 352
  %i.acx = getelementptr i8, ptr %invariant.gep82.i190, i64 368
  %wide.load722.11 = load <4 x float>, ptr %i.acw, align 4, !tbaa !11
  %wide.load723.11 = load <4 x float>, ptr %i.acx, align 4, !tbaa !11
  %i.acy = fadd <4 x float> %wide.load720.111411, %wide.load722.11 ; 2 uses
  %i.acz = fadd <4 x float> %wide.load721.111414, %wide.load723.11 ; 2 uses
  %gep83.i192 = getelementptr i8, ptr %invariant.gep82.i190, i64 384
  %i.ada = load float, ptr %gep83.i192, align 4, !tbaa !11
  %i.adb = fadd float %i.abd, %i.ada              ; 2 uses
  %gep83.i192.1 = getelementptr i8, ptr %invariant.gep82.i190, i64 388
  %i.adc = load float, ptr %gep83.i192.1, align 4, !tbaa !11
  %i.add = fadd float %i.abc, %i.adc              ; 2 uses
  %gep83.i192.2 = getelementptr i8, ptr %invariant.gep82.i190, i64 392
  %i.ade = load float, ptr %gep83.i192.2, align 4, !tbaa !11
  %i.adf = fadd float %i.abb, %i.ade              ; 2 uses
  %gep83.i192.3 = getelementptr i8, ptr %invariant.gep82.i190, i64 396
  %i.adg = load float, ptr %gep83.i192.3, align 4, !tbaa !11
  %i.adh = fadd float %i.aba, %i.adg              ; 2 uses
  %indvars.iv.next78.i196 = add nuw nsw i64 %indvars.iv77.i189, 1 ; 2 uses
  %exitcond81.not.i197 = icmp eq i64 %indvars.iv.next78.i196, 100
  br i1 %exitcond81.not.i197, label %.lr.ph103.i199.preheader.preheader, label %.preheader.i188, !llvm.loop !16

.lr.ph103.i199.preheader.preheader:               ; preds = %.preheader.i188
  store <4 x float> %i.abg, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.abh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.abk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.abl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.abo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.abp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.abs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.abt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.abw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.abx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.aca, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.acb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.ace, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.acf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.aci, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.acj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.acm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.acn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.acq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.acr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.acu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.acv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.acy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.acz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.adb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.add, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.adf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.adh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i199.preheader

.lr.ph103.i199.preheader:                         ; preds = %.lr.ph103.i199.preheader.preheader, %.loopexit.i214
  %i.adi = phi i32 [ %i.afu, %.loopexit.i214 ], [ 0, %.lr.ph103.i199.preheader.preheader ]
  %indvars.iv107.i200 = phi i64 [ %indvars.iv.next108.i203, %.loopexit.i214 ], [ 0, %.lr.ph103.i199.preheader.preheader ] ; 12 uses
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i215, %.loopexit.i214 ], [ 1, %.lr.ph103.i199.preheader.preheader ] ; 2 uses
  %i.adj = sub nsw i64 99, %indvars.iv107.i200    ; 3 uses
  %indvars109.i202 = trunc i64 %indvars.iv107.i200 to i32 ; 2 uses
  %indvars.iv.next108.i203 = add nuw nsw i64 %indvars.iv107.i200, 1 ; 2 uses
  %i.adk = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i200
  %i.adl = mul nuw nsw i64 %indvars.iv107.i200, 804
  %i.adm = getelementptr i8, ptr %i.adk, i64 %i.adl ; 7 uses
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !11
  %i.ado = tail call float @llvm.fabs.f32(float %i.adn) ; 2 uses
  %xtraiter847 = and i64 %i.adj, 1
  %i.adp = icmp eq i64 %indvars.iv107.i200, 98
  br i1 %i.adp, label %.lr.ph48.i.i204.epil.preheader, label %.lr.ph103.i199.preheader.new

.lr.ph103.i199.preheader.new:                     ; preds = %.lr.ph103.i199.preheader
  %unroll_iter851 = and i64 %i.adj, -2
  br label %.lr.ph48.i.i204

.lr.ph48.i.i204:                                  ; preds = %.lr.ph48.i.i204, %.lr.ph103.i199.preheader.new
  %indvars.iv52.i.i205 = phi i64 [ 1, %.lr.ph103.i199.preheader.new ], [ %indvars.iv.next53.i.i210.1, %.lr.ph48.i.i204 ] ; 4 uses
  %.247.i.i206 = phi i32 [ 0, %.lr.ph103.i199.preheader.new ], [ %.3.i.i209.1, %.lr.ph48.i.i204 ]
  %.23345.i.i207 = phi float [ %i.ado, %.lr.ph103.i199.preheader.new ], [ %.334.i.i208.1, %.lr.ph48.i.i204 ] ; 2 uses
  %niter852 = phi i64 [ 0, %.lr.ph103.i199.preheader.new ], [ %niter852.next.1, %.lr.ph48.i.i204 ]
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv52.i.i205
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !11
  %i.ads = tail call float @llvm.fabs.f32(float %i.adr) ; 2 uses
  %i.adt = fcmp ogt float %i.ads, %.23345.i.i207  ; 2 uses
  %.334.i.i208 = select i1 %i.adt, float %i.ads, float %.23345.i.i207 ; 2 uses
  %i.adu = trunc nuw nsw i64 %indvars.iv52.i.i205 to i32
  %.3.i.i209 = select i1 %i.adt, i32 %i.adu, i32 %.247.i.i206
  %indvars.iv.next53.i.i210 = add nuw nsw i64 %indvars.iv52.i.i205, 1 ; 2 uses
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv.next53.i.i210
  %i.adw = load float, ptr %i.adv, align 4, !tbaa !11
  %i.adx = tail call float @llvm.fabs.f32(float %i.adw) ; 2 uses
  %i.ady = fcmp ogt float %i.adx, %.334.i.i208    ; 2 uses
  %.334.i.i208.1 = select i1 %i.ady, float %i.adx, float %.334.i.i208 ; 2 uses
  %i.adz = trunc nuw nsw i64 %indvars.iv.next53.i.i210 to i32
  %.3.i.i209.1 = select i1 %i.ady, i32 %i.adz, i32 %.3.i.i209 ; 3 uses
  %indvars.iv.next53.i.i210.1 = add nuw nsw i64 %indvars.iv52.i.i205, 2 ; 2 uses
  %niter852.next.1 = add i64 %niter852, 2         ; 2 uses
  %niter852.ncmp.1 = icmp eq i64 %niter852.next.1, %unroll_iter851
  br i1 %niter852.ncmp.1, label %idamax.exit.i212.unr-lcssa, label %.lr.ph48.i.i204, !llvm.loop !27

idamax.exit.i212.unr-lcssa:                       ; preds = %.lr.ph48.i.i204
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %idamax.exit.i212, label %.lr.ph48.i.i204.epil.preheader

.lr.ph48.i.i204.epil.preheader:                   ; preds = %idamax.exit.i212.unr-lcssa, %.lr.ph103.i199.preheader
  %indvars.iv52.i.i205.epil.init = phi i64 [ 1, %.lr.ph103.i199.preheader ], [ %indvars.iv.next53.i.i210.1, %idamax.exit.i212.unr-lcssa ] ; 2 uses
  %.247.i.i206.epil.init = phi i32 [ 0, %.lr.ph103.i199.preheader ], [ %.3.i.i209.1, %idamax.exit.i212.unr-lcssa ]
  %.23345.i.i207.epil.init = phi float [ %i.ado, %.lr.ph103.i199.preheader ], [ %.334.i.i208.1, %idamax.exit.i212.unr-lcssa ]
  %lcmp.mod850 = trunc i64 %i.adj to i1
  tail call void @llvm.assume(i1 %lcmp.mod850)
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv52.i.i205.epil.init
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !11
  %i.aec = tail call float @llvm.fabs.f32(float %i.aeb)
  %i.aed = fcmp ogt float %i.aec, %.23345.i.i207.epil.init
  %i.aee = trunc nuw nsw i64 %indvars.iv52.i.i205.epil.init to i32
  %.3.i.i209.epil = select i1 %i.aed, i32 %i.aee, i32 %.247.i.i206.epil.init
  br label %idamax.exit.i212

idamax.exit.i212:                                 ; preds = %idamax.exit.i212.unr-lcssa, %.lr.ph48.i.i204.epil.preheader
  %.3.i.i209.lcssa = phi i32 [ %.3.i.i209.1, %idamax.exit.i212.unr-lcssa ], [ %.3.i.i209.epil, %.lr.ph48.i.i204.epil.preheader ] ; 2 uses
  %i.aef = add nsw i32 %.3.i.i209.lcssa, %indvars109.i202 ; 2 uses
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i200
  store i32 %i.aef, ptr %i.aeg, align 4, !tbaa !4
  %i.aeh = sext i32 %i.aef to i64                 ; 2 uses
  %.idx392 = mul nuw nsw i64 %indvars.iv107.i200, 804
  %i.aei = getelementptr i8, ptr @main.a, i64 %.idx392
  %i.aej = getelementptr [4 x i8], ptr %i.aei, i64 %i.aeh ; 2 uses
  %i.aek = load float, ptr %i.aej, align 4, !tbaa !11 ; 3 uses
  %i.ael = fcmp une float %i.aek, 0.000000e+00
  br i1 %i.ael, label %bb.y, label %.loopexit.i214

bb.y:                                             ; preds = %idamax.exit.i212
  %.not.i218 = icmp eq i32 %.3.i.i209.lcssa, 0    ; 2 uses
  %.pre.i219 = load float, ptr %i.adm, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i218, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %.pre.i219, ptr %i.aej, align 4, !tbaa !11
  store float %i.aek, ptr %i.adm, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aem = phi float [ %i.aek, %bb.z ], [ %.pre.i219, %bb.y ]
  %i.aen = fdiv float -1.000000e+00, %i.aem       ; 2 uses
  %i.aeo = sub nuw nsw i64 99, %indvars.iv107.i200 ; 6 uses
  %i.aep = getelementptr i8, ptr %i.adm, i64 4    ; 4 uses
  %min.iters.check702 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  br i1 %min.iters.check702, label %.lr.ph25.i.i220.preheader, label %vector.ph703

vector.ph703:                                     ; preds = %bb.aa
  %n.vec705 = and i64 %i.aeo, 120                 ; 3 uses
  %broadcast.splatinsert706 = insertelement <4 x float> poison, float %i.aen, i64 0
  %broadcast.splat707 = shufflevector <4 x float> %broadcast.splatinsert706, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body708

vector.body708:                                   ; preds = %vector.body708, %vector.ph703
  %index709 = phi i64 [ 0, %vector.ph703 ], [ %index.next712, %vector.body708 ] ; 2 uses
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index709 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16 ; 2 uses
  %wide.load710 = load <4 x float>, ptr %i.aeq, align 4, !tbaa !11
  %wide.load711 = load <4 x float>, ptr %i.aer, align 4, !tbaa !11
  %i.aes = fmul <4 x float> %broadcast.splat707, %wide.load710
  %i.aet = fmul <4 x float> %broadcast.splat707, %wide.load711
  store <4 x float> %i.aes, ptr %i.aeq, align 4, !tbaa !11
  store <4 x float> %i.aet, ptr %i.aer, align 4, !tbaa !11
  %index.next712 = add nuw i64 %index709, 8       ; 2 uses
  %i.aeu = icmp eq i64 %index.next712, %n.vec705
  br i1 %i.aeu, label %middle.block713, label %vector.body708, !llvm.loop !36

middle.block713:                                  ; preds = %vector.body708
  %cmp.n714 = icmp eq i64 %i.aeo, %n.vec705
  br i1 %cmp.n714, label %.lr.ph.i224, label %.lr.ph25.i.i220.preheader

.lr.ph25.i.i220.preheader:                        ; preds = %bb.aa, %middle.block713
  %indvars.iv28.i.i221.ph = phi i64 [ 0, %bb.aa ], [ %n.vec705, %middle.block713 ]
  br label %.lr.ph25.i.i220

.lr.ph25.i.i220:                                  ; preds = %.lr.ph25.i.i220.preheader, %.lr.ph25.i.i220
  %indvars.iv28.i.i221 = phi i64 [ %indvars.iv.next29.i.i222, %.lr.ph25.i.i220 ], [ %indvars.iv28.i.i221.ph, %.lr.ph25.i.i220.preheader ] ; 2 uses
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv28.i.i221 ; 2 uses
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !11
  %i.aex = fmul float %i.aen, %i.aew
  store float %i.aex, ptr %i.aev, align 4, !tbaa !11
  %indvars.iv.next29.i.i222 = add nuw nsw i64 %indvars.iv28.i.i221, 1 ; 2 uses
  %exitcond.not.i.i223 = icmp eq i64 %indvars.iv.next29.i.i222, %i.aeo
  br i1 %exitcond.not.i.i223, label %.lr.ph.i224, label %.lr.ph25.i.i220, !llvm.loop !37

.lr.ph.i224:                                      ; preds = %.lr.ph25.i.i220, %middle.block713
  %invariant.gep.i225 = getelementptr [4 x i8], ptr @main.a, i64 %i.aeh
  %min.iters.check685 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  %n.vec688 = and i64 %i.aeo, 120                 ; 3 uses
  %cmp.n699 = icmp eq i64 %i.aeo, %n.vec688
  br label %bb.ab

bb.ab:                                            ; preds = %daxpy.exit.i234, %.lr.ph.i224
  %indvars.iv104.i226 = phi i64 [ %indvars.iv.i201, %.lr.ph.i224 ], [ %indvars.iv.next105.i235, %daxpy.exit.i234 ] ; 2 uses
  %i.aey = mul nuw nsw i64 %indvars.iv104.i226, 201 ; 2 uses
  %gep.i227 = getelementptr [4 x i8], ptr %invariant.gep.i225, i64 %i.aey ; 2 uses
  %i.aez = load float, ptr %gep.i227, align 4, !tbaa !11 ; 4 uses
  %.pre112.i228 = add nuw nsw i64 %i.aey, %indvars.iv107.i200 ; 2 uses
  br i1 %.not.i218, label %._crit_edge.i229, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afa = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre112.i228 ; 2 uses
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !11
  store float %i.afb, ptr %gep.i227, align 4, !tbaa !11
  store float %i.aez, ptr %i.afa, align 4, !tbaa !11
  br label %._crit_edge.i229

._crit_edge.i229:                                 ; preds = %bb.ac, %bb.ab
  %i.afc = getelementptr [4 x i8], ptr @main.a, i64 %.pre112.i228
  %i.afd = getelementptr i8, ptr %i.afc, i64 4    ; 2 uses
  %i.afe = fcmp oeq float %i.aez, 0.000000e+00
  br i1 %i.afe, label %daxpy.exit.i234, label %.lr.ph.i.i230.preheader

.lr.ph.i.i230.preheader:                          ; preds = %._crit_edge.i229
  br i1 %min.iters.check685, label %.lr.ph.i.i230.preheader817, label %vector.ph686

vector.ph686:                                     ; preds = %.lr.ph.i.i230.preheader
  %broadcast.splatinsert689 = insertelement <4 x float> poison, float %i.aez, i64 0
  %broadcast.splat690 = shufflevector <4 x float> %broadcast.splatinsert689, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body691

vector.body691:                                   ; preds = %vector.body691, %vector.ph686
  %index692 = phi i64 [ 0, %vector.ph686 ], [ %index.next697, %vector.body691 ] ; 3 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %index692 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16 ; 2 uses
  %wide.load693 = load <4 x float>, ptr %i.aff, align 4, !tbaa !11
  %wide.load694 = load <4 x float>, ptr %i.afg, align 4, !tbaa !11
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %index692 ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %wide.load695 = load <4 x float>, ptr %i.afh, align 4, !tbaa !11
  %wide.load696 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %i.afj = fmul <4 x float> %broadcast.splat690, %wide.load695
  %i.afk = fmul <4 x float> %broadcast.splat690, %wide.load696
  %i.afl = fadd <4 x float> %wide.load693, %i.afj
  %i.afm = fadd <4 x float> %wide.load694, %i.afk
  store <4 x float> %i.afl, ptr %i.aff, align 4, !tbaa !11
  store <4 x float> %i.afm, ptr %i.afg, align 4, !tbaa !11
  %index.next697 = add nuw i64 %index692, 8       ; 2 uses
  %i.afn = icmp eq i64 %index.next697, %n.vec688
  br i1 %i.afn, label %middle.block698, label %vector.body691, !llvm.loop !38

middle.block698:                                  ; preds = %vector.body691
  br i1 %cmp.n699, label %daxpy.exit.i234, label %.lr.ph.i.i230.preheader817

.lr.ph.i.i230.preheader817:                       ; preds = %.lr.ph.i.i230.preheader, %middle.block698
  %indvars.iv.i.i231.ph = phi i64 [ 0, %.lr.ph.i.i230.preheader ], [ %n.vec688, %middle.block698 ]
  br label %.lr.ph.i.i230

.lr.ph.i.i230:                                    ; preds = %.lr.ph.i.i230.preheader817, %.lr.ph.i.i230
  %indvars.iv.i.i231 = phi i64 [ %indvars.iv.next.i.i232, %.lr.ph.i.i230 ], [ %indvars.iv.i.i231.ph, %.lr.ph.i.i230.preheader817 ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afd, i64 %indvars.iv.i.i231 ; 2 uses
  %i.afp = load float, ptr %i.afo, align 4, !tbaa !11
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.aep, i64 %indvars.iv.i.i231
  %i.afr = load float, ptr %i.afq, align 4, !tbaa !11
  %i.afs = fmul float %i.aez, %i.afr
  %i.aft = fadd float %i.afp, %i.afs
  store float %i.aft, ptr %i.afo, align 4, !tbaa !11
  %indvars.iv.next.i.i232 = add nuw nsw i64 %indvars.iv.i.i231, 1 ; 2 uses
  %exitcond.not.i99.i233 = icmp eq i64 %indvars.iv.next.i.i232, %i.aeo
  br i1 %exitcond.not.i99.i233, label %daxpy.exit.i234, label %.lr.ph.i.i230, !llvm.loop !39

daxpy.exit.i234:                                  ; preds = %.lr.ph.i.i230, %middle.block698, %._crit_edge.i229
  %indvars.iv.next105.i235 = add nuw nsw i64 %indvars.iv104.i226, 1 ; 2 uses
  %exitcond.not.i236 = icmp eq i64 %indvars.iv.next105.i235, 100
  br i1 %exitcond.not.i236, label %.loopexit.i214, label %bb.ab, !llvm.loop !32

.loopexit.i214:                                   ; preds = %daxpy.exit.i234, %idamax.exit.i212
  %i.afu = phi i32 [ %indvars109.i202, %idamax.exit.i212 ], [ %i.adi, %daxpy.exit.i234 ] ; 2 uses
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i201, 1
  %exitcond111.not.i216 = icmp eq i64 %indvars.iv.next108.i203, 99
  br i1 %exitcond111.not.i216, label %.loopexit100.i217, label %.lr.ph103.i199.preheader, !llvm.loop !33

.loopexit100.i217:                                ; preds = %.loopexit.i214
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afv = add nuw nsw i32 %storemerge85420, 1    ; 2 uses
  %exitcond470.not.a = icmp eq i32 %i.afv, %i.aan
  br i1 %exitcond470.not.a, label %._crit_edge421, label %.preheader52.i174.preheader, !llvm.loop !40

._crit_edge421:                                   ; preds = %.loopexit100.i217
  %i.afw = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.afx = fcmp oeq float %i.afw, 0.000000e+00
  %i.afy = select i1 %i.afx, i32 99, i32 %i.afu
  store i32 %i.afy, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge421, %bb.w
  %i.afz = tail call i64 @clock() #12
  %i.aga = sitofp i64 %i.afz to float
  %i.agb = fdiv float %i.aga, 1.000000e+06
  %i.agc = fsub float %i.agb, %i.aam
  %i.agd = fsub float %i.agc, %i.aaj
  %i.age = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agf = sitofp i32 %i.age to float
  %i.agg = fdiv float %i.agd, %i.agf
  %i.agh = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agi = sext i32 %i.agh to i64
  %i.agj = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agi
  store float %i.agg, ptr %i.agj, align 4, !tbaa !11
  %i.agk = tail call i64 @clock() #12
  %i.agl = sitofp i64 %i.agk to float
  %i.agm = fdiv float %i.agl, 1.000000e+06
  %i.agn = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.ago = icmp sgt i32 %i.agn, 0
  br i1 %i.ago, label %.preheader395, label %._crit_edge426

.preheader395:                                    ; preds = %bb.ad, %dgesl.exit260
  %storemerge86425 = phi i32 [ %i.ais, %dgesl.exit260 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader395, %daxpy.exit.i245
  %indvars.iv146.i238 = phi i64 [ %indvars.iv.next147.i240, %daxpy.exit.i245 ], [ 0, %.preheader395 ] ; 7 uses
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i238
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !4 ; 2 uses
  %i.agr = sext i32 %i.agq to i64
  %i.ags = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.agr ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !11 ; 4 uses
  %i.agu = zext i32 %i.agq to i64
  %.not103.i239 = icmp eq i64 %indvars.iv146.i238, %i.agu
  br i1 %.not103.i239, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i238 ; 2 uses
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !11
  store float %i.agw, ptr %i.ags, align 4, !tbaa !11
  store float %i.agt, ptr %i.agv, align 4, !tbaa !11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %indvars.iv.next147.i240 = add nuw nsw i64 %indvars.iv146.i238, 1 ; 3 uses
  %i.agx = mul nuw nsw i64 %indvars.iv146.i238, 808
  %i.agy = getelementptr i8, ptr @main.a, i64 %i.agx
  %i.agz = getelementptr i8, ptr %i.agy, i64 4    ; 2 uses
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i240 ; 2 uses
  %i.ahb = fcmp oeq float %i.agt, 0.000000e+00
  br i1 %i.ahb, label %daxpy.exit.i245, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ahc = sub nuw nsw i64 99, %indvars.iv146.i238 ; 3 uses
  %min.iters.check668 = icmp samesign ugt i64 %indvars.iv146.i238, 91
  br i1 %min.iters.check668, label %.lr.ph.i.i241.preheader, label %vector.ph669

vector.ph669:                                     ; preds = %bb.ah
  %n.vec671 = and i64 %i.ahc, 120                 ; 3 uses
  %broadcast.splatinsert672 = insertelement <4 x float> poison, float %i.agt, i64 0
  %broadcast.splat673 = shufflevector <4 x float> %broadcast.splatinsert672, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body674

vector.body674:                                   ; preds = %vector.body674, %vector.ph669
  %index675 = phi i64 [ 0, %vector.ph669 ], [ %index.next680, %vector.body674 ] ; 3 uses
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %index675 ; 3 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16 ; 2 uses
  %wide.load676 = load <4 x float>, ptr %i.ahd, align 4, !tbaa !11
  %wide.load677 = load <4 x float>, ptr %i.ahe, align 4, !tbaa !11
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %index675 ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 16
  %wide.load678 = load <4 x float>, ptr %i.ahf, align 4, !tbaa !11
  %wide.load679 = load <4 x float>, ptr %i.ahg, align 4, !tbaa !11
  %i.ahh = fmul <4 x float> %broadcast.splat673, %wide.load678
  %i.ahi = fmul <4 x float> %broadcast.splat673, %wide.load679
  %i.ahj = fadd <4 x float> %wide.load676, %i.ahh
  %i.ahk = fadd <4 x float> %wide.load677, %i.ahi
  store <4 x float> %i.ahj, ptr %i.ahd, align 4, !tbaa !11
  store <4 x float> %i.ahk, ptr %i.ahe, align 4, !tbaa !11
  %index.next680 = add nuw i64 %index675, 8       ; 2 uses
  %i.ahl = icmp eq i64 %index.next680, %n.vec671
  br i1 %i.ahl, label %middle.block681, label %vector.body674, !llvm.loop !41

middle.block681:                                  ; preds = %vector.body674
  %cmp.n682 = icmp eq i64 %i.ahc, %n.vec671
  br i1 %cmp.n682, label %daxpy.exit.i245, label %.lr.ph.i.i241.preheader

.lr.ph.i.i241.preheader:                          ; preds = %bb.ah, %middle.block681
  %indvars.iv.i.i242.ph = phi i64 [ 0, %bb.ah ], [ %n.vec671, %middle.block681 ]
  br label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %.lr.ph.i.i241.preheader, %.lr.ph.i.i241
  %indvars.iv.i.i242 = phi i64 [ %indvars.iv.next.i.i243, %.lr.ph.i.i241 ], [ %indvars.iv.i.i242.ph, %.lr.ph.i.i241.preheader ] ; 3 uses
  %i.ahm = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv.i.i242 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !11
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.agz, i64 %indvars.iv.i.i242
  %i.ahp = load float, ptr %i.aho, align 4, !tbaa !11
  %i.ahq = fmul float %i.agt, %i.ahp
  %i.ahr = fadd float %i.ahn, %i.ahq
  store float %i.ahr, ptr %i.ahm, align 4, !tbaa !11
  %indvars.iv.next.i.i243 = add nuw nsw i64 %indvars.iv.i.i242, 1 ; 2 uses
  %exitcond.not.i.i244 = icmp eq i64 %indvars.iv.next.i.i243, %i.ahc
  br i1 %exitcond.not.i.i244, label %daxpy.exit.i245, label %.lr.ph.i.i241, !llvm.loop !42

daxpy.exit.i245:                                  ; preds = %.lr.ph.i.i241, %middle.block681, %bb.ag
  %exitcond150.not.i246 = icmp eq i64 %indvars.iv.next147.i240, 99
  br i1 %exitcond150.not.i246, label %.lr.ph136.i248, label %bb.ae, !llvm.loop !21

.lr.ph136.i248:                                   ; preds = %daxpy.exit.i245, %daxpy.exit110.i257
  %indvars.iv151.i249 = phi i64 [ %indvars.iv.next152.i250, %daxpy.exit110.i257 ], [ 0, %daxpy.exit.i245 ] ; 4 uses
  %indvars.iv.next152.i250 = add nuw nsw i64 %indvars.iv151.i249, 1 ; 2 uses
  %i.ahs = sub nuw nsw i64 99, %indvars.iv151.i249 ; 7 uses
  %i.aht = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.ahs ; 2 uses
  %i.ahu = load float, ptr %i.aht, align 4, !tbaa !11
  %i.ahv = getelementptr [4 x i8], ptr @main.a, i64 %i.ahs
  %i.ahw = mul nuw nsw i64 %i.ahs, 804
  %i.ahx = getelementptr i8, ptr %i.ahv, i64 %i.ahw
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !11
  %i.ahz = fdiv float %i.ahu, %i.ahy              ; 4 uses
  store float %i.ahz, ptr %i.aht, align 4, !tbaa !11
  %.idx390 = mul nuw nsw i64 %i.ahs, 804
  %i.aia = getelementptr inbounds nuw i8, ptr @main.a, i64 %.idx390 ; 2 uses
  %i.aib = icmp samesign ugt i64 %indvars.iv151.i249, 98
  %i.aic = fcmp oeq float %i.ahz, 0.000000e+00
  %or.cond41.i104.i252 = or i1 %i.aib, %i.aic
  br i1 %or.cond41.i104.i252, label %daxpy.exit110.i257, label %.lr.ph.i106.i253.preheader

.lr.ph.i106.i253.preheader:                       ; preds = %.lr.ph136.i248
  %min.iters.check651 = icmp samesign ugt i64 %indvars.iv151.i249, 91
  br i1 %min.iters.check651, label %.lr.ph.i106.i253.preheader818, label %vector.ph652

vector.ph652:                                     ; preds = %.lr.ph.i106.i253.preheader
  %n.vec654 = and i64 %i.ahs, 120                 ; 3 uses
  %broadcast.splatinsert655 = insertelement <4 x float> poison, float %i.ahz, i64 0
  %broadcast.splat656 = shufflevector <4 x float> %broadcast.splatinsert655, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph652
  %index658 = phi i64 [ 0, %vector.ph652 ], [ %index.next663, %vector.body657 ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index658 ; 3 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 16 ; 2 uses
  %wide.load659 = load <4 x float>, ptr %i.aid, align 16, !tbaa !11
  %wide.load660 = load <4 x float>, ptr %i.aie, align 16, !tbaa !11
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %index658 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 16
  %wide.load661 = load <4 x float>, ptr %i.aif, align 4, !tbaa !11
  %wide.load662 = load <4 x float>, ptr %i.aig, align 4, !tbaa !11
  %i.aih = fmul <4 x float> %broadcast.splat656, %wide.load661
  %i.aii = fmul <4 x float> %broadcast.splat656, %wide.load662
  %i.aij = fsub <4 x float> %wide.load659, %i.aih
  %i.aik = fsub <4 x float> %wide.load660, %i.aii
  store <4 x float> %i.aij, ptr %i.aid, align 16, !tbaa !11
  store <4 x float> %i.aik, ptr %i.aie, align 16, !tbaa !11
  %index.next663 = add nuw i64 %index658, 8       ; 2 uses
  %i.ail = icmp eq i64 %index.next663, %n.vec654
  br i1 %i.ail, label %middle.block664, label %vector.body657, !llvm.loop !43

middle.block664:                                  ; preds = %vector.body657
  %cmp.n665 = icmp eq i64 %i.ahs, %n.vec654
  br i1 %cmp.n665, label %daxpy.exit110.i257, label %.lr.ph.i106.i253.preheader818

.lr.ph.i106.i253.preheader818:                    ; preds = %.lr.ph.i106.i253.preheader, %middle.block664
  %indvars.iv.i107.i254.ph = phi i64 [ 0, %.lr.ph.i106.i253.preheader ], [ %n.vec654, %middle.block664 ]
  br label %.lr.ph.i106.i253

.lr.ph.i106.i253:                                 ; preds = %.lr.ph.i106.i253.preheader818, %.lr.ph.i106.i253
  %indvars.iv.i107.i254 = phi i64 [ %indvars.iv.next.i108.i255, %.lr.ph.i106.i253 ], [ %indvars.iv.i107.i254.ph, %.lr.ph.i106.i253.preheader818 ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i254 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !11
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.aia, i64 %indvars.iv.i107.i254
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !11
  %i.aiq = fmul float %i.ahz, %i.aip
  %i.air = fsub float %i.ain, %i.aiq
  store float %i.air, ptr %i.aim, align 4, !tbaa !11
  %indvars.iv.next.i108.i255 = add nuw nsw i64 %indvars.iv.i107.i254, 1 ; 2 uses
  %exitcond.not.i109.i256 = icmp eq i64 %indvars.iv.next.i108.i255, %i.ahs
  br i1 %exitcond.not.i109.i256, label %daxpy.exit110.i257, label %.lr.ph.i106.i253, !llvm.loop !44

daxpy.exit110.i257:                               ; preds = %.lr.ph.i106.i253, %middle.block664, %.lr.ph136.i248
  %exitcond155.not.i258 = icmp eq i64 %indvars.iv.next152.i250, 100
  br i1 %exitcond155.not.i258, label %dgesl.exit260, label %.lr.ph136.i248, !llvm.loop !24

dgesl.exit260:                                    ; preds = %daxpy.exit110.i257
  %i.ais = add nuw nsw i32 %storemerge86425, 1    ; 2 uses
  %exitcond471.not = icmp eq i32 %i.ais, %i.agn
  br i1 %exitcond471.not, label %._crit_edge426, label %.preheader395, !llvm.loop !45
end_hunk_1
begin_hunk_2_@main:bb.a
  %.promoted1529 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1532 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1535 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1538 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1541 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1544 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1547 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1550 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1553 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1556 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1559 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1562 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1565 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1568 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1571 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1574.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1576.a = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1578 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1580 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i300

bb.ak:                                            ; preds = %bb.ak, %.preheader52.i286
  %indvars.iv.i290 = phi i64 [ 0, %.preheader52.i286 ], [ %indvars.iv.next.i294.1, %bb.ak ] ; 3 uses
  %.14553.i291 = phi i32 [ %.04455.i288, %.preheader52.i286 ], [ %i.anx, %bb.ak ] ; 2 uses
  %i.anr = mul nuw nsw i32 %.14553.i291, 3125
  %i.ans = and i32 %i.anr, 65535
  %i.ant = add nsw i32 %i.ans, -32768
  %i.anu = sitofp i32 %i.ant to float
  %i.anv = fmul nnan float %i.anu, f0x38800000
  %gep.i292 = getelementptr [4 x i8], ptr %invariant.gep.i289, i64 %indvars.iv.i290
  store float %i.anv, ptr %gep.i292, align 8, !tbaa !11
  %i.anw = mul nsw i32 %.14553.i291, 761
  %i.anx = and i32 %i.anw, 65535                  ; 3 uses
  %i.any = add nsw i32 %i.anx, -32768
  %i.anz = sitofp i32 %i.any to float
  %i.aoa = fmul nnan float %i.anz, f0x38800000
  %i.aob = getelementptr [4 x i8], ptr %invariant.gep.i289, i64 %indvars.iv.i290
  %gep.i292.1 = getelementptr i8, ptr %i.aob, i64 4
  store float %i.aoa, ptr %gep.i292.1, align 4, !tbaa !11
  %indvars.iv.next.i294.1 = add nuw nsw i64 %indvars.iv.i290, 2 ; 2 uses
  %exitcond.not.i295.1 = icmp eq i64 %indvars.iv.next.i294.1, 100
  br i1 %exitcond.not.i295.1, label %._crit_edge.i296, label %bb.ak, !llvm.loop !13

._crit_edge.i296:                                 ; preds = %bb.ak
  %indvars.iv.next65.i297 = add nuw nsw i64 %indvars.iv64.i287, 1 ; 2 uses
  %exitcond68.not.i298 = icmp eq i64 %indvars.iv.next65.i297, 100
  br i1 %exitcond68.not.i298, label %.preheader51.i299, label %.preheader52.i286, !llvm.loop !15

.preheader.i300:                                  ; preds = %.preheader.i300, %.preheader51.i299
  %i.aoc = phi float [ %.promoted1580, %.preheader51.i299 ], [ %i.aqj, %.preheader.i300 ]
  %i.aod = phi float [ %.promoted1578, %.preheader51.i299 ], [ %i.aqh, %.preheader.i300 ]
  %i.aoe = phi float [ %.promoted1576.a, %.preheader51.i299 ], [ %i.aqf, %.preheader.i300 ]
  %i.aof = phi float [ %.promoted1574.a, %.preheader51.i299 ], [ %i.aqd, %.preheader.i300 ]
  %wide.load807.111572 = phi <4 x float> [ %.promoted1571, %.preheader51.i299 ], [ %i.aqb, %.preheader.i300 ]
  %wide.load806.111569 = phi <4 x float> [ %.promoted1568, %.preheader51.i299 ], [ %i.aqa, %.preheader.i300 ]
  %wide.load807.101566 = phi <4 x float> [ %.promoted1565, %.preheader51.i299 ], [ %i.apx, %.preheader.i300 ]
  %wide.load806.101563 = phi <4 x float> [ %.promoted1562, %.preheader51.i299 ], [ %i.apw, %.preheader.i300 ]
  %wide.load807.91560 = phi <4 x float> [ %.promoted1559, %.preheader51.i299 ], [ %i.apt, %.preheader.i300 ]
  %wide.load806.91557 = phi <4 x float> [ %.promoted1556, %.preheader51.i299 ], [ %i.aps, %.preheader.i300 ]
  %wide.load807.81554 = phi <4 x float> [ %.promoted1553, %.preheader51.i299 ], [ %i.app, %.preheader.i300 ]
  %wide.load806.81551 = phi <4 x float> [ %.promoted1550, %.preheader51.i299 ], [ %i.apo, %.preheader.i300 ]
  %wide.load807.71548 = phi <4 x float> [ %.promoted1547, %.preheader51.i299 ], [ %i.apl, %.preheader.i300 ]
  %wide.load806.71545 = phi <4 x float> [ %.promoted1544, %.preheader51.i299 ], [ %i.apk, %.preheader.i300 ]
  %wide.load807.61542 = phi <4 x float> [ %.promoted1541, %.preheader51.i299 ], [ %i.aph, %.preheader.i300 ]
  %wide.load806.61539 = phi <4 x float> [ %.promoted1538, %.preheader51.i299 ], [ %i.apg, %.preheader.i300 ]
  %wide.load807.51536 = phi <4 x float> [ %.promoted1535, %.preheader51.i299 ], [ %i.apd, %.preheader.i300 ]
  %wide.load806.51533 = phi <4 x float> [ %.promoted1532, %.preheader51.i299 ], [ %i.apc, %.preheader.i300 ]
  %wide.load807.41530 = phi <4 x float> [ %.promoted1529, %.preheader51.i299 ], [ %i.aoz, %.preheader.i300 ]
  %wide.load806.41527 = phi <4 x float> [ %.promoted1526, %.preheader51.i299 ], [ %i.aoy, %.preheader.i300 ]
  %wide.load807.31524 = phi <4 x float> [ %.promoted1523, %.preheader51.i299 ], [ %i.aov, %.preheader.i300 ]
  %wide.load806.31521 = phi <4 x float> [ %.promoted1520, %.preheader51.i299 ], [ %i.aou, %.preheader.i300 ]
  %wide.load807.21518 = phi <4 x float> [ %.promoted1517, %.preheader51.i299 ], [ %i.aor, %.preheader.i300 ]
  %wide.load806.21515 = phi <4 x float> [ %.promoted1514, %.preheader51.i299 ], [ %i.aoq, %.preheader.i300 ]
  %wide.load807.11512 = phi <4 x float> [ %.promoted1511, %.preheader51.i299 ], [ %i.aon, %.preheader.i300 ]
  %wide.load806.11509 = phi <4 x float> [ %.promoted1508, %.preheader51.i299 ], [ %i.aom, %.preheader.i300 ]
  %i.aog = phi <4 x float> [ %.promoted1506, %.preheader51.i299 ], [ %i.aoj, %.preheader.i300 ]
  %wide.load8061504 = phi <4 x float> [ %main.b.promoted1503, %.preheader51.i299 ], [ %i.aoi, %.preheader.i300 ]
  %indvars.iv77.i301 = phi i64 [ 0, %.preheader51.i299 ], [ %indvars.iv.next78.i308, %.preheader.i300 ] ; 2 uses
  %invariant.gep82.i302.idx = mul nuw nsw i64 %indvars.iv77.i301, 800
  %invariant.gep82.i302 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i302.idx ; 28 uses
  %i.aoh = getelementptr i8, ptr %invariant.gep82.i302, i64 16
  %wide.load808 = load <4 x float>, ptr %invariant.gep82.i302, align 16, !tbaa !11
  %wide.load809 = load <4 x float>, ptr %i.aoh, align 16, !tbaa !11
  %i.aoi = fadd <4 x float> %wide.load8061504, %wide.load808 ; 2 uses
  %i.aoj = fadd <4 x float> %i.aog, %wide.load809 ; 2 uses
  %i.aok = getelementptr i8, ptr %invariant.gep82.i302, i64 32
  %i.aol = getelementptr i8, ptr %invariant.gep82.i302, i64 48
  %wide.load808.1 = load <4 x float>, ptr %i.aok, align 16, !tbaa !11
  %wide.load809.1 = load <4 x float>, ptr %i.aol, align 16, !tbaa !11
  %i.aom = fadd <4 x float> %wide.load806.11509, %wide.load808.1 ; 2 uses
  %i.aon = fadd <4 x float> %wide.load807.11512, %wide.load809.1 ; 2 uses
  %i.aoo = getelementptr i8, ptr %invariant.gep82.i302, i64 64
  %i.aop = getelementptr i8, ptr %invariant.gep82.i302, i64 80
  %wide.load808.2 = load <4 x float>, ptr %i.aoo, align 16, !tbaa !11
  %wide.load809.2 = load <4 x float>, ptr %i.aop, align 16, !tbaa !11
  %i.aoq = fadd <4 x float> %wide.load806.21515, %wide.load808.2 ; 2 uses
  %i.aor = fadd <4 x float> %wide.load807.21518, %wide.load809.2 ; 2 uses
  %i.aos = getelementptr i8, ptr %invariant.gep82.i302, i64 96
  %i.aot = getelementptr i8, ptr %invariant.gep82.i302, i64 112
  %wide.load808.3 = load <4 x float>, ptr %i.aos, align 16, !tbaa !11
  %wide.load809.3 = load <4 x float>, ptr %i.aot, align 16, !tbaa !11
  %i.aou = fadd <4 x float> %wide.load806.31521, %wide.load808.3 ; 2 uses
  %i.aov = fadd <4 x float> %wide.load807.31524, %wide.load809.3 ; 2 uses
  %i.aow = getelementptr i8, ptr %invariant.gep82.i302, i64 128
  %i.aox = getelementptr i8, ptr %invariant.gep82.i302, i64 144
  %wide.load808.4 = load <4 x float>, ptr %i.aow, align 16, !tbaa !11
  %wide.load809.4 = load <4 x float>, ptr %i.aox, align 16, !tbaa !11
  %i.aoy = fadd <4 x float> %wide.load806.41527, %wide.load808.4 ; 2 uses
  %i.aoz = fadd <4 x float> %wide.load807.41530, %wide.load809.4 ; 2 uses
  %i.apa = getelementptr i8, ptr %invariant.gep82.i302, i64 160
  %i.apb = getelementptr i8, ptr %invariant.gep82.i302, i64 176
  %wide.load808.5 = load <4 x float>, ptr %i.apa, align 16, !tbaa !11
  %wide.load809.5 = load <4 x float>, ptr %i.apb, align 16, !tbaa !11
  %i.apc = fadd <4 x float> %wide.load806.51533, %wide.load808.5 ; 2 uses
  %i.apd = fadd <4 x float> %wide.load807.51536, %wide.load809.5 ; 2 uses
  %i.ape = getelementptr i8, ptr %invariant.gep82.i302, i64 192
  %i.apf = getelementptr i8, ptr %invariant.gep82.i302, i64 208
  %wide.load808.6 = load <4 x float>, ptr %i.ape, align 16, !tbaa !11
  %wide.load809.6 = load <4 x float>, ptr %i.apf, align 16, !tbaa !11
  %i.apg = fadd <4 x float> %wide.load806.61539, %wide.load808.6 ; 2 uses
  %i.aph = fadd <4 x float> %wide.load807.61542, %wide.load809.6 ; 2 uses
  %i.api = getelementptr i8, ptr %invariant.gep82.i302, i64 224
  %i.apj = getelementptr i8, ptr %invariant.gep82.i302, i64 240
  %wide.load808.7 = load <4 x float>, ptr %i.api, align 16, !tbaa !11
  %wide.load809.7 = load <4 x float>, ptr %i.apj, align 16, !tbaa !11
  %i.apk = fadd <4 x float> %wide.load806.71545, %wide.load808.7 ; 2 uses
  %i.apl = fadd <4 x float> %wide.load807.71548, %wide.load809.7 ; 2 uses
  %i.apm = getelementptr i8, ptr %invariant.gep82.i302, i64 256
  %i.apn = getelementptr i8, ptr %invariant.gep82.i302, i64 272
  %wide.load808.8 = load <4 x float>, ptr %i.apm, align 16, !tbaa !11
  %wide.load809.8 = load <4 x float>, ptr %i.apn, align 16, !tbaa !11
  %i.apo = fadd <4 x float> %wide.load806.81551, %wide.load808.8 ; 2 uses
  %i.app = fadd <4 x float> %wide.load807.81554, %wide.load809.8 ; 2 uses
  %i.apq = getelementptr i8, ptr %invariant.gep82.i302, i64 288
  %i.apr = getelementptr i8, ptr %invariant.gep82.i302, i64 304
  %wide.load808.9 = load <4 x float>, ptr %i.apq, align 16, !tbaa !11
  %wide.load809.9 = load <4 x float>, ptr %i.apr, align 16, !tbaa !11
  %i.aps = fadd <4 x float> %wide.load806.91557, %wide.load808.9 ; 2 uses
  %i.apt = fadd <4 x float> %wide.load807.91560, %wide.load809.9 ; 2 uses
  %i.apu = getelementptr i8, ptr %invariant.gep82.i302, i64 320
  %i.apv = getelementptr i8, ptr %invariant.gep82.i302, i64 336
  %wide.load808.10 = load <4 x float>, ptr %i.apu, align 16, !tbaa !11
  %wide.load809.10 = load <4 x float>, ptr %i.apv, align 16, !tbaa !11
  %i.apw = fadd <4 x float> %wide.load806.101563, %wide.load808.10 ; 2 uses
  %i.apx = fadd <4 x float> %wide.load807.101566, %wide.load809.10 ; 2 uses
  %i.apy = getelementptr i8, ptr %invariant.gep82.i302, i64 352
  %i.apz = getelementptr i8, ptr %invariant.gep82.i302, i64 368
  %wide.load808.11 = load <4 x float>, ptr %i.apy, align 16, !tbaa !11
  %wide.load809.11 = load <4 x float>, ptr %i.apz, align 16, !tbaa !11
  %i.aqa = fadd <4 x float> %wide.load806.111569, %wide.load808.11 ; 2 uses
  %i.aqb = fadd <4 x float> %wide.load807.111572, %wide.load809.11 ; 2 uses
  %gep83.i304 = getelementptr i8, ptr %invariant.gep82.i302, i64 384
  %i.aqc = load float, ptr %gep83.i304, align 16, !tbaa !11
  %i.aqd = fadd float %i.aof, %i.aqc              ; 2 uses
  %gep83.i304.1 = getelementptr i8, ptr %invariant.gep82.i302, i64 388
  %i.aqe = load float, ptr %gep83.i304.1, align 4, !tbaa !11
  %i.aqf = fadd float %i.aoe, %i.aqe              ; 2 uses
  %gep83.i304.2 = getelementptr i8, ptr %invariant.gep82.i302, i64 392
  %i.aqg = load float, ptr %gep83.i304.2, align 8, !tbaa !11
  %i.aqh = fadd float %i.aod, %i.aqg              ; 2 uses
  %gep83.i304.3 = getelementptr i8, ptr %invariant.gep82.i302, i64 396
  %i.aqi = load float, ptr %gep83.i304.3, align 4, !tbaa !11
  %i.aqj = fadd float %i.aoc, %i.aqi              ; 2 uses
  %indvars.iv.next78.i308 = add nuw nsw i64 %indvars.iv77.i301, 1 ; 2 uses
  %exitcond81.not.i309 = icmp eq i64 %indvars.iv.next78.i308, 100
  br i1 %exitcond81.not.i309, label %.lr.ph103.i311.preheader.preheader, label %.preheader.i300, !llvm.loop !16

.lr.ph103.i311.preheader.preheader:               ; preds = %.preheader.i300
  store <4 x float> %i.aoi, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.aoj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.aom, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.aon, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.aoq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.aor, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.aou, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.aov, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.aoy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.aoz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.apc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.apd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.apg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.aph, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.apk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.apl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.apo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.app, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.aps, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.apt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.apw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.apx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.aqa, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.aqb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.aqd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.aqf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.aqh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.aqj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i311.preheader

.lr.ph103.i311.preheader:                         ; preds = %.lr.ph103.i311.preheader.preheader, %.loopexit.i326
  %i.aqk = phi i32 [ %i.asw, %.loopexit.i326 ], [ 0, %.lr.ph103.i311.preheader.preheader ]
  %indvars.iv107.i312 = phi i64 [ %indvars.iv.next108.i315, %.loopexit.i326 ], [ 0, %.lr.ph103.i311.preheader.preheader ] ; 12 uses
  %indvars.iv.i313 = phi i64 [ %indvars.iv.next.i327, %.loopexit.i326 ], [ 1, %.lr.ph103.i311.preheader.preheader ] ; 2 uses
  %i.aql = sub nsw i64 99, %indvars.iv107.i312    ; 3 uses
  %indvars109.i314 = trunc i64 %indvars.iv107.i312 to i32 ; 2 uses
  %indvars.iv.next108.i315 = add nuw nsw i64 %indvars.iv107.i312, 1 ; 2 uses
  %i.aqm = getelementptr [4 x i8], ptr @main.aa, i64 %indvars.iv107.i312
  %i.aqn = mul nuw nsw i64 %indvars.iv107.i312, 800
  %i.aqo = getelementptr i8, ptr %i.aqm, i64 %i.aqn ; 7 uses
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !11
  %i.aqq = tail call float @llvm.fabs.f32(float %i.aqp) ; 2 uses
  %xtraiter853 = and i64 %i.aql, 1
  %i.aqr = icmp eq i64 %indvars.iv107.i312, 98
  br i1 %i.aqr, label %.lr.ph48.i.i316.epil.preheader, label %.lr.ph103.i311.preheader.new

.lr.ph103.i311.preheader.new:                     ; preds = %.lr.ph103.i311.preheader
  %unroll_iter857 = and i64 %i.aql, -2
  br label %.lr.ph48.i.i316

.lr.ph48.i.i316:                                  ; preds = %.lr.ph48.i.i316, %.lr.ph103.i311.preheader.new
  %indvars.iv52.i.i317 = phi i64 [ 1, %.lr.ph103.i311.preheader.new ], [ %indvars.iv.next53.i.i322.1, %.lr.ph48.i.i316 ] ; 4 uses
  %.247.i.i318 = phi i32 [ 0, %.lr.ph103.i311.preheader.new ], [ %.3.i.i321.1, %.lr.ph48.i.i316 ]
  %.23345.i.i319 = phi float [ %i.aqq, %.lr.ph103.i311.preheader.new ], [ %.334.i.i320.1, %.lr.ph48.i.i316 ] ; 2 uses
  %niter858 = phi i64 [ 0, %.lr.ph103.i311.preheader.new ], [ %niter858.next.1, %.lr.ph48.i.i316 ]
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i317
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !11
  %i.aqu = tail call float @llvm.fabs.f32(float %i.aqt) ; 2 uses
  %i.aqv = fcmp ogt float %i.aqu, %.23345.i.i319  ; 2 uses
  %.334.i.i320 = select i1 %i.aqv, float %i.aqu, float %.23345.i.i319 ; 2 uses
  %i.aqw = trunc nuw nsw i64 %indvars.iv52.i.i317 to i32
  %.3.i.i321 = select i1 %i.aqv, i32 %i.aqw, i32 %.247.i.i318
  %indvars.iv.next53.i.i322 = add nuw nsw i64 %indvars.iv52.i.i317, 1 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv.next53.i.i322
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !11
  %i.aqz = tail call float @llvm.fabs.f32(float %i.aqy) ; 2 uses
  %i.ara = fcmp ogt float %i.aqz, %.334.i.i320    ; 2 uses
  %.334.i.i320.1 = select i1 %i.ara, float %i.aqz, float %.334.i.i320 ; 2 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv.next53.i.i322 to i32
  %.3.i.i321.1 = select i1 %i.ara, i32 %i.arb, i32 %.3.i.i321 ; 3 uses
  %indvars.iv.next53.i.i322.1 = add nuw nsw i64 %indvars.iv52.i.i317, 2 ; 2 uses
  %niter858.next.1 = add i64 %niter858, 2         ; 2 uses
  %niter858.ncmp.1 = icmp eq i64 %niter858.next.1, %unroll_iter857
  br i1 %niter858.ncmp.1, label %idamax.exit.i324.unr-lcssa, label %.lr.ph48.i.i316, !llvm.loop !27

idamax.exit.i324.unr-lcssa:                       ; preds = %.lr.ph48.i.i316
  %lcmp.mod854.not = icmp eq i64 %xtraiter853, 0
  br i1 %lcmp.mod854.not, label %idamax.exit.i324, label %.lr.ph48.i.i316.epil.preheader

.lr.ph48.i.i316.epil.preheader:                   ; preds = %idamax.exit.i324.unr-lcssa, %.lr.ph103.i311.preheader
  %indvars.iv52.i.i317.epil.init = phi i64 [ 1, %.lr.ph103.i311.preheader ], [ %indvars.iv.next53.i.i322.1, %idamax.exit.i324.unr-lcssa ] ; 2 uses
  %.247.i.i318.epil.init = phi i32 [ 0, %.lr.ph103.i311.preheader ], [ %.3.i.i321.1, %idamax.exit.i324.unr-lcssa ]
  %.23345.i.i319.epil.init = phi float [ %i.aqq, %.lr.ph103.i311.preheader ], [ %.334.i.i320.1, %idamax.exit.i324.unr-lcssa ]
  %lcmp.mod856 = trunc i64 %i.aql to i1
  tail call void @llvm.assume(i1 %lcmp.mod856)
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i317.epil.init
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !11
  %i.are = tail call float @llvm.fabs.f32(float %i.ard)
  %i.arf = fcmp ogt float %i.are, %.23345.i.i319.epil.init
  %i.arg = trunc nuw nsw i64 %indvars.iv52.i.i317.epil.init to i32
  %.3.i.i321.epil = select i1 %i.arf, i32 %i.arg, i32 %.247.i.i318.epil.init
  br label %idamax.exit.i324

idamax.exit.i324:                                 ; preds = %idamax.exit.i324.unr-lcssa, %.lr.ph48.i.i316.epil.preheader
  %.3.i.i321.lcssa = phi i32 [ %.3.i.i321.1, %idamax.exit.i324.unr-lcssa ], [ %.3.i.i321.epil, %.lr.ph48.i.i316.epil.preheader ] ; 2 uses
  %i.arh = add nsw i32 %.3.i.i321.lcssa, %indvars109.i314 ; 2 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i312
  store i32 %i.arh, ptr %i.ari, align 4, !tbaa !4
  %i.arj = sext i32 %i.arh to i64                 ; 2 uses
  %.idx387 = mul nuw nsw i64 %indvars.iv107.i312, 800
  %i.ark = getelementptr i8, ptr @main.aa, i64 %.idx387
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %i.arj ; 2 uses
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !11 ; 3 uses
  %i.arn = fcmp une float %i.arm, 0.000000e+00
  br i1 %i.arn, label %bb.al, label %.loopexit.i326

bb.al:                                            ; preds = %idamax.exit.i324
  %.not.i330 = icmp eq i32 %.3.i.i321.lcssa, 0    ; 2 uses
  %.pre.i331 = load float, ptr %i.aqo, align 4, !tbaa !11 ; 2 uses
  br i1 %.not.i330, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %.pre.i331, ptr %i.arl, align 4, !tbaa !11
  store float %i.arm, ptr %i.aqo, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.aro = phi float [ %i.arm, %bb.am ], [ %.pre.i331, %bb.al ]
  %i.arp = fdiv float -1.000000e+00, %i.aro       ; 2 uses
  %i.arq = sub nuw nsw i64 99, %indvars.iv107.i312 ; 6 uses
  %i.arr = getelementptr i8, ptr %i.aqo, i64 4    ; 4 uses
  %min.iters.check788 = icmp samesign ugt i64 %indvars.iv107.i312, 91
  br i1 %min.iters.check788, label %.lr.ph25.i.i332.preheader, label %vector.ph789

vector.ph789:                                     ; preds = %bb.an
  %n.vec791 = and i64 %i.arq, 120                 ; 3 uses
  %broadcast.splatinsert792 = insertelement <4 x float> poison, float %i.arp, i64 0
  %broadcast.splat793 = shufflevector <4 x float> %broadcast.splatinsert792, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body794

vector.body794:                                   ; preds = %vector.body794, %vector.ph789
  %index795 = phi i64 [ 0, %vector.ph789 ], [ %index.next798, %vector.body794 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index795 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16 ; 2 uses
  %wide.load796 = load <4 x float>, ptr %i.ars, align 4, !tbaa !11
  %wide.load797 = load <4 x float>, ptr %i.art, align 4, !tbaa !11
  %i.aru = fmul <4 x float> %broadcast.splat793, %wide.load796
  %i.arv = fmul <4 x float> %broadcast.splat793, %wide.load797
  store <4 x float> %i.aru, ptr %i.ars, align 4, !tbaa !11
  store <4 x float> %i.arv, ptr %i.art, align 4, !tbaa !11
  %index.next798 = add nuw i64 %index795, 8       ; 2 uses
  %i.arw = icmp eq i64 %index.next798, %n.vec791
  br i1 %i.arw, label %middle.block799, label %vector.body794, !llvm.loop !48

middle.block799:                                  ; preds = %vector.body794
  %cmp.n800 = icmp eq i64 %i.arq, %n.vec791
  br i1 %cmp.n800, label %.lr.ph.i336, label %.lr.ph25.i.i332.preheader

.lr.ph25.i.i332.preheader:                        ; preds = %bb.an, %middle.block799
  %indvars.iv28.i.i333.ph = phi i64 [ 0, %bb.an ], [ %n.vec791, %middle.block799 ]
  br label %.lr.ph25.i.i332

.lr.ph25.i.i332:                                  ; preds = %.lr.ph25.i.i332.preheader, %.lr.ph25.i.i332
  %indvars.iv28.i.i333 = phi i64 [ %indvars.iv.next29.i.i334, %.lr.ph25.i.i332 ], [ %indvars.iv28.i.i333.ph, %.lr.ph25.i.i332.preheader ] ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv28.i.i333 ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !11
  %i.arz = fmul float %i.arp, %i.ary
  store float %i.arz, ptr %i.arx, align 4, !tbaa !11
  %indvars.iv.next29.i.i334 = add nuw nsw i64 %indvars.iv28.i.i333, 1 ; 2 uses
  %exitcond.not.i.i335 = icmp eq i64 %indvars.iv.next29.i.i334, %i.arq
  br i1 %exitcond.not.i.i335, label %.lr.ph.i336, label %.lr.ph25.i.i332, !llvm.loop !49

.lr.ph.i336:                                      ; preds = %.lr.ph25.i.i332, %middle.block799
  %invariant.gep.i337 = getelementptr [4 x i8], ptr @main.aa, i64 %i.arj
  %min.iters.check771 = icmp samesign ugt i64 %indvars.iv107.i312, 91
  %n.vec774 = and i64 %i.arq, 120                 ; 3 uses
  %cmp.n785 = icmp eq i64 %i.arq, %n.vec774
  br label %bb.ao

bb.ao:                                            ; preds = %daxpy.exit.i346, %.lr.ph.i336
  %indvars.iv104.i338 = phi i64 [ %indvars.iv.i313, %.lr.ph.i336 ], [ %indvars.iv.next105.i347, %daxpy.exit.i346 ] ; 2 uses
  %i.asa = mul nuw nsw i64 %indvars.iv104.i338, 200 ; 2 uses
  %gep.i339 = getelementptr [4 x i8], ptr %invariant.gep.i337, i64 %i.asa ; 2 uses
  %i.asb = load float, ptr %gep.i339, align 4, !tbaa !11 ; 4 uses
  %.pre112.i340 = add nuw nsw i64 %i.asa, %indvars.iv107.i312 ; 2 uses
  br i1 %.not.i330, label %._crit_edge.i341, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre112.i340 ; 2 uses
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !11
  store float %i.asd, ptr %gep.i339, align 4, !tbaa !11
  store float %i.asb, ptr %i.asc, align 4, !tbaa !11
  br label %._crit_edge.i341

._crit_edge.i341:                                 ; preds = %bb.ap, %bb.ao
  %i.ase = getelementptr [4 x i8], ptr @main.aa, i64 %.pre112.i340
  %i.asf = getelementptr i8, ptr %i.ase, i64 4    ; 2 uses
  %i.asg = fcmp oeq float %i.asb, 0.000000e+00
  br i1 %i.asg, label %daxpy.exit.i346, label %.lr.ph.i.i342.preheader

.lr.ph.i.i342.preheader:                          ; preds = %._crit_edge.i341
  br i1 %min.iters.check771, label %.lr.ph.i.i342.preheader812, label %vector.ph772

vector.ph772:                                     ; preds = %.lr.ph.i.i342.preheader
  %broadcast.splatinsert775 = insertelement <4 x float> poison, float %i.asb, i64 0
  %broadcast.splat776 = shufflevector <4 x float> %broadcast.splatinsert775, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body777

vector.body777:                                   ; preds = %vector.body777, %vector.ph772
  %index778 = phi i64 [ 0, %vector.ph772 ], [ %index.next783, %vector.body777 ] ; 3 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %index778 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 16 ; 2 uses
  %wide.load779 = load <4 x float>, ptr %i.ash, align 4, !tbaa !11
  %wide.load780 = load <4 x float>, ptr %i.asi, align 4, !tbaa !11
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index778 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %wide.load781 = load <4 x float>, ptr %i.asj, align 4, !tbaa !11
  %wide.load782 = load <4 x float>, ptr %i.ask, align 4, !tbaa !11
  %i.asl = fmul <4 x float> %broadcast.splat776, %wide.load781
  %i.asm = fmul <4 x float> %broadcast.splat776, %wide.load782
  %i.asn = fadd <4 x float> %wide.load779, %i.asl
  %i.aso = fadd <4 x float> %wide.load780, %i.asm
  store <4 x float> %i.asn, ptr %i.ash, align 4, !tbaa !11
  store <4 x float> %i.aso, ptr %i.asi, align 4, !tbaa !11
  %index.next783 = add nuw i64 %index778, 8       ; 2 uses
  %i.asp = icmp eq i64 %index.next783, %n.vec774
  br i1 %i.asp, label %middle.block784, label %vector.body777, !llvm.loop !50

middle.block784:                                  ; preds = %vector.body777
  br i1 %cmp.n785, label %daxpy.exit.i346, label %.lr.ph.i.i342.preheader812

.lr.ph.i.i342.preheader812:                       ; preds = %.lr.ph.i.i342.preheader, %middle.block784
  %indvars.iv.i.i343.ph = phi i64 [ 0, %.lr.ph.i.i342.preheader ], [ %n.vec774, %middle.block784 ]
  br label %.lr.ph.i.i342

.lr.ph.i.i342:                                    ; preds = %.lr.ph.i.i342.preheader812, %.lr.ph.i.i342
  %indvars.iv.i.i343 = phi i64 [ %indvars.iv.next.i.i344, %.lr.ph.i.i342 ], [ %indvars.iv.i.i343.ph, %.lr.ph.i.i342.preheader812 ] ; 3 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv.i.i343 ; 2 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !11
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i.i343
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !11
  %i.asu = fmul float %i.asb, %i.ast
  %i.asv = fadd float %i.asr, %i.asu
  store float %i.asv, ptr %i.asq, align 4, !tbaa !11
  %indvars.iv.next.i.i344 = add nuw nsw i64 %indvars.iv.i.i343, 1 ; 2 uses
  %exitcond.not.i99.i345 = icmp eq i64 %indvars.iv.next.i.i344, %i.arq
  br i1 %exitcond.not.i99.i345, label %daxpy.exit.i346, label %.lr.ph.i.i342, !llvm.loop !51

daxpy.exit.i346:                                  ; preds = %.lr.ph.i.i342, %middle.block784, %._crit_edge.i341
  %indvars.iv.next105.i347 = add nuw nsw i64 %indvars.iv104.i338, 1 ; 2 uses
  %exitcond.not.i348 = icmp eq i64 %indvars.iv.next105.i347, 100
  br i1 %exitcond.not.i348, label %.loopexit.i326, label %bb.ao, !llvm.loop !32

.loopexit.i326:                                   ; preds = %daxpy.exit.i346, %idamax.exit.i324
  %i.asw = phi i32 [ %indvars109.i314, %idamax.exit.i324 ], [ %i.aqk, %daxpy.exit.i346 ] ; 2 uses
  %indvars.iv.next.i327 = add nuw nsw i64 %indvars.iv.i313, 1
  %exitcond111.not.i328 = icmp eq i64 %indvars.iv.next108.i315, 99
  br i1 %exitcond111.not.i328, label %.loopexit100.i329, label %.lr.ph103.i311.preheader, !llvm.loop !33

.loopexit100.i329:                                ; preds = %.loopexit.i326
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.asx = add nuw nsw i32 %storemerge83431, 1    ; 2 uses
  %exitcond473.not = icmp eq i32 %i.asx, %i.anp
  br i1 %exitcond473.not, label %._crit_edge432, label %.preheader52.i286.preheader, !llvm.loop !52

._crit_edge432:                                   ; preds = %.loopexit100.i329
  %i.asy = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.asz = fcmp oeq float %i.asy, 0.000000e+00
  %i.ata = select i1 %i.asz, i32 99, i32 %i.asw
  store i32 %i.ata, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge432, %bb.aj
  %i.atb = tail call i64 @clock() #12
  %i.atc = sitofp i64 %i.atb to float
  %i.atd = fdiv float %i.atc, 1.000000e+06
  %i.ate = fsub float %i.atd, %i.ano
  %i.atf = fsub float %i.ate, %i.anl
  %i.atg = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.ath = sitofp i32 %i.atg to float
  %i.ati = fdiv float %i.atf, %i.ath
  %i.atj = load i32, ptr @main.j, align 4, !tbaa !4
  %i.atk = sext i32 %i.atj to i64
  %i.atl = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.atk
  store float %i.ati, ptr %i.atl, align 4, !tbaa !11
  %i.atm = tail call i64 @clock() #12
  %i.atn = sitofp i64 %i.atm to float
  %i.ato = fdiv float %i.atn, 1.000000e+06
  %i.atp = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.atq = icmp sgt i32 %i.atp, 0
  br i1 %i.atq, label %.preheader, label %._crit_edge437

.preheader:                                       ; preds = %bb.aq, %dgesl.exit372
  %storemerge84436 = phi i32 [ %i.avu, %dgesl.exit372 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i357
  %indvars.iv146.i350 = phi i64 [ %indvars.iv.next147.i352, %daxpy.exit.i357 ], [ 0, %.preheader ] ; 7 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i350
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !4 ; 2 uses
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.att ; 2 uses
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !11 ; 4 uses
  %i.atw = zext i32 %i.ats to i64
  %.not103.i351 = icmp eq i64 %indvars.iv146.i350, %i.atw
  br i1 %.not103.i351, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i350 ; 2 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !11
  store float %i.aty, ptr %i.atu, align 4, !tbaa !11
  store float %i.atv, ptr %i.atx, align 4, !tbaa !11
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %indvars.iv.next147.i352 = add nuw nsw i64 %indvars.iv146.i350, 1 ; 3 uses
  %i.atz = mul nuw nsw i64 %indvars.iv146.i350, 804
  %i.aua = getelementptr i8, ptr @main.aa, i64 %i.atz
  %i.aub = getelementptr i8, ptr %i.aua, i64 4    ; 2 uses
  %i.auc = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.next147.i352 ; 2 uses
  %i.aud = fcmp oeq float %i.atv, 0.000000e+00
  br i1 %i.aud, label %daxpy.exit.i357, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.aue = sub nuw nsw i64 99, %indvars.iv146.i350 ; 3 uses
  %min.iters.check754 = icmp samesign ugt i64 %indvars.iv146.i350, 91
  br i1 %min.iters.check754, label %.lr.ph.i.i353.preheader, label %vector.ph755

vector.ph755:                                     ; preds = %bb.au
  %n.vec757 = and i64 %i.aue, 120                 ; 3 uses
  %broadcast.splatinsert758 = insertelement <4 x float> poison, float %i.atv, i64 0
  %broadcast.splat759 = shufflevector <4 x float> %broadcast.splatinsert758, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body760

vector.body760:                                   ; preds = %vector.body760, %vector.ph755
  %index761 = phi i64 [ 0, %vector.ph755 ], [ %index.next766, %vector.body760 ] ; 3 uses
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %index761 ; 3 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16 ; 2 uses
  %wide.load762 = load <4 x float>, ptr %i.auf, align 4, !tbaa !11
  %wide.load763 = load <4 x float>, ptr %i.aug, align 4, !tbaa !11
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %index761 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %wide.load764 = load <4 x float>, ptr %i.auh, align 4, !tbaa !11
  %wide.load765 = load <4 x float>, ptr %i.aui, align 4, !tbaa !11
  %i.auj = fmul <4 x float> %broadcast.splat759, %wide.load764
  %i.auk = fmul <4 x float> %broadcast.splat759, %wide.load765
  %i.aul = fadd <4 x float> %wide.load762, %i.auj
  %i.aum = fadd <4 x float> %wide.load763, %i.auk
  store <4 x float> %i.aul, ptr %i.auf, align 4, !tbaa !11
  store <4 x float> %i.aum, ptr %i.aug, align 4, !tbaa !11
  %index.next766 = add nuw i64 %index761, 8       ; 2 uses
  %i.aun = icmp eq i64 %index.next766, %n.vec757
  br i1 %i.aun, label %middle.block767, label %vector.body760, !llvm.loop !53

middle.block767:                                  ; preds = %vector.body760
  %cmp.n768 = icmp eq i64 %i.aue, %n.vec757
  br i1 %cmp.n768, label %daxpy.exit.i357, label %.lr.ph.i.i353.preheader

.lr.ph.i.i353.preheader:                          ; preds = %bb.au, %middle.block767
  %indvars.iv.i.i354.ph = phi i64 [ 0, %bb.au ], [ %n.vec757, %middle.block767 ]
  br label %.lr.ph.i.i353

.lr.ph.i.i353:                                    ; preds = %.lr.ph.i.i353.preheader, %.lr.ph.i.i353
  %indvars.iv.i.i354 = phi i64 [ %indvars.iv.next.i.i355, %.lr.ph.i.i353 ], [ %indvars.iv.i.i354.ph, %.lr.ph.i.i353.preheader ] ; 3 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.auc, i64 %indvars.iv.i.i354 ; 2 uses
  %i.aup = load float, ptr %i.auo, align 4, !tbaa !11
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv.i.i354
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !11
  %i.aus = fmul float %i.atv, %i.aur
  %i.aut = fadd float %i.aup, %i.aus
  store float %i.aut, ptr %i.auo, align 4, !tbaa !11
  %indvars.iv.next.i.i355 = add nuw nsw i64 %indvars.iv.i.i354, 1 ; 2 uses
  %exitcond.not.i.i356 = icmp eq i64 %indvars.iv.next.i.i355, %i.aue
  br i1 %exitcond.not.i.i356, label %daxpy.exit.i357, label %.lr.ph.i.i353, !llvm.loop !54

daxpy.exit.i357:                                  ; preds = %.lr.ph.i.i353, %middle.block767, %bb.at
  %exitcond150.not.i358 = icmp eq i64 %indvars.iv.next147.i352, 99
  br i1 %exitcond150.not.i358, label %.lr.ph136.i360, label %bb.ar, !llvm.loop !21

.lr.ph136.i360:                                   ; preds = %daxpy.exit.i357, %daxpy.exit110.i369
  %indvars.iv151.i361 = phi i64 [ %indvars.iv.next152.i362, %daxpy.exit110.i369 ], [ 0, %daxpy.exit.i357 ] ; 4 uses
  %indvars.iv.next152.i362 = add nuw nsw i64 %indvars.iv151.i361, 1 ; 2 uses
  %i.auu = sub nuw nsw i64 99, %indvars.iv151.i361 ; 7 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %i.auu ; 2 uses
  %i.auw = load float, ptr %i.auv, align 4, !tbaa !11
  %i.aux = getelementptr [4 x i8], ptr @main.aa, i64 %i.auu
  %i.auy = mul nuw nsw i64 %i.auu, 800
  %i.auz = getelementptr i8, ptr %i.aux, i64 %i.auy
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !11
  %i.avb = fdiv float %i.auw, %i.ava              ; 4 uses
  store float %i.avb, ptr %i.auv, align 4, !tbaa !11
  %.idx385 = mul nuw nsw i64 %i.auu, 800
  %i.avc = getelementptr inbounds nuw i8, ptr @main.aa, i64 %.idx385 ; 2 uses
  %i.avd = icmp samesign ugt i64 %indvars.iv151.i361, 98
  %i.ave = fcmp oeq float %i.avb, 0.000000e+00
  %or.cond41.i104.i364 = or i1 %i.avd, %i.ave
  br i1 %or.cond41.i104.i364, label %daxpy.exit110.i369, label %.lr.ph.i106.i365.preheader

.lr.ph.i106.i365.preheader:                       ; preds = %.lr.ph136.i360
  %min.iters.check737 = icmp samesign ugt i64 %indvars.iv151.i361, 91
  br i1 %min.iters.check737, label %.lr.ph.i106.i365.preheader813, label %vector.ph738

vector.ph738:                                     ; preds = %.lr.ph.i106.i365.preheader
  %n.vec740 = and i64 %i.auu, 120                 ; 3 uses
  %broadcast.splatinsert741 = insertelement <4 x float> poison, float %i.avb, i64 0
  %broadcast.splat742 = shufflevector <4 x float> %broadcast.splatinsert741, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body743

vector.body743:                                   ; preds = %vector.body743, %vector.ph738
  %index744 = phi i64 [ 0, %vector.ph738 ], [ %index.next749, %vector.body743 ] ; 3 uses
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %index744 ; 3 uses
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 16 ; 2 uses
  %wide.load745 = load <4 x float>, ptr %i.avf, align 16, !tbaa !11
  %wide.load746 = load <4 x float>, ptr %i.avg, align 16, !tbaa !11
  %i.avh = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %index744 ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %wide.load747 = load <4 x float>, ptr %i.avh, align 16, !tbaa !11
  %wide.load748 = load <4 x float>, ptr %i.avi, align 16, !tbaa !11
  %i.avj = fmul <4 x float> %broadcast.splat742, %wide.load747
  %i.avk = fmul <4 x float> %broadcast.splat742, %wide.load748
  %i.avl = fsub <4 x float> %wide.load745, %i.avj
  %i.avm = fsub <4 x float> %wide.load746, %i.avk
  store <4 x float> %i.avl, ptr %i.avf, align 16, !tbaa !11
  store <4 x float> %i.avm, ptr %i.avg, align 16, !tbaa !11
  %index.next749 = add nuw i64 %index744, 8       ; 2 uses
  %i.avn = icmp eq i64 %index.next749, %n.vec740
  br i1 %i.avn, label %middle.block750, label %vector.body743, !llvm.loop !55

middle.block750:                                  ; preds = %vector.body743
  %cmp.n751 = icmp eq i64 %i.auu, %n.vec740
  br i1 %cmp.n751, label %daxpy.exit110.i369, label %.lr.ph.i106.i365.preheader813

.lr.ph.i106.i365.preheader813:                    ; preds = %.lr.ph.i106.i365.preheader, %middle.block750
  %indvars.iv.i107.i366.ph = phi i64 [ 0, %.lr.ph.i106.i365.preheader ], [ %n.vec740, %middle.block750 ]
  br label %.lr.ph.i106.i365

.lr.ph.i106.i365:                                 ; preds = %.lr.ph.i106.i365.preheader813, %.lr.ph.i106.i365
  %indvars.iv.i107.i366 = phi i64 [ %indvars.iv.next.i108.i367, %.lr.ph.i106.i365 ], [ %indvars.iv.i107.i366.ph, %.lr.ph.i106.i365.preheader813 ] ; 3 uses
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv.i107.i366 ; 2 uses
  %i.avp = load float, ptr %i.avo, align 4, !tbaa !11
  %i.avq = getelementptr inbounds nuw [4 x i8], ptr %i.avc, i64 %indvars.iv.i107.i366
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !11
  %i.avs = fmul float %i.avb, %i.avr
  %i.avt = fsub float %i.avp, %i.avs
  store float %i.avt, ptr %i.avo, align 4, !tbaa !11
  %indvars.iv.next.i108.i367 = add nuw nsw i64 %indvars.iv.i107.i366, 1 ; 2 uses
  %exitcond.not.i109.i368 = icmp eq i64 %indvars.iv.next.i108.i367, %i.auu
  br i1 %exitcond.not.i109.i368, label %daxpy.exit110.i369, label %.lr.ph.i106.i365, !llvm.loop !56

daxpy.exit110.i369:                               ; preds = %.lr.ph.i106.i365, %middle.block750, %.lr.ph136.i360
  %exitcond155.not.i370 = icmp eq i64 %indvars.iv.next152.i362, 100
  br i1 %exitcond155.not.i370, label %dgesl.exit372, label %.lr.ph136.i360, !llvm.loop !24

dgesl.exit372:                                    ; preds = %daxpy.exit110.i369
  %i.avu = add nuw nsw i32 %storemerge84436, 1    ; 2 uses
  %exitcond474.not = icmp eq i32 %i.avu, %i.atp
  br i1 %exitcond474.not, label %._crit_edge437, label %.preheader, !llvm.loop !57
end_hunk_2
begin_hunk_3_@main:bb.a
  store float %i.awm, ptr %i.awn, align 4, !tbaa !11
  %i.awo = fdiv float 2.000000e+00, %i.awm
  %i.awp = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 240), i64 %i.awd
  store float %i.awo, ptr %i.awp, align 4, !tbaa !11
  %i.awq = fdiv float %i.awh, 5.600000e-02
  %i.awr = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @atime, i64 300), i64 %i.awd
  store float %i.awq, ptr %i.awr, align 4, !tbaa !11
  %i.aws = load float, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awt = fadd float %i.aws, %i.awm              ; 2 uses
  store float %i.awt, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awu = add nsw i32 %i.awc, 1
  store i32 %i.awu, ptr @main.j, align 4, !tbaa !4
  %i.awv = icmp slt i32 %i.awc, 11
  br i1 %i.awv, label %bb.aj, label %bb.av, !llvm.loop !58

bb.av:                                            ; preds = %._crit_edge437
  %i.aww = fdiv float %i.awt, 5.000000e+00
  store float %i.aww, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 228), align 4, !tbaa !11
  %i.awx = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.awy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.awx, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #14 ; 0 uses
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @matgen(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store float 0.000000e+00, ptr %4, align 4, !tbaa !11
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader52.preheader, label %._crit_edge62.split

.preheader52.preheader:                           ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 7 uses
  br label %.preheader52

.preheader52:                                     ; preds = %.preheader52.preheader, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.preheader52.preheader ], [ %indvars.iv.next65, %._crit_edge ] ; 2 uses
  %.04455 = phi i32 [ 1325, %.preheader52.preheader ], [ %i.e, %._crit_edge ]
  %i.c = mul nsw i64 %indvars.iv64, %i.b
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.c
  br label %bb.b

bb.b:                                             ; preds = %.preheader52, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader52 ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.14553 = phi i32 [ %.04455, %.preheader52 ], [ %i.e, %bb.b ]
  %i.d = mul nuw nsw i32 %.14553, 3125
  %i.e = and i32 %i.d, 65535                      ; 3 uses
  %i.f = add nsw i32 %i.e, -32768
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, f0x38800000        ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store float %i.h, ptr %gep, align 4, !tbaa !11
  %i.i = load float, ptr %4, align 4, !tbaa !11   ; 2 uses
  %i.j = fcmp ogt float %i.h, %i.i
  %. = select i1 %i.j, float %i.h, float %i.i
  store float %., ptr %4, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count67
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.preheader.preheader, label %.preheader52, !llvm.loop !15

.preheader.preheader:                             ; preds = %._crit_edge
  %i.k = zext nneg i32 %2 to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.l, i1 false), !tbaa !11
  %i.m = sext i32 %1 to i64
  %wide.trip.count80 = zext nneg i32 %2 to i64    ; 4 uses
  %i.n = shl nuw nsw i64 %wide.trip.count67, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.n
  %i.o = add nuw nsw i64 %wide.trip.count67, 4611686018427387903
  %i.p = mul i64 %i.o, %i.b
  %i.q = add i64 %i.p, %wide.trip.count67
  %i.r = shl i64 %i.q, 2
  %scevgep84 = getelementptr i8, ptr %0, i64 %i.r
  %min.iters.check = icmp ult i32 %2, 8
  %bound0 = icmp ult ptr %3, %scevgep84
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %1, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count67, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter = and i64 %wide.trip.count80, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge60
  %indvars.iv77 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next78, %._crit_edge60 ] ; 2 uses
  %i.t = mul nsw i64 %indvars.iv77, %i.m
  %invariant.gep82 = getelementptr [4 x i8], ptr %0, i64 %i.t ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %wide.load85 = load <4 x float>, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %i.w = getelementptr [4 x i8], ptr %invariant.gep82, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load86 = load <4 x float>, ptr %i.w, align 4, !tbaa !11, !alias.scope !62
  %wide.load87 = load <4 x float>, ptr %i.x, align 4, !tbaa !11, !alias.scope !62
  %i.y = fadd <4 x float> %wide.load, %wide.load86
  %i.z = fadd <4 x float> %wide.load85, %wide.load87
  store <4 x float> %i.y, ptr %i.u, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  store <4 x float> %i.z, ptr %i.v, align 4, !tbaa !11, !alias.scope !59, !noalias !62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge60, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv72.prol = phi i64 [ %indvars.iv.next73.prol, %scalar.ph.prol ], [ %indvars.iv72.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72.prol ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %gep83.prol = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72.prol
  %i.ad = load float, ptr %gep83.prol, align 4, !tbaa !11
  %i.ae = fadd float %i.ac, %i.ad
  store float %i.ae, ptr %i.ab, align 4, !tbaa !11
  %indvars.iv.next73.prol = add nuw nsw i64 %indvars.iv72.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !65

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv72.unr = phi i64 [ %indvars.iv72.ph, %scalar.ph.preheader ], [ %indvars.iv.next73.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv72.ph, %wide.trip.count80
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge60, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.3, %scalar.ph ], [ %indvars.iv72.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv72 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !11
  %gep83 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv72
  %i.aj = load float, ptr %gep83, align 4, !tbaa !11
  %i.ak = fadd float %i.ai, %i.aj
  store float %i.ak, ptr %i.ah, align 4, !tbaa !11
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73 ; 2 uses
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %gep83.1 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73
  %i.an = load float, ptr %gep83.1, align 4, !tbaa !11
  %i.ao = fadd float %i.am, %i.an
  store float %i.ao, ptr %i.al, align 4, !tbaa !11
  %indvars.iv.next73.1 = add nuw nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.1 ; 2 uses
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !11
  %gep83.2 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.1
  %i.ar = load float, ptr %gep83.2, align 4, !tbaa !11
  %i.as = fadd float %i.aq, %i.ar
  store float %i.as, ptr %i.ap, align 4, !tbaa !11
  %indvars.iv.next73.2 = add nuw nsw i64 %indvars.iv72, 3 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next73.2 ; 2 uses
  %i.au = load float, ptr %i.at, align 4, !tbaa !11
  %gep83.3 = getelementptr [4 x i8], ptr %invariant.gep82, i64 %indvars.iv.next73.2
  %i.av = load float, ptr %gep83.3, align 4, !tbaa !11
  %i.aw = fadd float %i.au, %i.av
  store float %i.aw, ptr %i.at, align 4, !tbaa !11
  %indvars.iv.next73.3 = add nuw nsw i64 %indvars.iv72, 4 ; 2 uses
  %exitcond76.not.3 = icmp eq i64 %indvars.iv.next73.3, %wide.trip.count80
  br i1 %exitcond76.not.3, label %._crit_edge60, label %scalar.ph, !llvm.loop !67

._crit_edge60:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge62.split, label %.preheader, !llvm.loop !16

._crit_edge62.split:                              ; preds = %._crit_edge60, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgefa(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #6 {
bb.a:
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.a = add i32 %2, -1                           ; 5 uses
  %i.b = icmp sgt i32 %2, 1
  br i1 %i.b, label %.lr.ph103.preheader, label %.loopexit100

.lr.ph103.preheader:                              ; preds = %bb.a
  %i.c = sext i32 %1 to i64                       ; 4 uses
  %i.d = zext nneg i32 %2 to i64                  ; 3 uses
  %wide.trip.count110 = zext nneg i32 %i.a to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %i.e = shl nsw i64 %i.c, 2
  %i.f = add nsw i64 %i.e, 4
  %i.g = shl nuw nsw i64 %i.d, 2                  ; 3 uses
  %i.h = add nsw i64 %i.g, -4
  %i.i = mul i64 %i.h, %i.c
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  %scevgep117.a = getelementptr i8, ptr %i.j, i64 %i.g
  %scevgep120 = getelementptr i8, ptr %0, i64 %i.g
  %i.k = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.l = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %stride.check = icmp slt i32 %1, 0
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.loopexit
  %indvars.iv107 = phi i64 [ 0, %.lr.ph103.preheader ], [ %indvars.iv.next108, %.loopexit ] ; 14 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph103.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.m = sub i64 %i.k, %indvars.iv107             ; 3 uses
  %i.n = add nuw i64 %indvars.iv107, 1
  %i.o = mul i64 %i.f, %i.n
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = shl nuw nsw i64 %indvars.iv107, 2
  %i.q = getelementptr i8, ptr %0, i64 %i.p
  %scevgep118 = getelementptr i8, ptr %i.q, i64 4
  %i.r = trunc i64 %indvars.iv107 to i32
  %i.s = mul i32 %1, %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 2                      ; 2 uses
  %scevgep119.a = getelementptr i8, ptr %scevgep118, i64 %i.u
  %scevgep121 = getelementptr i8, ptr %scevgep120, i64 %i.u
  %indvars109 = trunc i64 %indvars.iv107 to i32   ; 3 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 3 uses
  %5 = sub nsw i64 %i.d, %indvars.iv107
  %i.v = mul nsw i64 %indvars.iv107, %i.c
  %i.w = mul nsw i32 %1, %indvars109
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr [4 x i8], ptr %0, i64 %indvars.iv107
  %i.z = getelementptr [4 x i8], ptr %i.y, i64 %i.x ; 7 uses
  %i.aa = icmp eq i64 %5, 1
  br i1 %i.aa, label %idamax.exit, label %6

6:                                                ; preds = %.lr.ph103
  %7 = load float, ptr %i.z, align 4, !tbaa !11
  %8 = tail call float @llvm.fabs.f32(float %7)   ; 2 uses
  %xtraiter = and i64 %i.m, 1
  %9 = icmp eq i64 %i.l, %indvars.iv107
  br i1 %9, label %.lr.ph48.i.epil.preheader, label %.new

.new:                                             ; preds = %6
  %unroll_iter = and i64 %i.m, -2
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i, %.new
  %indvars.iv52.i = phi i64 [ 1, %.new ], [ %indvars.iv.next53.i.1, %.lr.ph48.i ] ; 4 uses
  %.247.i = phi i32 [ 0, %.new ], [ %.3.i.1, %.lr.ph48.i ]
  %.23345.i = phi float [ %8, %.new ], [ %.334.i.1, %.lr.ph48.i ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.lr.ph48.i ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !11
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.23345.i         ; 2 uses
  %.334.i = select i1 %i.ae, float %i.ad, float %.23345.i ; 2 uses
  %i.af = trunc nuw nsw i64 %indvars.iv52.i to i32
  %.3.i = select i1 %i.ae, i32 %i.af, i32 %.247.i
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next53.i
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !11
  %i.ai = tail call float @llvm.fabs.f32(float %i.ah) ; 2 uses
  %i.aj = fcmp ogt float %i.ai, %.334.i           ; 2 uses
  %.334.i.1 = select i1 %i.aj, float %i.ai, float %.334.i ; 2 uses
  %i.ak = trunc nuw nsw i64 %indvars.iv.next53.i to i32
  %.3.i.1 = select i1 %i.aj, i32 %i.ak, i32 %.3.i ; 3 uses
  %indvars.iv.next53.i.1 = add nuw nsw i64 %indvars.iv52.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.unr-lcssa, label %.lr.ph48.i, !llvm.loop !27

idamax.exit.loopexit.unr-lcssa:                   ; preds = %.lr.ph48.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit, label %.lr.ph48.i.epil.preheader

.lr.ph48.i.epil.preheader:                        ; preds = %idamax.exit.loopexit.unr-lcssa, %6
  %indvars.iv52.i.epil.init = phi i64 [ 1, %6 ], [ %indvars.iv.next53.i.1, %idamax.exit.loopexit.unr-lcssa ] ; 2 uses
  %.247.i.epil.init = phi i32 [ 0, %6 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %.23345.i.epil.init = phi float [ %8, %6 ], [ %.334.i.1, %idamax.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv52.i.epil.init
  %i.am = load float, ptr %i.al, align 4, !tbaa !11
  %i.an = tail call float @llvm.fabs.f32(float %i.am)
  %i.ao = fcmp ogt float %i.an, %.23345.i.epil.init
  %i.ap = trunc nuw nsw i64 %indvars.iv52.i.epil.init to i32
  %.3.i.epil = select i1 %i.ao, i32 %i.ap, i32 %.247.i.epil.init
  br label %idamax.exit

idamax.exit:                                      ; preds = %.lr.ph48.i.epil.preheader, %idamax.exit.loopexit.unr-lcssa, %.lr.ph103
  %.035.i = phi i32 [ 0, %.lr.ph103 ], [ %.3.i.1, %idamax.exit.loopexit.unr-lcssa ], [ %.3.i.epil, %.lr.ph48.i.epil.preheader ] ; 2 uses
  %i.aq = add nsw i32 %.035.i, %indvars109        ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv107
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !4
  %i.as = sext i32 %i.aq to i64                   ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %0, i64 %i.v
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !11 ; 3 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.b, label %bb.g

bb.b:                                             ; preds = %idamax.exit
  %.not = icmp eq i32 %.035.i, 0                  ; 2 uses
  %.pre = load float, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float %.pre, ptr %i.au, align 4, !tbaa !11
  store float %i.av, ptr %i.z, align 4, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi float [ %i.av, %bb.c ], [ %.pre, %bb.b ]
  %i.ay = fdiv float -1.000000e+00, %i.ax         ; 2 uses
  %i.az = sub nsw i64 %i.d, %indvars.iv.next108   ; 8 uses
  %i.ba = getelementptr i8, ptr %i.z, i64 4       ; 6 uses
  %min.iters.check126 = icmp ult i64 %i.az, 8
  br i1 %min.iters.check126, label %.lr.ph25.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.d
  %n.vec129 = and i64 %i.az, -8                   ; 3 uses
  %broadcast.splatinsert130 = insertelement <4 x float> poison, float %i.ay, i64 0
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next136, %vector.body132 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index133 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load134 = load <4 x float>, ptr %i.bb, align 4, !tbaa !11
  %wide.load135 = load <4 x float>, ptr %i.bc, align 4, !tbaa !11
  %i.bd = fmul <4 x float> %broadcast.splat131, %wide.load134
  %i.be = fmul <4 x float> %broadcast.splat131, %wide.load135
  store <4 x float> %i.bd, ptr %i.bb, align 4, !tbaa !11
  store <4 x float> %i.be, ptr %i.bc, align 4, !tbaa !11
  %index.next136 = add nuw i64 %index133, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.bf, label %middle.block137, label %vector.body132, !llvm.loop !68

middle.block137:                                  ; preds = %vector.body132
  %cmp.n138 = icmp eq i64 %i.az, %n.vec129
  br i1 %cmp.n138, label %.lr.ph, label %.lr.ph25.i.preheader

.lr.ph25.i.preheader:                             ; preds = %bb.d, %middle.block137
  %indvars.iv28.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec129, %middle.block137 ]
  br label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.lr.ph25.i.preheader, %.lr.ph25.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph25.i ], [ %indvars.iv28.i.ph, %.lr.ph25.i.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv28.i ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !11
  %i.bi = fmul float %i.ay, %i.bh
  store float %i.bi, ptr %i.bg, align 4, !tbaa !11
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.az
  br i1 %exitcond.not.i, label %.lr.ph, label %.lr.ph25.i, !llvm.loop !69

.lr.ph:                                           ; preds = %.lr.ph25.i, %middle.block137
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.as
  %min.iters.check = icmp ult i64 %i.az, 8
  %bound0 = icmp ult ptr %scevgep, %scevgep121
  %bound1 = icmp ult ptr %scevgep119.a, %scevgep117.a
  %found.conflict = and i1 %bound0, %bound1
  %i.bj = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.az, -8                      ; 3 uses
  %cmp.n = icmp eq i64 %i.az, %n.vec
  %i.bk = sub i64 %i.k, %indvars.iv107
  %xtraiter143 = and i64 %i.bk, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %daxpy.exit
  %indvars.iv104 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next105, %daxpy.exit ] ; 2 uses
  %i.bl = mul nsw i64 %indvars.iv104, %i.c        ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bl ; 2 uses
  %i.bm = load float, ptr %gep, align 4, !tbaa !11 ; 6 uses
  %.pre112 = add nsw i64 %i.bl, %indvars.iv107    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre112 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !11
  store float %i.bo, ptr %gep, align 4, !tbaa !11
  store float %i.bm, ptr %i.bn, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.f
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %.pre112
  %i.bq = getelementptr i8, ptr %i.bp, i64 4      ; 4 uses
  %i.br = fcmp oeq float %i.bm, 0.000000e+00
  br i1 %i.br, label %daxpy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.bj
  br i1 %brmerge, label %.lr.ph.i.preheader140, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bs, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %wide.load122.a = load <4 x float>, ptr %i.bt, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load123 = load <4 x float>, ptr %i.bu, align 4, !tbaa !11, !alias.scope !73
  %wide.load124 = load <4 x float>, ptr %i.bv, align 4, !tbaa !11, !alias.scope !73
  %i.bw = fmul <4 x float> %broadcast.splat, %wide.load123
  %i.bx = fmul <4 x float> %broadcast.splat, %wide.load124
  %i.by = fadd <4 x float> %wide.load, %i.bw
  %i.bz = fadd <4 x float> %wide.load122.a, %i.bx
  store <4 x float> %i.by, ptr %i.bs, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  store <4 x float> %i.bz, ptr %i.bt, align 4, !tbaa !11, !alias.scope !70, !noalias !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %daxpy.exit, label %.lr.ph.i.preheader140

.lr.ph.i.preheader140:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.cb = add i64 %indvars.iv107, %indvars.iv.i.ph
  br i1 %lcmp.mod144.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader140
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.ph ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !11
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i.ph
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = fmul float %i.bm, %i.cf
  %i.ch = fadd float %i.cd, %i.cg
  store float %i.ch, ptr %i.cc, align 4, !tbaa !11
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader140
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader140 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ci = icmp eq i64 %i.l, %i.cb
  br i1 %i.ci, label %daxpy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !11
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !11
  %i.cn = fmul float %i.bm, %i.cm
  %i.co = fadd float %i.ck, %i.cn
  store float %i.co, ptr %i.cj, align 4, !tbaa !11
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !11
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next.i
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !11
  %i.ct = fmul float %i.bm, %i.cs
  %i.cu = fadd float %i.cq, %i.ct
  store float %i.cu, ptr %i.cp, align 4, !tbaa !11
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i99.1 = icmp eq i64 %indvars.iv.next.i.1, %i.az
  br i1 %exitcond.not.i99.1, label %daxpy.exit, label %.lr.ph.i, !llvm.loop !76

daxpy.exit:                                       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %._crit_edge
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !32

bb.g:                                             ; preds = %idamax.exit
  store i32 %indvars109, ptr %4, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %daxpy.exit, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %.loopexit100, label %.lr.ph103, !llvm.loop !33

.loopexit100:                                     ; preds = %.loopexit, %bb.a
  %i.cv = sext i32 %i.a to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cv
  store i32 %i.a, ptr %i.cw, align 4, !tbaa !4
  %i.cx = add i32 %1, 1
  %i.cy = mul i32 %i.a, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cz
  %i.db = load float, ptr %i.da, align 4, !tbaa !11
  %i.dc = fcmp oeq float %i.db, 0.000000e+00
  br i1 %i.dc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit100
  store i32 %i.a, ptr %4, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit100
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dgesl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = icmp eq i32 %5, 0
  br i1 %i.b, label %bb.b, label %.preheader127

.preheader127:                                    ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader127
  %i.d = sext i32 %1 to i64
end_hunk_3
