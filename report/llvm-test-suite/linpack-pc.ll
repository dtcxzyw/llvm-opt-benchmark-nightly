Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/linpack-pc?download=true
inline.NumInlined: 42
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 50
begin_hunk_0_@main:bb.a
  %.promoted1281 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1284 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1287 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1290 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1293 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1296 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1299 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1302 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1305 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1308 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1311 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1314 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1317 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1320 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1323 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1326 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1328 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1330 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1332 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i152

bb.o:                                             ; preds = %bb.o, %.preheader52.i138
  %indvars.iv.i142 = phi i64 [ 0, %.preheader52.i138 ], [ %indvars.iv.next.i146.1, %bb.o ] ; 3 uses
  %.14553.i143 = phi i32 [ %.04455.i140, %.preheader52.i138 ], [ %i.uk, %bb.o ] ; 2 uses
  %i.ue = mul nuw nsw i32 %.14553.i143, 3125
  %i.uf = and i32 %i.ue, 65535
  %i.ug = add nsw i32 %i.uf, -32768
  %i.uh = sitofp i32 %i.ug to float
  %i.ui = fmul nnan float %i.uh, f0x38800000
  %gep.i144 = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  store float %i.ui, ptr %gep.i144, align 4, !tbaa !11
  %i.uj = mul nsw i32 %.14553.i143, 761
  %i.uk = and i32 %i.uj, 65535                    ; 3 uses
  %i.ul = add nsw i32 %i.uk, -32768
  %i.um = sitofp i32 %i.ul to float
  %i.un = fmul nnan float %i.um, f0x38800000
  %i.uo = getelementptr [4 x i8], ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %gep.i144.1 = getelementptr i8, ptr %i.uo, i64 4
  store float %i.un, ptr %gep.i144.1, align 4, !tbaa !11
  %indvars.iv.next.i146.1 = add nuw nsw i64 %indvars.iv.i142, 2 ; 2 uses
  %exitcond.not.i147.1 = icmp eq i64 %indvars.iv.next.i146.1, 100
  br i1 %exitcond.not.i147.1, label %._crit_edge.i148, label %bb.o, !llvm.loop !13

._crit_edge.i148:                                 ; preds = %bb.o
  %indvars.iv.next65.i149 = add nuw nsw i64 %indvars.iv64.i139, 1 ; 2 uses
  %exitcond68.not.i150 = icmp eq i64 %indvars.iv.next65.i149, 100
  br i1 %exitcond68.not.i150, label %.preheader51.i151, label %.preheader52.i138, !llvm.loop !15

.preheader.i152:                                  ; preds = %.preheader.i152, %.preheader51.i151
  %i.up = phi float [ %.promoted1332, %.preheader51.i151 ], [ %i.ww, %.preheader.i152 ]
  %i.uq = phi float [ %.promoted1330, %.preheader51.i151 ], [ %i.wu, %.preheader.i152 ]
  %i.ur = phi float [ %.promoted1328, %.preheader51.i151 ], [ %i.ws, %.preheader.i152 ]
  %i.us = phi float [ %.promoted1326, %.preheader51.i151 ], [ %i.wq, %.preheader.i152 ]
  %wide.load638.111324 = phi <4 x float> [ %.promoted1323, %.preheader51.i151 ], [ %i.wo, %.preheader.i152 ]
  %wide.load637.111321 = phi <4 x float> [ %.promoted1320, %.preheader51.i151 ], [ %i.wn, %.preheader.i152 ]
  %wide.load638.101318 = phi <4 x float> [ %.promoted1317, %.preheader51.i151 ], [ %i.wk, %.preheader.i152 ]
  %wide.load637.101315 = phi <4 x float> [ %.promoted1314, %.preheader51.i151 ], [ %i.wj, %.preheader.i152 ]
  %wide.load638.91312 = phi <4 x float> [ %.promoted1311, %.preheader51.i151 ], [ %i.wg, %.preheader.i152 ]
  %wide.load637.91309 = phi <4 x float> [ %.promoted1308, %.preheader51.i151 ], [ %i.wf, %.preheader.i152 ]
  %wide.load638.81306 = phi <4 x float> [ %.promoted1305, %.preheader51.i151 ], [ %i.wc, %.preheader.i152 ]
  %wide.load637.81303 = phi <4 x float> [ %.promoted1302, %.preheader51.i151 ], [ %i.wb, %.preheader.i152 ]
  %wide.load638.71300 = phi <4 x float> [ %.promoted1299, %.preheader51.i151 ], [ %i.vy, %.preheader.i152 ]
  %wide.load637.71297 = phi <4 x float> [ %.promoted1296, %.preheader51.i151 ], [ %i.vx, %.preheader.i152 ]
  %wide.load638.61294 = phi <4 x float> [ %.promoted1293, %.preheader51.i151 ], [ %i.vu, %.preheader.i152 ]
  %wide.load637.61291 = phi <4 x float> [ %.promoted1290, %.preheader51.i151 ], [ %i.vt, %.preheader.i152 ]
  %wide.load638.51288 = phi <4 x float> [ %.promoted1287, %.preheader51.i151 ], [ %i.vq, %.preheader.i152 ]
  %wide.load637.51285 = phi <4 x float> [ %.promoted1284, %.preheader51.i151 ], [ %i.vp, %.preheader.i152 ]
  %wide.load638.41282 = phi <4 x float> [ %.promoted1281, %.preheader51.i151 ], [ %i.vm, %.preheader.i152 ]
  %wide.load637.41279 = phi <4 x float> [ %.promoted1278, %.preheader51.i151 ], [ %i.vl, %.preheader.i152 ]
  %wide.load638.31276 = phi <4 x float> [ %.promoted1275, %.preheader51.i151 ], [ %i.vi, %.preheader.i152 ]
  %wide.load637.31273 = phi <4 x float> [ %.promoted1272, %.preheader51.i151 ], [ %i.vh, %.preheader.i152 ]
  %wide.load638.21270 = phi <4 x float> [ %.promoted1269, %.preheader51.i151 ], [ %i.ve, %.preheader.i152 ]
  %wide.load637.21267 = phi <4 x float> [ %.promoted1266, %.preheader51.i151 ], [ %i.vd, %.preheader.i152 ]
  %wide.load638.11264 = phi <4 x float> [ %.promoted1263, %.preheader51.i151 ], [ %i.va, %.preheader.i152 ]
  %wide.load637.11261 = phi <4 x float> [ %.promoted1260, %.preheader51.i151 ], [ %i.uz, %.preheader.i152 ]
  %i.ut = phi <4 x float> [ %.promoted1258, %.preheader51.i151 ], [ %i.uw, %.preheader.i152 ]
  %wide.load6371256 = phi <4 x float> [ %main.b.promoted1255, %.preheader51.i151 ], [ %i.uv, %.preheader.i152 ]
  %indvars.iv77.i153 = phi i64 [ 0, %.preheader51.i151 ], [ %indvars.iv.next78.i160, %.preheader.i152 ] ; 2 uses
  %invariant.gep82.i154.idx = mul nuw nsw i64 %indvars.iv77.i153, 804
  %invariant.gep82.i154 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i154.idx ; 28 uses
  %i.uu = getelementptr i8, ptr %invariant.gep82.i154, i64 16
  %wide.load639 = load <4 x float>, ptr %invariant.gep82.i154, align 4, !tbaa !11
  %wide.load640 = load <4 x float>, ptr %i.uu, align 4, !tbaa !11
  %i.uv = fadd <4 x float> %wide.load6371256, %wide.load639 ; 2 uses
  %i.uw = fadd <4 x float> %i.ut, %wide.load640   ; 2 uses
  %i.ux = getelementptr i8, ptr %invariant.gep82.i154, i64 32
  %i.uy = getelementptr i8, ptr %invariant.gep82.i154, i64 48
  %wide.load639.1 = load <4 x float>, ptr %i.ux, align 4, !tbaa !11
  %wide.load640.1 = load <4 x float>, ptr %i.uy, align 4, !tbaa !11
  %i.uz = fadd <4 x float> %wide.load637.11261, %wide.load639.1 ; 2 uses
  %i.va = fadd <4 x float> %wide.load638.11264, %wide.load640.1 ; 2 uses
  %i.vb = getelementptr i8, ptr %invariant.gep82.i154, i64 64
  %i.vc = getelementptr i8, ptr %invariant.gep82.i154, i64 80
  %wide.load639.2 = load <4 x float>, ptr %i.vb, align 4, !tbaa !11
  %wide.load640.2 = load <4 x float>, ptr %i.vc, align 4, !tbaa !11
  %i.vd = fadd <4 x float> %wide.load637.21267, %wide.load639.2 ; 2 uses
  %i.ve = fadd <4 x float> %wide.load638.21270, %wide.load640.2 ; 2 uses
  %i.vf = getelementptr i8, ptr %invariant.gep82.i154, i64 96
  %i.vg = getelementptr i8, ptr %invariant.gep82.i154, i64 112
  %wide.load639.3 = load <4 x float>, ptr %i.vf, align 4, !tbaa !11
  %wide.load640.3 = load <4 x float>, ptr %i.vg, align 4, !tbaa !11
  %i.vh = fadd <4 x float> %wide.load637.31273, %wide.load639.3 ; 2 uses
  %i.vi = fadd <4 x float> %wide.load638.31276, %wide.load640.3 ; 2 uses
  %i.vj = getelementptr i8, ptr %invariant.gep82.i154, i64 128
  %i.vk = getelementptr i8, ptr %invariant.gep82.i154, i64 144
  %wide.load639.4 = load <4 x float>, ptr %i.vj, align 4, !tbaa !11
  %wide.load640.4 = load <4 x float>, ptr %i.vk, align 4, !tbaa !11
  %i.vl = fadd <4 x float> %wide.load637.41279, %wide.load639.4 ; 2 uses
  %i.vm = fadd <4 x float> %wide.load638.41282, %wide.load640.4 ; 2 uses
  %i.vn = getelementptr i8, ptr %invariant.gep82.i154, i64 160
  %i.vo = getelementptr i8, ptr %invariant.gep82.i154, i64 176
  %wide.load639.5 = load <4 x float>, ptr %i.vn, align 4, !tbaa !11
  %wide.load640.5 = load <4 x float>, ptr %i.vo, align 4, !tbaa !11
  %i.vp = fadd <4 x float> %wide.load637.51285, %wide.load639.5 ; 2 uses
  %i.vq = fadd <4 x float> %wide.load638.51288, %wide.load640.5 ; 2 uses
  %i.vr = getelementptr i8, ptr %invariant.gep82.i154, i64 192
  %i.vs = getelementptr i8, ptr %invariant.gep82.i154, i64 208
  %wide.load639.6 = load <4 x float>, ptr %i.vr, align 4, !tbaa !11
  %wide.load640.6 = load <4 x float>, ptr %i.vs, align 4, !tbaa !11
  %i.vt = fadd <4 x float> %wide.load637.61291, %wide.load639.6 ; 2 uses
  %i.vu = fadd <4 x float> %wide.load638.61294, %wide.load640.6 ; 2 uses
  %i.vv = getelementptr i8, ptr %invariant.gep82.i154, i64 224
  %i.vw = getelementptr i8, ptr %invariant.gep82.i154, i64 240
  %wide.load639.7 = load <4 x float>, ptr %i.vv, align 4, !tbaa !11
  %wide.load640.7 = load <4 x float>, ptr %i.vw, align 4, !tbaa !11
  %i.vx = fadd <4 x float> %wide.load637.71297, %wide.load639.7 ; 2 uses
  %i.vy = fadd <4 x float> %wide.load638.71300, %wide.load640.7 ; 2 uses
  %i.vz = getelementptr i8, ptr %invariant.gep82.i154, i64 256
  %i.wa = getelementptr i8, ptr %invariant.gep82.i154, i64 272
  %wide.load639.8 = load <4 x float>, ptr %i.vz, align 4, !tbaa !11
  %wide.load640.8 = load <4 x float>, ptr %i.wa, align 4, !tbaa !11
  %i.wb = fadd <4 x float> %wide.load637.81303, %wide.load639.8 ; 2 uses
  %i.wc = fadd <4 x float> %wide.load638.81306, %wide.load640.8 ; 2 uses
  %i.wd = getelementptr i8, ptr %invariant.gep82.i154, i64 288
  %i.we = getelementptr i8, ptr %invariant.gep82.i154, i64 304
  %wide.load639.9 = load <4 x float>, ptr %i.wd, align 4, !tbaa !11
  %wide.load640.9 = load <4 x float>, ptr %i.we, align 4, !tbaa !11
  %i.wf = fadd <4 x float> %wide.load637.91309, %wide.load639.9 ; 2 uses
  %i.wg = fadd <4 x float> %wide.load638.91312, %wide.load640.9 ; 2 uses
  %i.wh = getelementptr i8, ptr %invariant.gep82.i154, i64 320
  %i.wi = getelementptr i8, ptr %invariant.gep82.i154, i64 336
  %wide.load639.10 = load <4 x float>, ptr %i.wh, align 4, !tbaa !11
  %wide.load640.10 = load <4 x float>, ptr %i.wi, align 4, !tbaa !11
  %i.wj = fadd <4 x float> %wide.load637.101315, %wide.load639.10 ; 2 uses
  %i.wk = fadd <4 x float> %wide.load638.101318, %wide.load640.10 ; 2 uses
  %i.wl = getelementptr i8, ptr %invariant.gep82.i154, i64 352
  %i.wm = getelementptr i8, ptr %invariant.gep82.i154, i64 368
  %wide.load639.11 = load <4 x float>, ptr %i.wl, align 4, !tbaa !11
  %wide.load640.11 = load <4 x float>, ptr %i.wm, align 4, !tbaa !11
  %i.wn = fadd <4 x float> %wide.load637.111321, %wide.load639.11 ; 2 uses
  %i.wo = fadd <4 x float> %wide.load638.111324, %wide.load640.11 ; 2 uses
  %gep83.i156 = getelementptr i8, ptr %invariant.gep82.i154, i64 384
  %i.wp = load float, ptr %gep83.i156, align 4, !tbaa !11
  %i.wq = fadd float %i.us, %i.wp                 ; 2 uses
  %gep83.i156.1 = getelementptr i8, ptr %invariant.gep82.i154, i64 388
  %i.wr = load float, ptr %gep83.i156.1, align 4, !tbaa !11
  %i.ws = fadd float %i.ur, %i.wr                 ; 2 uses
  %gep83.i156.2 = getelementptr i8, ptr %invariant.gep82.i154, i64 392
  %i.wt = load float, ptr %gep83.i156.2, align 4, !tbaa !11
  %i.wu = fadd float %i.uq, %i.wt                 ; 2 uses
  %gep83.i156.3 = getelementptr i8, ptr %invariant.gep82.i154, i64 396
  %i.wv = load float, ptr %gep83.i156.3, align 4, !tbaa !11
  %i.ww = fadd float %i.up, %i.wv                 ; 2 uses
  %indvars.iv.next78.i160 = add nuw nsw i64 %indvars.iv77.i153, 1 ; 2 uses
  %exitcond81.not.i161 = icmp eq i64 %indvars.iv.next78.i160, 100
  br i1 %exitcond81.not.i161, label %.lr.ph103.i.preheader, label %.preheader.i152, !llvm.loop !16

.lr.ph103.i.preheader:                            ; preds = %.preheader.i152
  store <4 x float> %i.uv, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.uw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.uz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.va, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.vd, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.ve, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.vh, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.vi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.vl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.vm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.vp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.vq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.vt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.vu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.vx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.vy, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.wb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.wc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.wf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.wg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.wj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.wk, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.wn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.wo, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.wq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.ws, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.wu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.ww, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i

.lr.ph103.i:                                      ; preds = %.lr.ph103.i.preheader, %.loopexit.i
  %i.wx = phi i32 [ %i.zj, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader ]
  %indvars.iv107.i = phi i64 [ %indvars.iv.next108.i, %.loopexit.i ], [ 0, %.lr.ph103.i.preheader ] ; 11 uses
  %indvars.iv.i163 = phi i64 [ %indvars.iv.next.i164, %.loopexit.i ], [ 1, %.lr.ph103.i.preheader ] ; 2 uses
  %i.wy = sub nsw i64 99, %indvars.iv107.i        ; 3 uses
  %i.wz = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i
  %i.xa = mul nuw nsw i64 %indvars.iv107.i, 804   ; 2 uses
  %i.xb = getelementptr i8, ptr %i.wz, i64 %i.xa  ; 6 uses
  %i.xc = load float, ptr %i.xb, align 4, !tbaa !11 ; 3 uses
  %i.xd = tail call float @llvm.fabs.f32(float %i.xc) ; 2 uses
  %xtraiter = and i64 %i.wy, 1
  %i.xe = icmp eq i64 %indvars.iv107.i, 98
  br i1 %i.xe, label %.lr.ph48.i.i.epil.preheader, label %.lr.ph103.i.new

.lr.ph103.i.new:                                  ; preds = %.lr.ph103.i
  %unroll_iter = and i64 %i.wy, -2
  br label %.lr.ph48.i.i

.lr.ph48.i.i:                                     ; preds = %.lr.ph48.i.i, %.lr.ph103.i.new
  %indvars.iv52.i.i = phi i64 [ 1, %.lr.ph103.i.new ], [ %indvars.iv.next53.i.i.1, %.lr.ph48.i.i ] ; 4 uses
  %.247.i.i = phi i32 [ 0, %.lr.ph103.i.new ], [ %.3.i.i.1, %.lr.ph48.i.i ]
  %.23345.i.i = phi float [ %i.xd, %.lr.ph103.i.new ], [ %.334.i.i.1, %.lr.ph48.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph103.i.new ], [ %niter.next.1, %.lr.ph48.i.i ]
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %indvars.iv52.i.i
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !11
  %i.xh = tail call float @llvm.fabs.f32(float %i.xg) ; 2 uses
  %i.xi = fcmp ogt float %i.xh, %.23345.i.i       ; 2 uses
  %.334.i.i = select i1 %i.xi, float %i.xh, float %.23345.i.i ; 2 uses
  %i.xj = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %.3.i.i = select i1 %i.xi, i32 %i.xj, i32 %.247.i.i
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %indvars.iv.next53.i.i
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !11
  %i.xm = tail call float @llvm.fabs.f32(float %i.xl) ; 2 uses
  %i.xn = fcmp ogt float %i.xm, %.334.i.i         ; 2 uses
  %.334.i.i.1 = select i1 %i.xn, float %i.xm, float %.334.i.i ; 2 uses
  %i.xo = trunc nuw nsw i64 %indvars.iv.next53.i.i to i32
  %.3.i.i.1 = select i1 %i.xn, i32 %i.xo, i32 %.3.i.i ; 3 uses
  %indvars.iv.next53.i.i.1 = add nuw nsw i64 %indvars.iv52.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %idamax.exit.loopexit.i.unr-lcssa, label %.lr.ph48.i.i, !llvm.loop !27

idamax.exit.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph48.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %idamax.exit.loopexit.i, label %.lr.ph48.i.i.epil.preheader

.lr.ph48.i.i.epil.preheader:                      ; preds = %idamax.exit.loopexit.i.unr-lcssa, %.lr.ph103.i
  %indvars.iv52.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i ], [ %indvars.iv.next53.i.i.1, %idamax.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %.247.i.i.epil.init = phi i32 [ 0, %.lr.ph103.i ], [ %.3.i.i.1, %idamax.exit.loopexit.i.unr-lcssa ]
  %.23345.i.i.epil.init = phi float [ %i.xd, %.lr.ph103.i ], [ %.334.i.i.1, %idamax.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod835 = trunc i64 %i.wy to i1
  tail call void @llvm.assume(i1 %lcmp.mod835)
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.xb, i64 %indvars.iv52.i.i.epil.init
  %i.xq = load float, ptr %i.xp, align 4, !tbaa !11
  %i.xr = tail call float @llvm.fabs.f32(float %i.xq)
  %i.xs = fcmp ogt float %i.xr, %.23345.i.i.epil.init
  %i.xt = trunc nuw nsw i64 %indvars.iv52.i.i.epil.init to i32
  %.3.i.i.epil = select i1 %i.xs, i32 %i.xt, i32 %.247.i.i.epil.init
  br label %idamax.exit.loopexit.i

idamax.exit.loopexit.i:                           ; preds = %idamax.exit.loopexit.i.unr-lcssa, %.lr.ph48.i.i.epil.preheader
  %.3.i.i.lcssa = phi i32 [ %.3.i.i.1, %idamax.exit.loopexit.i.unr-lcssa ], [ %.3.i.i.epil, %.lr.ph48.i.i.epil.preheader ] ; 2 uses
  %indvars109.i = trunc i64 %indvars.iv107.i to i32 ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %i.xu = add nsw i32 %.3.i.i.lcssa, %indvars109.i ; 2 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i
  store i32 %i.xu, ptr %i.xv, align 4, !tbaa !4
  %i.xw = sext i32 %i.xu to i64                   ; 2 uses
  %i.xx = getelementptr i8, ptr @main.a, i64 %i.xa
  %i.xy = getelementptr [4 x i8], ptr %i.xx, i64 %i.xw ; 2 uses
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !11 ; 3 uses
  %i.ya = fcmp une float %i.xz, 0.000000e+00
  br i1 %i.ya, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %idamax.exit.loopexit.i
  %.not.i = icmp eq i32 %.3.i.i.lcssa, 0          ; 2 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store float %i.xc, ptr %i.xy, align 4, !tbaa !11
  store float %i.xz, ptr %i.xb, align 4, !tbaa !11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.yb = phi float [ %i.xz, %bb.q ], [ %i.xc, %bb.p ]
  %i.yc = fdiv float -1.000000e+00, %i.yb         ; 2 uses
  %i.yd = sub nuw nsw i64 99, %indvars.iv107.i    ; 6 uses
  %i.ye = getelementptr i8, ptr %i.xb, i64 4      ; 4 uses
  %min.iters.check620 = icmp samesign ugt i64 %indvars.iv107.i, 91
  br i1 %min.iters.check620, label %.lr.ph25.i.i.preheader, label %vector.ph621

vector.ph621:                                     ; preds = %bb.r
  %n.vec622 = and i64 %i.yd, 120                  ; 3 uses
  %broadcast.splatinsert623 = insertelement <4 x float> poison, float %i.yc, i64 0
  %broadcast.splat624 = shufflevector <4 x float> %broadcast.splatinsert623, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body625

vector.body625:                                   ; preds = %vector.body625, %vector.ph621
  %index626 = phi i64 [ 0, %vector.ph621 ], [ %index.next629, %vector.body625 ] ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %index626 ; 3 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16 ; 2 uses
  %wide.load627 = load <4 x float>, ptr %i.yf, align 4, !tbaa !11
  %wide.load628 = load <4 x float>, ptr %i.yg, align 4, !tbaa !11
  %i.yh = fmul <4 x float> %broadcast.splat624, %wide.load627
  %i.yi = fmul <4 x float> %broadcast.splat624, %wide.load628
  store <4 x float> %i.yh, ptr %i.yf, align 4, !tbaa !11
  store <4 x float> %i.yi, ptr %i.yg, align 4, !tbaa !11
  %index.next629 = add nuw i64 %index626, 8       ; 2 uses
  %i.yj = icmp eq i64 %index.next629, %n.vec622
  br i1 %i.yj, label %middle.block630, label %vector.body625, !llvm.loop !28

middle.block630:                                  ; preds = %vector.body625
  %cmp.n631 = icmp eq i64 %i.yd, %n.vec622
  br i1 %cmp.n631, label %.lr.ph.i, label %.lr.ph25.i.i.preheader

.lr.ph25.i.i.preheader:                           ; preds = %bb.r, %middle.block630
  %indvars.iv28.i.i.ph = phi i64 [ 0, %bb.r ], [ %n.vec622, %middle.block630 ]
  br label %.lr.ph25.i.i

.lr.ph25.i.i:                                     ; preds = %.lr.ph25.i.i.preheader, %.lr.ph25.i.i
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %.lr.ph25.i.i ], [ %indvars.iv28.i.i.ph, %.lr.ph25.i.i.preheader ] ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv28.i.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !11
  %i.ym = fmul float %i.yc, %i.yl
  store float %i.ym, ptr %i.yk, align 4, !tbaa !11
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1 ; 2 uses
  %exitcond.not.i.i165 = icmp eq i64 %indvars.iv.next29.i.i, %i.yd
  br i1 %exitcond.not.i.i165, label %.lr.ph.i, label %.lr.ph25.i.i, !llvm.loop !29

.lr.ph.i:                                         ; preds = %.lr.ph25.i.i, %middle.block630
  %invariant.gep.i166 = getelementptr [4 x i8], ptr @main.a, i64 %i.xw
  %min.iters.check604 = icmp samesign ugt i64 %indvars.iv107.i, 91
  %n.vec606 = and i64 %i.yd, 120                  ; 3 uses
  %cmp.n617 = icmp eq i64 %i.yd, %n.vec606
  br label %bb.s

bb.s:                                             ; preds = %daxpy.exit.i172, %.lr.ph.i
  %indvars.iv104.i = phi i64 [ %indvars.iv.i163, %.lr.ph.i ], [ %indvars.iv.next105.i, %daxpy.exit.i172 ] ; 2 uses
  %i.yn = mul nuw nsw i64 %indvars.iv104.i, 201   ; 2 uses
  %gep.i167 = getelementptr [4 x i8], ptr %invariant.gep.i166, i64 %i.yn ; 2 uses
  %i.yo = load float, ptr %gep.i167, align 4, !tbaa !11 ; 4 uses
  %.pre.i = add nuw nsw i64 %i.yn, %indvars.iv107.i ; 2 uses
  br i1 %.not.i, label %._crit_edge.i168, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre.i ; 2 uses
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !11
  store float %i.yq, ptr %gep.i167, align 4, !tbaa !11
  store float %i.yo, ptr %i.yp, align 4, !tbaa !11
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %bb.t, %bb.s
  %i.yr = getelementptr [4 x i8], ptr @main.a, i64 %.pre.i
  %i.ys = getelementptr i8, ptr %i.yr, i64 4      ; 2 uses
  %i.yt = fcmp oeq float %i.yo, 0.000000e+00
  br i1 %i.yt, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader

.lr.ph.i.i169.preheader:                          ; preds = %._crit_edge.i168
  br i1 %min.iters.check604, label %.lr.ph.i.i169.preheader811, label %vector.ph605

vector.ph605:                                     ; preds = %.lr.ph.i.i169.preheader
  %broadcast.splatinsert607 = insertelement <4 x float> poison, float %i.yo, i64 0
  %broadcast.splat608 = shufflevector <4 x float> %broadcast.splatinsert607, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body609

vector.body609:                                   ; preds = %vector.body609, %vector.ph605
  %index610 = phi i64 [ 0, %vector.ph605 ], [ %index.next615, %vector.body609 ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %index610 ; 3 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  %wide.load611 = load <4 x float>, ptr %i.yu, align 4, !tbaa !11
  %wide.load612 = load <4 x float>, ptr %i.yv, align 4, !tbaa !11
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %index610 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %wide.load613 = load <4 x float>, ptr %i.yw, align 4, !tbaa !11
  %wide.load614 = load <4 x float>, ptr %i.yx, align 4, !tbaa !11
  %i.yy = fmul <4 x float> %broadcast.splat608, %wide.load613
  %i.yz = fmul <4 x float> %broadcast.splat608, %wide.load614
  %i.za = fadd <4 x float> %wide.load611, %i.yy
  %i.zb = fadd <4 x float> %wide.load612, %i.yz
  store <4 x float> %i.za, ptr %i.yu, align 4, !tbaa !11
  store <4 x float> %i.zb, ptr %i.yv, align 4, !tbaa !11
  %index.next615 = add nuw i64 %index610, 8       ; 2 uses
  %i.zc = icmp eq i64 %index.next615, %n.vec606
  br i1 %i.zc, label %middle.block616, label %vector.body609, !llvm.loop !30

middle.block616:                                  ; preds = %vector.body609
  br i1 %cmp.n617, label %daxpy.exit.i172, label %.lr.ph.i.i169.preheader811

.lr.ph.i.i169.preheader811:                       ; preds = %.lr.ph.i.i169.preheader, %middle.block616
  %indvars.iv.i.i170.ph = phi i64 [ 0, %.lr.ph.i.i169.preheader ], [ %n.vec606, %middle.block616 ]
  br label %.lr.ph.i.i169

.lr.ph.i.i169:                                    ; preds = %.lr.ph.i.i169.preheader811, %.lr.ph.i.i169
  %indvars.iv.i.i170 = phi i64 [ %indvars.iv.next.i.i171, %.lr.ph.i.i169 ], [ %indvars.iv.i.i170.ph, %.lr.ph.i.i169.preheader811 ] ; 3 uses
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i.i170 ; 2 uses
  %i.ze = load float, ptr %i.zd, align 4, !tbaa !11
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %indvars.iv.i.i170
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !11
  %i.zh = fmul float %i.yo, %i.zg
  %i.zi = fadd float %i.ze, %i.zh
  store float %i.zi, ptr %i.zd, align 4, !tbaa !11
  %indvars.iv.next.i.i171 = add nuw nsw i64 %indvars.iv.i.i170, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i.i171, %i.yd
  br i1 %exitcond.not.i99.i, label %daxpy.exit.i172, label %.lr.ph.i.i169, !llvm.loop !31

daxpy.exit.i172:                                  ; preds = %.lr.ph.i.i169, %middle.block616, %._crit_edge.i168
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1 ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next105.i, 100
  br i1 %exitcond.not.i173, label %.loopexit.i, label %bb.s, !llvm.loop !32

.loopexit.i:                                      ; preds = %daxpy.exit.i172, %idamax.exit.loopexit.i
  %i.zj = phi i32 [ %indvars109.i, %idamax.exit.loopexit.i ], [ %i.wx, %daxpy.exit.i172 ] ; 2 uses
  %indvars.iv.next.i164 = add nuw nsw i64 %indvars.iv.i163, 1
  %exitcond111.not.i = icmp eq i64 %indvars.iv.next108.i, 99
  br i1 %exitcond111.not.i, label %.loopexit100.i, label %.lr.ph103.i, !llvm.loop !33

.loopexit100.i:                                   ; preds = %.loopexit.i
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.zk = add nuw nsw i32 %storemerge79408, 1     ; 2 uses
  %exitcond464.not = icmp eq i32 %i.zk, %i.uc
  br i1 %exitcond464.not, label %._crit_edge409, label %.preheader52.i138.preheader, !llvm.loop !34

._crit_edge409:                                   ; preds = %.loopexit100.i
  %i.zl = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.zm = fcmp oeq float %i.zl, 0.000000e+00
  %i.zn = select i1 %i.zm, i32 99, i32 %i.zj
  store i32 %i.zn, ptr @main.info, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge409, %bb.n
  %i.zo = tail call i64 @clock() #12              ; 0 uses
  %i.zp = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.zq = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.zp, ptr noundef nonnull @.str.15, i32 noundef %i.zq, double noundef 0.000000e+00) #14 ; 0 uses
  %exitcond465.not = icmp eq i32 %.160, -1
  br i1 %exitcond465.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.zs = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.zt = shl nsw i32 %i.zs, 1
  br label %bb.n, !llvm.loop !35

.critedge:                                        ; preds = %bb.u
  %i.zu = sitofp i64 %i.qy to float
  %i.zv = fdiv nnan float %i.zu, 1.000000e+06
  %i.zw = sitofp i64 %i.tt to float
  %i.zx = fdiv nnan float %i.zw, 1.000000e+06
  %i.zy = fsub float %i.zx, %i.zv
  %i.zz = fdiv float %i.zy, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %i.aaa = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aaa, ptr noundef nonnull @.str.18, i32 noundef 0) #14 ; 0 uses
  %i.aac = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aac, ptr noundef nonnull @.str.19, i32 noundef 201) #14 ; 0 uses
  %i.aae = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aaf = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %i.aae) #13 ; 0 uses
  %i.aag = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aah = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %i.aag) #13 ; 0 uses
  %i.aai = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.aaj = sitofp i32 %i.aai to float
  %i.aak = fmul float %i.zz, %i.aaj
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @atime, i64 204), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %.critedge, %._crit_edge419
  %i.aal = tail call i64 @clock() #12
  %i.aam = sitofp i64 %i.aal to float
  %i.aan = fdiv float %i.aam, 1.000000e+06
end_hunk_0
begin_hunk_1_@main:bb.a
  %.promoted1360 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1363 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1366 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1369 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1372 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1375 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1378 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1381 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1384 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1387 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1390 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1393 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1396 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1399 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1402 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1405 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1407 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1409 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1411 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i188

bb.x:                                             ; preds = %bb.x, %.preheader52.i174
  %indvars.iv.i178 = phi i64 [ 0, %.preheader52.i174 ], [ %indvars.iv.next.i182.1, %bb.x ] ; 3 uses
  %.14553.i179 = phi i32 [ %.04455.i176, %.preheader52.i174 ], [ %i.aaw, %bb.x ] ; 2 uses
  %i.aaq = mul nuw nsw i32 %.14553.i179, 3125
  %i.aar = and i32 %i.aaq, 65535
  %i.aas = add nsw i32 %i.aar, -32768
  %i.aat = sitofp i32 %i.aas to float
  %i.aau = fmul nnan float %i.aat, f0x38800000
  %gep.i180 = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  store float %i.aau, ptr %gep.i180, align 4, !tbaa !11
  %i.aav = mul nsw i32 %.14553.i179, 761
  %i.aaw = and i32 %i.aav, 65535                  ; 3 uses
  %i.aax = add nsw i32 %i.aaw, -32768
  %i.aay = sitofp i32 %i.aax to float
  %i.aaz = fmul nnan float %i.aay, f0x38800000
  %i.aba = getelementptr [4 x i8], ptr %invariant.gep.i177, i64 %indvars.iv.i178
  %gep.i180.1 = getelementptr i8, ptr %i.aba, i64 4
  store float %i.aaz, ptr %gep.i180.1, align 4, !tbaa !11
  %indvars.iv.next.i182.1 = add nuw nsw i64 %indvars.iv.i178, 2 ; 2 uses
  %exitcond.not.i183.1 = icmp eq i64 %indvars.iv.next.i182.1, 100
  br i1 %exitcond.not.i183.1, label %._crit_edge.i184, label %bb.x, !llvm.loop !13

._crit_edge.i184:                                 ; preds = %bb.x
  %indvars.iv.next65.i185 = add nuw nsw i64 %indvars.iv64.i175, 1 ; 2 uses
  %exitcond68.not.i186 = icmp eq i64 %indvars.iv.next65.i185, 100
  br i1 %exitcond68.not.i186, label %.preheader51.i187, label %.preheader52.i174, !llvm.loop !15

.preheader.i188:                                  ; preds = %.preheader.i188, %.preheader51.i187
  %i.abb = phi float [ %.promoted1411, %.preheader51.i187 ], [ %i.adi, %.preheader.i188 ]
  %i.abc = phi float [ %.promoted1409, %.preheader51.i187 ], [ %i.adg, %.preheader.i188 ]
  %i.abd = phi float [ %.promoted1407, %.preheader51.i187 ], [ %i.ade, %.preheader.i188 ]
  %i.abe = phi float [ %.promoted1405, %.preheader51.i187 ], [ %i.adc, %.preheader.i188 ]
  %wide.load710.111403 = phi <4 x float> [ %.promoted1402, %.preheader51.i187 ], [ %i.ada, %.preheader.i188 ]
  %wide.load709.111400 = phi <4 x float> [ %.promoted1399, %.preheader51.i187 ], [ %i.acz, %.preheader.i188 ]
  %wide.load710.101397 = phi <4 x float> [ %.promoted1396, %.preheader51.i187 ], [ %i.acw, %.preheader.i188 ]
  %wide.load709.101394 = phi <4 x float> [ %.promoted1393, %.preheader51.i187 ], [ %i.acv, %.preheader.i188 ]
  %wide.load710.91391 = phi <4 x float> [ %.promoted1390, %.preheader51.i187 ], [ %i.acs, %.preheader.i188 ]
  %wide.load709.91388 = phi <4 x float> [ %.promoted1387, %.preheader51.i187 ], [ %i.acr, %.preheader.i188 ]
  %wide.load710.81385 = phi <4 x float> [ %.promoted1384, %.preheader51.i187 ], [ %i.aco, %.preheader.i188 ]
  %wide.load709.81382 = phi <4 x float> [ %.promoted1381, %.preheader51.i187 ], [ %i.acn, %.preheader.i188 ]
  %wide.load710.71379 = phi <4 x float> [ %.promoted1378, %.preheader51.i187 ], [ %i.ack, %.preheader.i188 ]
  %wide.load709.71376 = phi <4 x float> [ %.promoted1375, %.preheader51.i187 ], [ %i.acj, %.preheader.i188 ]
  %wide.load710.61373 = phi <4 x float> [ %.promoted1372, %.preheader51.i187 ], [ %i.acg, %.preheader.i188 ]
  %wide.load709.61370 = phi <4 x float> [ %.promoted1369, %.preheader51.i187 ], [ %i.acf, %.preheader.i188 ]
  %wide.load710.51367 = phi <4 x float> [ %.promoted1366, %.preheader51.i187 ], [ %i.acc, %.preheader.i188 ]
  %wide.load709.51364 = phi <4 x float> [ %.promoted1363, %.preheader51.i187 ], [ %i.acb, %.preheader.i188 ]
  %wide.load710.41361 = phi <4 x float> [ %.promoted1360, %.preheader51.i187 ], [ %i.aby, %.preheader.i188 ]
  %wide.load709.41358 = phi <4 x float> [ %.promoted1357, %.preheader51.i187 ], [ %i.abx, %.preheader.i188 ]
  %wide.load710.31355 = phi <4 x float> [ %.promoted1354, %.preheader51.i187 ], [ %i.abu, %.preheader.i188 ]
  %wide.load709.31352 = phi <4 x float> [ %.promoted1351, %.preheader51.i187 ], [ %i.abt, %.preheader.i188 ]
  %wide.load710.21349 = phi <4 x float> [ %.promoted1348, %.preheader51.i187 ], [ %i.abq, %.preheader.i188 ]
  %wide.load709.21346 = phi <4 x float> [ %.promoted1345, %.preheader51.i187 ], [ %i.abp, %.preheader.i188 ]
  %wide.load710.11343 = phi <4 x float> [ %.promoted1342, %.preheader51.i187 ], [ %i.abm, %.preheader.i188 ]
  %wide.load709.11340 = phi <4 x float> [ %.promoted1339, %.preheader51.i187 ], [ %i.abl, %.preheader.i188 ]
  %i.abf = phi <4 x float> [ %.promoted1337, %.preheader51.i187 ], [ %i.abi, %.preheader.i188 ]
  %wide.load7091335 = phi <4 x float> [ %main.b.promoted1334, %.preheader51.i187 ], [ %i.abh, %.preheader.i188 ]
  %indvars.iv77.i189 = phi i64 [ 0, %.preheader51.i187 ], [ %indvars.iv.next78.i196, %.preheader.i188 ] ; 2 uses
  %invariant.gep82.i190.idx = mul nuw nsw i64 %indvars.iv77.i189, 804
  %invariant.gep82.i190 = getelementptr i8, ptr @main.a, i64 %invariant.gep82.i190.idx ; 28 uses
  %i.abg = getelementptr i8, ptr %invariant.gep82.i190, i64 16
  %wide.load711 = load <4 x float>, ptr %invariant.gep82.i190, align 4, !tbaa !11
  %wide.load712 = load <4 x float>, ptr %i.abg, align 4, !tbaa !11
  %i.abh = fadd <4 x float> %wide.load7091335, %wide.load711 ; 2 uses
  %i.abi = fadd <4 x float> %i.abf, %wide.load712 ; 2 uses
  %i.abj = getelementptr i8, ptr %invariant.gep82.i190, i64 32
  %i.abk = getelementptr i8, ptr %invariant.gep82.i190, i64 48
  %wide.load711.1 = load <4 x float>, ptr %i.abj, align 4, !tbaa !11
  %wide.load712.1 = load <4 x float>, ptr %i.abk, align 4, !tbaa !11
  %i.abl = fadd <4 x float> %wide.load709.11340, %wide.load711.1 ; 2 uses
  %i.abm = fadd <4 x float> %wide.load710.11343, %wide.load712.1 ; 2 uses
  %i.abn = getelementptr i8, ptr %invariant.gep82.i190, i64 64
  %i.abo = getelementptr i8, ptr %invariant.gep82.i190, i64 80
  %wide.load711.2 = load <4 x float>, ptr %i.abn, align 4, !tbaa !11
  %wide.load712.2 = load <4 x float>, ptr %i.abo, align 4, !tbaa !11
  %i.abp = fadd <4 x float> %wide.load709.21346, %wide.load711.2 ; 2 uses
  %i.abq = fadd <4 x float> %wide.load710.21349, %wide.load712.2 ; 2 uses
  %i.abr = getelementptr i8, ptr %invariant.gep82.i190, i64 96
  %i.abs = getelementptr i8, ptr %invariant.gep82.i190, i64 112
  %wide.load711.3 = load <4 x float>, ptr %i.abr, align 4, !tbaa !11
  %wide.load712.3 = load <4 x float>, ptr %i.abs, align 4, !tbaa !11
  %i.abt = fadd <4 x float> %wide.load709.31352, %wide.load711.3 ; 2 uses
  %i.abu = fadd <4 x float> %wide.load710.31355, %wide.load712.3 ; 2 uses
  %i.abv = getelementptr i8, ptr %invariant.gep82.i190, i64 128
  %i.abw = getelementptr i8, ptr %invariant.gep82.i190, i64 144
  %wide.load711.4 = load <4 x float>, ptr %i.abv, align 4, !tbaa !11
  %wide.load712.4 = load <4 x float>, ptr %i.abw, align 4, !tbaa !11
  %i.abx = fadd <4 x float> %wide.load709.41358, %wide.load711.4 ; 2 uses
  %i.aby = fadd <4 x float> %wide.load710.41361, %wide.load712.4 ; 2 uses
  %i.abz = getelementptr i8, ptr %invariant.gep82.i190, i64 160
  %i.aca = getelementptr i8, ptr %invariant.gep82.i190, i64 176
  %wide.load711.5 = load <4 x float>, ptr %i.abz, align 4, !tbaa !11
  %wide.load712.5 = load <4 x float>, ptr %i.aca, align 4, !tbaa !11
  %i.acb = fadd <4 x float> %wide.load709.51364, %wide.load711.5 ; 2 uses
  %i.acc = fadd <4 x float> %wide.load710.51367, %wide.load712.5 ; 2 uses
  %i.acd = getelementptr i8, ptr %invariant.gep82.i190, i64 192
  %i.ace = getelementptr i8, ptr %invariant.gep82.i190, i64 208
  %wide.load711.6 = load <4 x float>, ptr %i.acd, align 4, !tbaa !11
  %wide.load712.6 = load <4 x float>, ptr %i.ace, align 4, !tbaa !11
  %i.acf = fadd <4 x float> %wide.load709.61370, %wide.load711.6 ; 2 uses
  %i.acg = fadd <4 x float> %wide.load710.61373, %wide.load712.6 ; 2 uses
  %i.ach = getelementptr i8, ptr %invariant.gep82.i190, i64 224
  %i.aci = getelementptr i8, ptr %invariant.gep82.i190, i64 240
  %wide.load711.7 = load <4 x float>, ptr %i.ach, align 4, !tbaa !11
  %wide.load712.7 = load <4 x float>, ptr %i.aci, align 4, !tbaa !11
  %i.acj = fadd <4 x float> %wide.load709.71376, %wide.load711.7 ; 2 uses
  %i.ack = fadd <4 x float> %wide.load710.71379, %wide.load712.7 ; 2 uses
  %i.acl = getelementptr i8, ptr %invariant.gep82.i190, i64 256
  %i.acm = getelementptr i8, ptr %invariant.gep82.i190, i64 272
  %wide.load711.8 = load <4 x float>, ptr %i.acl, align 4, !tbaa !11
  %wide.load712.8 = load <4 x float>, ptr %i.acm, align 4, !tbaa !11
  %i.acn = fadd <4 x float> %wide.load709.81382, %wide.load711.8 ; 2 uses
  %i.aco = fadd <4 x float> %wide.load710.81385, %wide.load712.8 ; 2 uses
  %i.acp = getelementptr i8, ptr %invariant.gep82.i190, i64 288
  %i.acq = getelementptr i8, ptr %invariant.gep82.i190, i64 304
  %wide.load711.9 = load <4 x float>, ptr %i.acp, align 4, !tbaa !11
  %wide.load712.9 = load <4 x float>, ptr %i.acq, align 4, !tbaa !11
  %i.acr = fadd <4 x float> %wide.load709.91388, %wide.load711.9 ; 2 uses
  %i.acs = fadd <4 x float> %wide.load710.91391, %wide.load712.9 ; 2 uses
  %i.act = getelementptr i8, ptr %invariant.gep82.i190, i64 320
  %i.acu = getelementptr i8, ptr %invariant.gep82.i190, i64 336
  %wide.load711.10 = load <4 x float>, ptr %i.act, align 4, !tbaa !11
  %wide.load712.10 = load <4 x float>, ptr %i.acu, align 4, !tbaa !11
  %i.acv = fadd <4 x float> %wide.load709.101394, %wide.load711.10 ; 2 uses
  %i.acw = fadd <4 x float> %wide.load710.101397, %wide.load712.10 ; 2 uses
  %i.acx = getelementptr i8, ptr %invariant.gep82.i190, i64 352
  %i.acy = getelementptr i8, ptr %invariant.gep82.i190, i64 368
  %wide.load711.11 = load <4 x float>, ptr %i.acx, align 4, !tbaa !11
  %wide.load712.11 = load <4 x float>, ptr %i.acy, align 4, !tbaa !11
  %i.acz = fadd <4 x float> %wide.load709.111400, %wide.load711.11 ; 2 uses
  %i.ada = fadd <4 x float> %wide.load710.111403, %wide.load712.11 ; 2 uses
  %gep83.i192 = getelementptr i8, ptr %invariant.gep82.i190, i64 384
  %i.adb = load float, ptr %gep83.i192, align 4, !tbaa !11
  %i.adc = fadd float %i.abe, %i.adb              ; 2 uses
  %gep83.i192.1 = getelementptr i8, ptr %invariant.gep82.i190, i64 388
  %i.add = load float, ptr %gep83.i192.1, align 4, !tbaa !11
  %i.ade = fadd float %i.abd, %i.add              ; 2 uses
  %gep83.i192.2 = getelementptr i8, ptr %invariant.gep82.i190, i64 392
  %i.adf = load float, ptr %gep83.i192.2, align 4, !tbaa !11
  %i.adg = fadd float %i.abc, %i.adf              ; 2 uses
  %gep83.i192.3 = getelementptr i8, ptr %invariant.gep82.i190, i64 396
  %i.adh = load float, ptr %gep83.i192.3, align 4, !tbaa !11
  %i.adi = fadd float %i.abb, %i.adh              ; 2 uses
  %indvars.iv.next78.i196 = add nuw nsw i64 %indvars.iv77.i189, 1 ; 2 uses
  %exitcond81.not.i197 = icmp eq i64 %indvars.iv.next78.i196, 100
  br i1 %exitcond81.not.i197, label %.lr.ph103.i199.preheader, label %.preheader.i188, !llvm.loop !16

.lr.ph103.i199.preheader:                         ; preds = %.preheader.i188
  store <4 x float> %i.abh, ptr @main.b, align 16, !tbaa !11
  store <4 x float> %i.abi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 16), align 16, !tbaa !11
  store <4 x float> %i.abl, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 32), align 16, !tbaa !11
  store <4 x float> %i.abm, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 48), align 16, !tbaa !11
  store <4 x float> %i.abp, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 64), align 16, !tbaa !11
  store <4 x float> %i.abq, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 80), align 16, !tbaa !11
  store <4 x float> %i.abt, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 96), align 16, !tbaa !11
  store <4 x float> %i.abu, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 112), align 16, !tbaa !11
  store <4 x float> %i.abx, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 128), align 16, !tbaa !11
  store <4 x float> %i.aby, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  store <4 x float> %i.acb, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  store <4 x float> %i.acc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  store <4 x float> %i.acf, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  store <4 x float> %i.acg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  store <4 x float> %i.acj, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  store <4 x float> %i.ack, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  store <4 x float> %i.acn, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  store <4 x float> %i.aco, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  store <4 x float> %i.acr, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  store <4 x float> %i.acs, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  store <4 x float> %i.acv, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  store <4 x float> %i.acw, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  store <4 x float> %i.acz, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  store <4 x float> %i.ada, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  store float %i.adc, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  store float %i.ade, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  store float %i.adg, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  store float %i.adi, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.lr.ph103.i199

.lr.ph103.i199:                                   ; preds = %.lr.ph103.i199.preheader, %.loopexit.i213
  %i.adj = phi i32 [ %i.afv, %.loopexit.i213 ], [ 0, %.lr.ph103.i199.preheader ]
  %indvars.iv107.i200 = phi i64 [ %indvars.iv.next108.i212, %.loopexit.i213 ], [ 0, %.lr.ph103.i199.preheader ] ; 11 uses
  %indvars.iv.i201 = phi i64 [ %indvars.iv.next.i214, %.loopexit.i213 ], [ 1, %.lr.ph103.i199.preheader ] ; 2 uses
  %i.adk = sub nsw i64 99, %indvars.iv107.i200    ; 3 uses
  %i.adl = getelementptr [4 x i8], ptr @main.a, i64 %indvars.iv107.i200
  %i.adm = mul nuw nsw i64 %indvars.iv107.i200, 804 ; 2 uses
  %i.adn = getelementptr i8, ptr %i.adl, i64 %i.adm ; 6 uses
  %i.ado = load float, ptr %i.adn, align 4, !tbaa !11 ; 3 uses
  %i.adp = tail call float @llvm.fabs.f32(float %i.ado) ; 2 uses
  %xtraiter836 = and i64 %i.adk, 1
  %i.adq = icmp eq i64 %indvars.iv107.i200, 98
  br i1 %i.adq, label %.lr.ph48.i.i203.epil.preheader, label %.lr.ph103.i199.new

.lr.ph103.i199.new:                               ; preds = %.lr.ph103.i199
  %unroll_iter840 = and i64 %i.adk, -2
  br label %.lr.ph48.i.i203

.lr.ph48.i.i203:                                  ; preds = %.lr.ph48.i.i203, %.lr.ph103.i199.new
  %indvars.iv52.i.i204 = phi i64 [ 1, %.lr.ph103.i199.new ], [ %indvars.iv.next53.i.i209.1, %.lr.ph48.i.i203 ] ; 4 uses
  %.247.i.i205 = phi i32 [ 0, %.lr.ph103.i199.new ], [ %.3.i.i208.1, %.lr.ph48.i.i203 ]
  %.23345.i.i206 = phi float [ %i.adp, %.lr.ph103.i199.new ], [ %.334.i.i207.1, %.lr.ph48.i.i203 ] ; 2 uses
  %niter841 = phi i64 [ 0, %.lr.ph103.i199.new ], [ %niter841.next.1, %.lr.ph48.i.i203 ]
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv52.i.i204
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !11
  %i.adt = tail call float @llvm.fabs.f32(float %i.ads) ; 2 uses
  %i.adu = fcmp ogt float %i.adt, %.23345.i.i206  ; 2 uses
  %.334.i.i207 = select i1 %i.adu, float %i.adt, float %.23345.i.i206 ; 2 uses
  %i.adv = trunc nuw nsw i64 %indvars.iv52.i.i204 to i32
  %.3.i.i208 = select i1 %i.adu, i32 %i.adv, i32 %.247.i.i205
  %indvars.iv.next53.i.i209 = add nuw nsw i64 %indvars.iv52.i.i204, 1 ; 2 uses
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv.next53.i.i209
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !11
  %i.ady = tail call float @llvm.fabs.f32(float %i.adx) ; 2 uses
  %i.adz = fcmp ogt float %i.ady, %.334.i.i207    ; 2 uses
  %.334.i.i207.1 = select i1 %i.adz, float %i.ady, float %.334.i.i207 ; 2 uses
  %i.aea = trunc nuw nsw i64 %indvars.iv.next53.i.i209 to i32
  %.3.i.i208.1 = select i1 %i.adz, i32 %i.aea, i32 %.3.i.i208 ; 3 uses
  %indvars.iv.next53.i.i209.1 = add nuw nsw i64 %indvars.iv52.i.i204, 2 ; 2 uses
  %niter841.next.1 = add nuw i64 %niter841, 2     ; 2 uses
  %niter841.ncmp.1 = icmp eq i64 %niter841.next.1, %unroll_iter840
  br i1 %niter841.ncmp.1, label %idamax.exit.loopexit.i211.unr-lcssa, label %.lr.ph48.i.i203, !llvm.loop !27

idamax.exit.loopexit.i211.unr-lcssa:              ; preds = %.lr.ph48.i.i203
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  br i1 %lcmp.mod837.not, label %idamax.exit.loopexit.i211, label %.lr.ph48.i.i203.epil.preheader

.lr.ph48.i.i203.epil.preheader:                   ; preds = %idamax.exit.loopexit.i211.unr-lcssa, %.lr.ph103.i199
  %indvars.iv52.i.i204.epil.init = phi i64 [ 1, %.lr.ph103.i199 ], [ %indvars.iv.next53.i.i209.1, %idamax.exit.loopexit.i211.unr-lcssa ] ; 2 uses
  %.247.i.i205.epil.init = phi i32 [ 0, %.lr.ph103.i199 ], [ %.3.i.i208.1, %idamax.exit.loopexit.i211.unr-lcssa ]
  %.23345.i.i206.epil.init = phi float [ %i.adp, %.lr.ph103.i199 ], [ %.334.i.i207.1, %idamax.exit.loopexit.i211.unr-lcssa ]
  %lcmp.mod839 = trunc i64 %i.adk to i1
  tail call void @llvm.assume(i1 %lcmp.mod839)
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %i.adn, i64 %indvars.iv52.i.i204.epil.init
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !11
  %i.aed = tail call float @llvm.fabs.f32(float %i.aec)
  %i.aee = fcmp ogt float %i.aed, %.23345.i.i206.epil.init
  %i.aef = trunc nuw nsw i64 %indvars.iv52.i.i204.epil.init to i32
  %.3.i.i208.epil = select i1 %i.aee, i32 %i.aef, i32 %.247.i.i205.epil.init
  br label %idamax.exit.loopexit.i211

idamax.exit.loopexit.i211:                        ; preds = %idamax.exit.loopexit.i211.unr-lcssa, %.lr.ph48.i.i203.epil.preheader
  %.3.i.i208.lcssa = phi i32 [ %.3.i.i208.1, %idamax.exit.loopexit.i211.unr-lcssa ], [ %.3.i.i208.epil, %.lr.ph48.i.i203.epil.preheader ] ; 2 uses
  %indvars109.i202 = trunc i64 %indvars.iv107.i200 to i32 ; 2 uses
  %indvars.iv.next108.i212 = add nuw nsw i64 %indvars.iv107.i200, 1 ; 2 uses
  %i.aeg = add nsw i32 %.3.i.i208.lcssa, %indvars109.i202 ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i200
  store i32 %i.aeg, ptr %i.aeh, align 4, !tbaa !4
  %i.aei = sext i32 %i.aeg to i64                 ; 2 uses
  %i.aej = getelementptr i8, ptr @main.a, i64 %i.adm
  %i.aek = getelementptr [4 x i8], ptr %i.aej, i64 %i.aei ; 2 uses
  %i.ael = load float, ptr %i.aek, align 4, !tbaa !11 ; 3 uses
  %i.aem = fcmp une float %i.ael, 0.000000e+00
  br i1 %i.aem, label %bb.y, label %.loopexit.i213

bb.y:                                             ; preds = %idamax.exit.loopexit.i211
  %.not.i217 = icmp eq i32 %.3.i.i208.lcssa, 0    ; 2 uses
  br i1 %.not.i217, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store float %i.ado, ptr %i.aek, align 4, !tbaa !11
  store float %i.ael, ptr %i.adn, align 4, !tbaa !11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.aen = phi float [ %i.ael, %bb.z ], [ %i.ado, %bb.y ]
  %i.aeo = fdiv float -1.000000e+00, %i.aen       ; 2 uses
  %i.aep = sub nuw nsw i64 99, %indvars.iv107.i200 ; 6 uses
  %i.aeq = getelementptr i8, ptr %i.adn, i64 4    ; 4 uses
  %min.iters.check692 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  br i1 %min.iters.check692, label %.lr.ph25.i.i218.preheader, label %vector.ph693

vector.ph693:                                     ; preds = %bb.aa
  %n.vec694 = and i64 %i.aep, 120                 ; 3 uses
  %broadcast.splatinsert695 = insertelement <4 x float> poison, float %i.aeo, i64 0
  %broadcast.splat696 = shufflevector <4 x float> %broadcast.splatinsert695, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body697

vector.body697:                                   ; preds = %vector.body697, %vector.ph693
  %index698 = phi i64 [ 0, %vector.ph693 ], [ %index.next701, %vector.body697 ] ; 2 uses
  %i.aer = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index698 ; 3 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16 ; 2 uses
  %wide.load699 = load <4 x float>, ptr %i.aer, align 4, !tbaa !11
  %wide.load700 = load <4 x float>, ptr %i.aes, align 4, !tbaa !11
  %i.aet = fmul <4 x float> %broadcast.splat696, %wide.load699
  %i.aeu = fmul <4 x float> %broadcast.splat696, %wide.load700
  store <4 x float> %i.aet, ptr %i.aer, align 4, !tbaa !11
  store <4 x float> %i.aeu, ptr %i.aes, align 4, !tbaa !11
  %index.next701 = add nuw i64 %index698, 8       ; 2 uses
  %i.aev = icmp eq i64 %index.next701, %n.vec694
  br i1 %i.aev, label %middle.block702, label %vector.body697, !llvm.loop !36

middle.block702:                                  ; preds = %vector.body697
  %cmp.n703 = icmp eq i64 %i.aep, %n.vec694
  br i1 %cmp.n703, label %.lr.ph.i222, label %.lr.ph25.i.i218.preheader

.lr.ph25.i.i218.preheader:                        ; preds = %bb.aa, %middle.block702
  %indvars.iv28.i.i219.ph = phi i64 [ 0, %bb.aa ], [ %n.vec694, %middle.block702 ]
  br label %.lr.ph25.i.i218

.lr.ph25.i.i218:                                  ; preds = %.lr.ph25.i.i218.preheader, %.lr.ph25.i.i218
  %indvars.iv28.i.i219 = phi i64 [ %indvars.iv.next29.i.i220, %.lr.ph25.i.i218 ], [ %indvars.iv28.i.i219.ph, %.lr.ph25.i.i218.preheader ] ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv28.i.i219 ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !11
  %i.aey = fmul float %i.aeo, %i.aex
  store float %i.aey, ptr %i.aew, align 4, !tbaa !11
  %indvars.iv.next29.i.i220 = add nuw nsw i64 %indvars.iv28.i.i219, 1 ; 2 uses
  %exitcond.not.i.i221 = icmp eq i64 %indvars.iv.next29.i.i220, %i.aep
  br i1 %exitcond.not.i.i221, label %.lr.ph.i222, label %.lr.ph25.i.i218, !llvm.loop !37

.lr.ph.i222:                                      ; preds = %.lr.ph25.i.i218, %middle.block702
  %invariant.gep.i223 = getelementptr [4 x i8], ptr @main.a, i64 %i.aei
  %min.iters.check676 = icmp samesign ugt i64 %indvars.iv107.i200, 91
  %n.vec678 = and i64 %i.aep, 120                 ; 3 uses
  %cmp.n689 = icmp eq i64 %i.aep, %n.vec678
  br label %bb.ab

bb.ab:                                            ; preds = %daxpy.exit.i232, %.lr.ph.i222
  %indvars.iv104.i224 = phi i64 [ %indvars.iv.i201, %.lr.ph.i222 ], [ %indvars.iv.next105.i233, %daxpy.exit.i232 ] ; 2 uses
  %i.aez = mul nuw nsw i64 %indvars.iv104.i224, 201 ; 2 uses
  %gep.i225 = getelementptr [4 x i8], ptr %invariant.gep.i223, i64 %i.aez ; 2 uses
  %i.afa = load float, ptr %gep.i225, align 4, !tbaa !11 ; 4 uses
  %.pre.i226 = add nuw nsw i64 %i.aez, %indvars.iv107.i200 ; 2 uses
  br i1 %.not.i217, label %._crit_edge.i227, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr @main.a, i64 %.pre.i226 ; 2 uses
  %i.afc = load float, ptr %i.afb, align 4, !tbaa !11
  store float %i.afc, ptr %gep.i225, align 4, !tbaa !11
  store float %i.afa, ptr %i.afb, align 4, !tbaa !11
  br label %._crit_edge.i227

._crit_edge.i227:                                 ; preds = %bb.ac, %bb.ab
  %i.afd = getelementptr [4 x i8], ptr @main.a, i64 %.pre.i226
  %i.afe = getelementptr i8, ptr %i.afd, i64 4    ; 2 uses
  %i.aff = fcmp oeq float %i.afa, 0.000000e+00
  br i1 %i.aff, label %daxpy.exit.i232, label %.lr.ph.i.i228.preheader

.lr.ph.i.i228.preheader:                          ; preds = %._crit_edge.i227
  br i1 %min.iters.check676, label %.lr.ph.i.i228.preheader806, label %vector.ph677

vector.ph677:                                     ; preds = %.lr.ph.i.i228.preheader
  %broadcast.splatinsert679 = insertelement <4 x float> poison, float %i.afa, i64 0
  %broadcast.splat680 = shufflevector <4 x float> %broadcast.splatinsert679, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body681

vector.body681:                                   ; preds = %vector.body681, %vector.ph677
  %index682 = phi i64 [ 0, %vector.ph677 ], [ %index.next687, %vector.body681 ] ; 3 uses
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %index682 ; 3 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16 ; 2 uses
  %wide.load683 = load <4 x float>, ptr %i.afg, align 4, !tbaa !11
  %wide.load684 = load <4 x float>, ptr %i.afh, align 4, !tbaa !11
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %index682 ; 2 uses
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  %wide.load685 = load <4 x float>, ptr %i.afi, align 4, !tbaa !11
  %wide.load686 = load <4 x float>, ptr %i.afj, align 4, !tbaa !11
  %i.afk = fmul <4 x float> %broadcast.splat680, %wide.load685
  %i.afl = fmul <4 x float> %broadcast.splat680, %wide.load686
  %i.afm = fadd <4 x float> %wide.load683, %i.afk
  %i.afn = fadd <4 x float> %wide.load684, %i.afl
  store <4 x float> %i.afm, ptr %i.afg, align 4, !tbaa !11
  store <4 x float> %i.afn, ptr %i.afh, align 4, !tbaa !11
  %index.next687 = add nuw i64 %index682, 8       ; 2 uses
  %i.afo = icmp eq i64 %index.next687, %n.vec678
  br i1 %i.afo, label %middle.block688, label %vector.body681, !llvm.loop !38

middle.block688:                                  ; preds = %vector.body681
  br i1 %cmp.n689, label %daxpy.exit.i232, label %.lr.ph.i.i228.preheader806

.lr.ph.i.i228.preheader806:                       ; preds = %.lr.ph.i.i228.preheader, %middle.block688
  %indvars.iv.i.i229.ph = phi i64 [ 0, %.lr.ph.i.i228.preheader ], [ %n.vec678, %middle.block688 ]
  br label %.lr.ph.i.i228

.lr.ph.i.i228:                                    ; preds = %.lr.ph.i.i228.preheader806, %.lr.ph.i.i228
  %indvars.iv.i.i229 = phi i64 [ %indvars.iv.next.i.i230, %.lr.ph.i.i228 ], [ %indvars.iv.i.i229.ph, %.lr.ph.i.i228.preheader806 ] ; 3 uses
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.afe, i64 %indvars.iv.i.i229 ; 2 uses
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !11
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.aeq, i64 %indvars.iv.i.i229
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !11
  %i.aft = fmul float %i.afa, %i.afs
  %i.afu = fadd float %i.afq, %i.aft
  store float %i.afu, ptr %i.afp, align 4, !tbaa !11
  %indvars.iv.next.i.i230 = add nuw nsw i64 %indvars.iv.i.i229, 1 ; 2 uses
  %exitcond.not.i99.i231 = icmp eq i64 %indvars.iv.next.i.i230, %i.aep
  br i1 %exitcond.not.i99.i231, label %daxpy.exit.i232, label %.lr.ph.i.i228, !llvm.loop !39

daxpy.exit.i232:                                  ; preds = %.lr.ph.i.i228, %middle.block688, %._crit_edge.i227
  %indvars.iv.next105.i233 = add nuw nsw i64 %indvars.iv104.i224, 1 ; 2 uses
  %exitcond.not.i234 = icmp eq i64 %indvars.iv.next105.i233, 100
  br i1 %exitcond.not.i234, label %.loopexit.i213, label %bb.ab, !llvm.loop !32

.loopexit.i213:                                   ; preds = %daxpy.exit.i232, %idamax.exit.loopexit.i211
  %i.afv = phi i32 [ %indvars109.i202, %idamax.exit.loopexit.i211 ], [ %i.adj, %daxpy.exit.i232 ] ; 2 uses
  %indvars.iv.next.i214 = add nuw nsw i64 %indvars.iv.i201, 1
  %exitcond111.not.i215 = icmp eq i64 %indvars.iv.next108.i212, 99
  br i1 %exitcond111.not.i215, label %.loopexit100.i216, label %.lr.ph103.i199, !llvm.loop !33

.loopexit100.i216:                                ; preds = %.loopexit.i213
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.afw = add nuw nsw i32 %storemerge85413, 1    ; 2 uses
  %exitcond466.not = icmp eq i32 %i.afw, %i.aao
  br i1 %exitcond466.not, label %._crit_edge414, label %.preheader52.i174.preheader, !llvm.loop !40

._crit_edge414:                                   ; preds = %.loopexit100.i216
  %i.afx = load float, ptr getelementptr inbounds nuw (i8, ptr @main.a, i64 79992), align 8, !tbaa !11
  %i.afy = fcmp oeq float %i.afx, 0.000000e+00
  %i.afz = select i1 %i.afy, i32 99, i32 %i.afv
  store i32 %i.afz, ptr @main.info, align 4, !tbaa !4
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge414, %bb.w
  %i.aga = tail call i64 @clock() #12
  %i.agb = sitofp i64 %i.aga to float
  %i.agc = fdiv float %i.agb, 1.000000e+06
  %i.agd = fsub float %i.agc, %i.aan
  %i.age = fsub float %i.agd, %i.aak
  %i.agf = load i32, ptr @main.ntimes, align 4, !tbaa !4
  %i.agg = sitofp i32 %i.agf to float
  %i.agh = fdiv float %i.age, %i.agg
  %i.agi = load i32, ptr @main.j, align 4, !tbaa !4
  %i.agj = sext i32 %i.agi to i64
  %i.agk = getelementptr inbounds [4 x i8], ptr @atime, i64 %i.agj
  store float %i.agh, ptr %i.agk, align 4, !tbaa !11
  %i.agl = tail call i64 @clock() #12
  %i.agm = sitofp i64 %i.agl to float
  %i.agn = fdiv float %i.agm, 1.000000e+06
  %i.ago = load i32, ptr @main.ntimes, align 4, !tbaa !4 ; 2 uses
  %i.agp = icmp sgt i32 %i.ago, 0
  br i1 %i.agp, label %.preheader388, label %._crit_edge419

.preheader388:                                    ; preds = %bb.ad, %dgesl.exit258
  %storemerge86418 = phi i32 [ %i.ais, %dgesl.exit258 ], [ 0, %bb.ad ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader388, %daxpy.exit.i243
  %indvars.iv146.i236 = phi i64 [ %indvars.iv.next147.i238, %daxpy.exit.i243 ], [ 0, %.preheader388 ] ; 7 uses
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i236
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !4 ; 2 uses
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.ags ; 2 uses
  %i.agu = load float, ptr %i.agt, align 4, !tbaa !11 ; 4 uses
  %i.agv = zext i32 %i.agr to i64
  %.not103.i237 = icmp eq i64 %indvars.iv146.i236, %i.agv
  br i1 %.not103.i237, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i236 ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !11
  store float %i.agx, ptr %i.agt, align 4, !tbaa !11
  store float %i.agu, ptr %i.agw, align 4, !tbaa !11
end_hunk_1
begin_hunk_2_@main:bb.a
  %.promoted1518 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 144), align 16, !tbaa !11
  %.promoted1521 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 160), align 16, !tbaa !11
  %.promoted1524 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 176), align 16, !tbaa !11
  %.promoted1527 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 192), align 16, !tbaa !11
  %.promoted1530 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 208), align 16, !tbaa !11
  %.promoted1533 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 224), align 16, !tbaa !11
  %.promoted1536 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 240), align 16, !tbaa !11
  %.promoted1539 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 256), align 16, !tbaa !11
  %.promoted1542 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 272), align 16, !tbaa !11
  %.promoted1545 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 288), align 16, !tbaa !11
  %.promoted1548 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 304), align 16, !tbaa !11
  %.promoted1551 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 320), align 16, !tbaa !11
  %.promoted1554 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 336), align 16, !tbaa !11
  %.promoted1557 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 352), align 16, !tbaa !11
  %.promoted1560 = load <4 x float>, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 368), align 16, !tbaa !11
  %.promoted1563 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 384), align 16, !tbaa !11
  %.promoted1565 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 388), align 4, !tbaa !11
  %.promoted1567 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 392), align 8, !tbaa !11
  %.promoted1569 = load float, ptr getelementptr inbounds nuw (i8, ptr @main.b, i64 396), align 4, !tbaa !11
  br label %.preheader.i298

bb.ak:                                            ; preds = %bb.ak, %.preheader52.i284
  %indvars.iv.i288 = phi i64 [ 0, %.preheader52.i284 ], [ %indvars.iv.next.i292.1, %bb.ak ] ; 3 uses
  %.14553.i289 = phi i32 [ %.04455.i286, %.preheader52.i284 ], [ %i.anx, %bb.ak ] ; 2 uses
  %i.anr = mul nuw nsw i32 %.14553.i289, 3125
  %i.ans = and i32 %i.anr, 65535
  %i.ant = add nsw i32 %i.ans, -32768
  %i.anu = sitofp i32 %i.ant to float
  %i.anv = fmul nnan float %i.anu, f0x38800000
  %gep.i290 = getelementptr [4 x i8], ptr %invariant.gep.i287, i64 %indvars.iv.i288
  store float %i.anv, ptr %gep.i290, align 8, !tbaa !11
  %i.anw = mul nsw i32 %.14553.i289, 761
  %i.anx = and i32 %i.anw, 65535                  ; 3 uses
  %i.any = add nsw i32 %i.anx, -32768
  %i.anz = sitofp i32 %i.any to float
  %i.aoa = fmul nnan float %i.anz, f0x38800000
  %i.aob = getelementptr [4 x i8], ptr %invariant.gep.i287, i64 %indvars.iv.i288
  %gep.i290.1 = getelementptr i8, ptr %i.aob, i64 4
  store float %i.aoa, ptr %gep.i290.1, align 4, !tbaa !11
  %indvars.iv.next.i292.1 = add nuw nsw i64 %indvars.iv.i288, 2 ; 2 uses
  %exitcond.not.i293.1 = icmp eq i64 %indvars.iv.next.i292.1, 100
  br i1 %exitcond.not.i293.1, label %._crit_edge.i294, label %bb.ak, !llvm.loop !13

._crit_edge.i294:                                 ; preds = %bb.ak
  %indvars.iv.next65.i295 = add nuw nsw i64 %indvars.iv64.i285, 1 ; 2 uses
  %exitcond68.not.i296 = icmp eq i64 %indvars.iv.next65.i295, 100
  br i1 %exitcond68.not.i296, label %.preheader51.i297, label %.preheader52.i284, !llvm.loop !15

.preheader.i298:                                  ; preds = %.preheader.i298, %.preheader51.i297
  %i.aoc = phi float [ %.promoted1569, %.preheader51.i297 ], [ %i.aqj, %.preheader.i298 ]
  %i.aod = phi float [ %.promoted1567, %.preheader51.i297 ], [ %i.aqh, %.preheader.i298 ]
  %i.aoe = phi float [ %.promoted1565, %.preheader51.i297 ], [ %i.aqf, %.preheader.i298 ]
  %i.aof = phi float [ %.promoted1563, %.preheader51.i297 ], [ %i.aqd, %.preheader.i298 ]
  %wide.load792.111561 = phi <4 x float> [ %.promoted1560, %.preheader51.i297 ], [ %i.aqb, %.preheader.i298 ]
  %wide.load791.111558 = phi <4 x float> [ %.promoted1557, %.preheader51.i297 ], [ %i.aqa, %.preheader.i298 ]
  %wide.load792.101555 = phi <4 x float> [ %.promoted1554, %.preheader51.i297 ], [ %i.apx, %.preheader.i298 ]
  %wide.load791.101552 = phi <4 x float> [ %.promoted1551, %.preheader51.i297 ], [ %i.apw, %.preheader.i298 ]
  %wide.load792.91549 = phi <4 x float> [ %.promoted1548, %.preheader51.i297 ], [ %i.apt, %.preheader.i298 ]
  %wide.load791.91546 = phi <4 x float> [ %.promoted1545, %.preheader51.i297 ], [ %i.aps, %.preheader.i298 ]
  %wide.load792.81543 = phi <4 x float> [ %.promoted1542, %.preheader51.i297 ], [ %i.app, %.preheader.i298 ]
  %wide.load791.81540 = phi <4 x float> [ %.promoted1539, %.preheader51.i297 ], [ %i.apo, %.preheader.i298 ]
  %wide.load792.71537 = phi <4 x float> [ %.promoted1536, %.preheader51.i297 ], [ %i.apl, %.preheader.i298 ]
  %wide.load791.71534 = phi <4 x float> [ %.promoted1533, %.preheader51.i297 ], [ %i.apk, %.preheader.i298 ]
  %wide.load792.61531 = phi <4 x float> [ %.promoted1530, %.preheader51.i297 ], [ %i.aph, %.preheader.i298 ]
  %wide.load791.61528 = phi <4 x float> [ %.promoted1527, %.preheader51.i297 ], [ %i.apg, %.preheader.i298 ]
  %wide.load792.51525 = phi <4 x float> [ %.promoted1524, %.preheader51.i297 ], [ %i.apd, %.preheader.i298 ]
  %wide.load791.51522 = phi <4 x float> [ %.promoted1521, %.preheader51.i297 ], [ %i.apc, %.preheader.i298 ]
  %wide.load792.41519 = phi <4 x float> [ %.promoted1518, %.preheader51.i297 ], [ %i.aoz, %.preheader.i298 ]
  %wide.load791.41516 = phi <4 x float> [ %.promoted1515, %.preheader51.i297 ], [ %i.aoy, %.preheader.i298 ]
  %wide.load792.31513 = phi <4 x float> [ %.promoted1512, %.preheader51.i297 ], [ %i.aov, %.preheader.i298 ]
  %wide.load791.31510 = phi <4 x float> [ %.promoted1509, %.preheader51.i297 ], [ %i.aou, %.preheader.i298 ]
  %wide.load792.21507 = phi <4 x float> [ %.promoted1506, %.preheader51.i297 ], [ %i.aor, %.preheader.i298 ]
  %wide.load791.21504 = phi <4 x float> [ %.promoted1503, %.preheader51.i297 ], [ %i.aoq, %.preheader.i298 ]
  %wide.load792.11501 = phi <4 x float> [ %.promoted1500, %.preheader51.i297 ], [ %i.aon, %.preheader.i298 ]
  %wide.load791.11498 = phi <4 x float> [ %.promoted1497, %.preheader51.i297 ], [ %i.aom, %.preheader.i298 ]
  %i.aog = phi <4 x float> [ %.promoted1495, %.preheader51.i297 ], [ %i.aoj, %.preheader.i298 ]
  %wide.load7911493 = phi <4 x float> [ %main.b.promoted1492, %.preheader51.i297 ], [ %i.aoi, %.preheader.i298 ]
  %indvars.iv77.i299 = phi i64 [ 0, %.preheader51.i297 ], [ %indvars.iv.next78.i306, %.preheader.i298 ] ; 2 uses
  %invariant.gep82.i300.idx = mul nuw nsw i64 %indvars.iv77.i299, 800
  %invariant.gep82.i300 = getelementptr i8, ptr @main.aa, i64 %invariant.gep82.i300.idx ; 28 uses
  %i.aoh = getelementptr i8, ptr %invariant.gep82.i300, i64 16
  %wide.load793 = load <4 x float>, ptr %invariant.gep82.i300, align 16, !tbaa !11
  %wide.load794 = load <4 x float>, ptr %i.aoh, align 16, !tbaa !11
  %i.aoi = fadd <4 x float> %wide.load7911493, %wide.load793 ; 2 uses
  %i.aoj = fadd <4 x float> %i.aog, %wide.load794 ; 2 uses
  %i.aok = getelementptr i8, ptr %invariant.gep82.i300, i64 32
  %i.aol = getelementptr i8, ptr %invariant.gep82.i300, i64 48
  %wide.load793.1 = load <4 x float>, ptr %i.aok, align 16, !tbaa !11
  %wide.load794.1 = load <4 x float>, ptr %i.aol, align 16, !tbaa !11
  %i.aom = fadd <4 x float> %wide.load791.11498, %wide.load793.1 ; 2 uses
  %i.aon = fadd <4 x float> %wide.load792.11501, %wide.load794.1 ; 2 uses
  %i.aoo = getelementptr i8, ptr %invariant.gep82.i300, i64 64
  %i.aop = getelementptr i8, ptr %invariant.gep82.i300, i64 80
  %wide.load793.2 = load <4 x float>, ptr %i.aoo, align 16, !tbaa !11
  %wide.load794.2 = load <4 x float>, ptr %i.aop, align 16, !tbaa !11
  %i.aoq = fadd <4 x float> %wide.load791.21504, %wide.load793.2 ; 2 uses
  %i.aor = fadd <4 x float> %wide.load792.21507, %wide.load794.2 ; 2 uses
  %i.aos = getelementptr i8, ptr %invariant.gep82.i300, i64 96
  %i.aot = getelementptr i8, ptr %invariant.gep82.i300, i64 112
  %wide.load793.3 = load <4 x float>, ptr %i.aos, align 16, !tbaa !11
  %wide.load794.3 = load <4 x float>, ptr %i.aot, align 16, !tbaa !11
  %i.aou = fadd <4 x float> %wide.load791.31510, %wide.load793.3 ; 2 uses
  %i.aov = fadd <4 x float> %wide.load792.31513, %wide.load794.3 ; 2 uses
  %i.aow = getelementptr i8, ptr %invariant.gep82.i300, i64 128
  %i.aox = getelementptr i8, ptr %invariant.gep82.i300, i64 144
  %wide.load793.4 = load <4 x float>, ptr %i.aow, align 16, !tbaa !11
  %wide.load794.4 = load <4 x float>, ptr %i.aox, align 16, !tbaa !11
  %i.aoy = fadd <4 x float> %wide.load791.41516, %wide.load793.4 ; 2 uses
  %i.aoz = fadd <4 x float> %wide.load792.41519, %wide.load794.4 ; 2 uses
  %i.apa = getelementptr i8, ptr %invariant.gep82.i300, i64 160
  %i.apb = getelementptr i8, ptr %invariant.gep82.i300, i64 176
  %wide.load793.5 = load <4 x float>, ptr %i.apa, align 16, !tbaa !11
  %wide.load794.5 = load <4 x float>, ptr %i.apb, align 16, !tbaa !11
  %i.apc = fadd <4 x float> %wide.load791.51522, %wide.load793.5 ; 2 uses
  %i.apd = fadd <4 x float> %wide.load792.51525, %wide.load794.5 ; 2 uses
  %i.ape = getelementptr i8, ptr %invariant.gep82.i300, i64 192
  %i.apf = getelementptr i8, ptr %invariant.gep82.i300, i64 208
  %wide.load793.6 = load <4 x float>, ptr %i.ape, align 16, !tbaa !11
  %wide.load794.6 = load <4 x float>, ptr %i.apf, align 16, !tbaa !11
  %i.apg = fadd <4 x float> %wide.load791.61528, %wide.load793.6 ; 2 uses
  %i.aph = fadd <4 x float> %wide.load792.61531, %wide.load794.6 ; 2 uses
  %i.api = getelementptr i8, ptr %invariant.gep82.i300, i64 224
  %i.apj = getelementptr i8, ptr %invariant.gep82.i300, i64 240
  %wide.load793.7 = load <4 x float>, ptr %i.api, align 16, !tbaa !11
  %wide.load794.7 = load <4 x float>, ptr %i.apj, align 16, !tbaa !11
  %i.apk = fadd <4 x float> %wide.load791.71534, %wide.load793.7 ; 2 uses
  %i.apl = fadd <4 x float> %wide.load792.71537, %wide.load794.7 ; 2 uses
  %i.apm = getelementptr i8, ptr %invariant.gep82.i300, i64 256
  %i.apn = getelementptr i8, ptr %invariant.gep82.i300, i64 272
  %wide.load793.8 = load <4 x float>, ptr %i.apm, align 16, !tbaa !11
  %wide.load794.8 = load <4 x float>, ptr %i.apn, align 16, !tbaa !11
  %i.apo = fadd <4 x float> %wide.load791.81540, %wide.load793.8 ; 2 uses
  %i.app = fadd <4 x float> %wide.load792.81543, %wide.load794.8 ; 2 uses
  %i.apq = getelementptr i8, ptr %invariant.gep82.i300, i64 288
  %i.apr = getelementptr i8, ptr %invariant.gep82.i300, i64 304
  %wide.load793.9 = load <4 x float>, ptr %i.apq, align 16, !tbaa !11
  %wide.load794.9 = load <4 x float>, ptr %i.apr, align 16, !tbaa !11
  %i.aps = fadd <4 x float> %wide.load791.91546, %wide.load793.9 ; 2 uses
  %i.apt = fadd <4 x float> %wide.load792.91549, %wide.load794.9 ; 2 uses
  %i.apu = getelementptr i8, ptr %invariant.gep82.i300, i64 320
  %i.apv = getelementptr i8, ptr %invariant.gep82.i300, i64 336
  %wide.load793.10 = load <4 x float>, ptr %i.apu, align 16, !tbaa !11
  %wide.load794.10 = load <4 x float>, ptr %i.apv, align 16, !tbaa !11
  %i.apw = fadd <4 x float> %wide.load791.101552, %wide.load793.10 ; 2 uses
  %i.apx = fadd <4 x float> %wide.load792.101555, %wide.load794.10 ; 2 uses
  %i.apy = getelementptr i8, ptr %invariant.gep82.i300, i64 352
  %i.apz = getelementptr i8, ptr %invariant.gep82.i300, i64 368
  %wide.load793.11 = load <4 x float>, ptr %i.apy, align 16, !tbaa !11
  %wide.load794.11 = load <4 x float>, ptr %i.apz, align 16, !tbaa !11
  %i.aqa = fadd <4 x float> %wide.load791.111558, %wide.load793.11 ; 2 uses
  %i.aqb = fadd <4 x float> %wide.load792.111561, %wide.load794.11 ; 2 uses
  %gep83.i302 = getelementptr i8, ptr %invariant.gep82.i300, i64 384
  %i.aqc = load float, ptr %gep83.i302, align 16, !tbaa !11
  %i.aqd = fadd float %i.aof, %i.aqc              ; 2 uses
  %gep83.i302.1 = getelementptr i8, ptr %invariant.gep82.i300, i64 388
  %i.aqe = load float, ptr %gep83.i302.1, align 4, !tbaa !11
  %i.aqf = fadd float %i.aoe, %i.aqe              ; 2 uses
  %gep83.i302.2 = getelementptr i8, ptr %invariant.gep82.i300, i64 392
  %i.aqg = load float, ptr %gep83.i302.2, align 8, !tbaa !11
  %i.aqh = fadd float %i.aod, %i.aqg              ; 2 uses
  %gep83.i302.3 = getelementptr i8, ptr %invariant.gep82.i300, i64 396
  %i.aqi = load float, ptr %gep83.i302.3, align 4, !tbaa !11
  %i.aqj = fadd float %i.aoc, %i.aqi              ; 2 uses
  %indvars.iv.next78.i306 = add nuw nsw i64 %indvars.iv77.i299, 1 ; 2 uses
  %exitcond81.not.i307 = icmp eq i64 %indvars.iv.next78.i306, 100
  br i1 %exitcond81.not.i307, label %.lr.ph103.i309.preheader, label %.preheader.i298, !llvm.loop !16

.lr.ph103.i309.preheader:                         ; preds = %.preheader.i298
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
  br label %.lr.ph103.i309

.lr.ph103.i309:                                   ; preds = %.lr.ph103.i309.preheader, %.loopexit.i323
  %i.aqk = phi i32 [ %i.asw, %.loopexit.i323 ], [ 0, %.lr.ph103.i309.preheader ]
  %indvars.iv107.i310 = phi i64 [ %indvars.iv.next108.i322, %.loopexit.i323 ], [ 0, %.lr.ph103.i309.preheader ] ; 11 uses
  %indvars.iv.i311 = phi i64 [ %indvars.iv.next.i324, %.loopexit.i323 ], [ 1, %.lr.ph103.i309.preheader ] ; 2 uses
  %i.aql = sub nsw i64 99, %indvars.iv107.i310    ; 3 uses
  %i.aqm = getelementptr [4 x i8], ptr @main.aa, i64 %indvars.iv107.i310
  %i.aqn = mul nuw nsw i64 %indvars.iv107.i310, 800 ; 2 uses
  %i.aqo = getelementptr i8, ptr %i.aqm, i64 %i.aqn ; 6 uses
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !11 ; 3 uses
  %i.aqq = tail call float @llvm.fabs.f32(float %i.aqp) ; 2 uses
  %xtraiter842 = and i64 %i.aql, 1
  %i.aqr = icmp eq i64 %indvars.iv107.i310, 98
  br i1 %i.aqr, label %.lr.ph48.i.i313.epil.preheader, label %.lr.ph103.i309.new

.lr.ph103.i309.new:                               ; preds = %.lr.ph103.i309
  %unroll_iter846 = and i64 %i.aql, -2
  br label %.lr.ph48.i.i313

.lr.ph48.i.i313:                                  ; preds = %.lr.ph48.i.i313, %.lr.ph103.i309.new
  %indvars.iv52.i.i314 = phi i64 [ 1, %.lr.ph103.i309.new ], [ %indvars.iv.next53.i.i319.1, %.lr.ph48.i.i313 ] ; 4 uses
  %.247.i.i315 = phi i32 [ 0, %.lr.ph103.i309.new ], [ %.3.i.i318.1, %.lr.ph48.i.i313 ]
  %.23345.i.i316 = phi float [ %i.aqq, %.lr.ph103.i309.new ], [ %.334.i.i317.1, %.lr.ph48.i.i313 ] ; 2 uses
  %niter847 = phi i64 [ 0, %.lr.ph103.i309.new ], [ %niter847.next.1, %.lr.ph48.i.i313 ]
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i314
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !11
  %i.aqu = tail call float @llvm.fabs.f32(float %i.aqt) ; 2 uses
  %i.aqv = fcmp ogt float %i.aqu, %.23345.i.i316  ; 2 uses
  %.334.i.i317 = select i1 %i.aqv, float %i.aqu, float %.23345.i.i316 ; 2 uses
  %i.aqw = trunc nuw nsw i64 %indvars.iv52.i.i314 to i32
  %.3.i.i318 = select i1 %i.aqv, i32 %i.aqw, i32 %.247.i.i315
  %indvars.iv.next53.i.i319 = add nuw nsw i64 %indvars.iv52.i.i314, 1 ; 2 uses
  %i.aqx = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv.next53.i.i319
  %i.aqy = load float, ptr %i.aqx, align 4, !tbaa !11
  %i.aqz = tail call float @llvm.fabs.f32(float %i.aqy) ; 2 uses
  %i.ara = fcmp ogt float %i.aqz, %.334.i.i317    ; 2 uses
  %.334.i.i317.1 = select i1 %i.ara, float %i.aqz, float %.334.i.i317 ; 2 uses
  %i.arb = trunc nuw nsw i64 %indvars.iv.next53.i.i319 to i32
  %.3.i.i318.1 = select i1 %i.ara, i32 %i.arb, i32 %.3.i.i318 ; 3 uses
  %indvars.iv.next53.i.i319.1 = add nuw nsw i64 %indvars.iv52.i.i314, 2 ; 2 uses
  %niter847.next.1 = add nuw i64 %niter847, 2     ; 2 uses
  %niter847.ncmp.1 = icmp eq i64 %niter847.next.1, %unroll_iter846
  br i1 %niter847.ncmp.1, label %idamax.exit.loopexit.i321.unr-lcssa, label %.lr.ph48.i.i313, !llvm.loop !27

idamax.exit.loopexit.i321.unr-lcssa:              ; preds = %.lr.ph48.i.i313
  %lcmp.mod843.not = icmp eq i64 %xtraiter842, 0
  br i1 %lcmp.mod843.not, label %idamax.exit.loopexit.i321, label %.lr.ph48.i.i313.epil.preheader

.lr.ph48.i.i313.epil.preheader:                   ; preds = %idamax.exit.loopexit.i321.unr-lcssa, %.lr.ph103.i309
  %indvars.iv52.i.i314.epil.init = phi i64 [ 1, %.lr.ph103.i309 ], [ %indvars.iv.next53.i.i319.1, %idamax.exit.loopexit.i321.unr-lcssa ] ; 2 uses
  %.247.i.i315.epil.init = phi i32 [ 0, %.lr.ph103.i309 ], [ %.3.i.i318.1, %idamax.exit.loopexit.i321.unr-lcssa ]
  %.23345.i.i316.epil.init = phi float [ %i.aqq, %.lr.ph103.i309 ], [ %.334.i.i317.1, %idamax.exit.loopexit.i321.unr-lcssa ]
  %lcmp.mod845 = trunc i64 %i.aql to i1
  tail call void @llvm.assume(i1 %lcmp.mod845)
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv52.i.i314.epil.init
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !11
  %i.are = tail call float @llvm.fabs.f32(float %i.ard)
  %i.arf = fcmp ogt float %i.are, %.23345.i.i316.epil.init
  %i.arg = trunc nuw nsw i64 %indvars.iv52.i.i314.epil.init to i32
  %.3.i.i318.epil = select i1 %i.arf, i32 %i.arg, i32 %.247.i.i315.epil.init
  br label %idamax.exit.loopexit.i321

idamax.exit.loopexit.i321:                        ; preds = %idamax.exit.loopexit.i321.unr-lcssa, %.lr.ph48.i.i313.epil.preheader
  %.3.i.i318.lcssa = phi i32 [ %.3.i.i318.1, %idamax.exit.loopexit.i321.unr-lcssa ], [ %.3.i.i318.epil, %.lr.ph48.i.i313.epil.preheader ] ; 2 uses
  %indvars109.i312 = trunc i64 %indvars.iv107.i310 to i32 ; 2 uses
  %indvars.iv.next108.i322 = add nuw nsw i64 %indvars.iv107.i310, 1 ; 2 uses
  %i.arh = add nsw i32 %.3.i.i318.lcssa, %indvars109.i312 ; 2 uses
  %i.ari = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv107.i310
  store i32 %i.arh, ptr %i.ari, align 4, !tbaa !4
  %i.arj = sext i32 %i.arh to i64                 ; 2 uses
  %i.ark = getelementptr i8, ptr @main.aa, i64 %i.aqn
  %i.arl = getelementptr [4 x i8], ptr %i.ark, i64 %i.arj ; 2 uses
  %i.arm = load float, ptr %i.arl, align 4, !tbaa !11 ; 3 uses
  %i.arn = fcmp une float %i.arm, 0.000000e+00
  br i1 %i.arn, label %bb.al, label %.loopexit.i323

bb.al:                                            ; preds = %idamax.exit.loopexit.i321
  %.not.i327 = icmp eq i32 %.3.i.i318.lcssa, 0    ; 2 uses
  br i1 %.not.i327, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store float %i.aqp, ptr %i.arl, align 4, !tbaa !11
  store float %i.arm, ptr %i.aqo, align 4, !tbaa !11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.aro = phi float [ %i.arm, %bb.am ], [ %i.aqp, %bb.al ]
  %i.arp = fdiv float -1.000000e+00, %i.aro       ; 2 uses
  %i.arq = sub nuw nsw i64 99, %indvars.iv107.i310 ; 6 uses
  %i.arr = getelementptr i8, ptr %i.aqo, i64 4    ; 4 uses
  %min.iters.check774 = icmp samesign ugt i64 %indvars.iv107.i310, 91
  br i1 %min.iters.check774, label %.lr.ph25.i.i328.preheader, label %vector.ph775

vector.ph775:                                     ; preds = %bb.an
  %n.vec776 = and i64 %i.arq, 120                 ; 3 uses
  %broadcast.splatinsert777 = insertelement <4 x float> poison, float %i.arp, i64 0
  %broadcast.splat778 = shufflevector <4 x float> %broadcast.splatinsert777, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body779

vector.body779:                                   ; preds = %vector.body779, %vector.ph775
  %index780 = phi i64 [ 0, %vector.ph775 ], [ %index.next783, %vector.body779 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index780 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 16 ; 2 uses
  %wide.load781 = load <4 x float>, ptr %i.ars, align 4, !tbaa !11
  %wide.load782 = load <4 x float>, ptr %i.art, align 4, !tbaa !11
  %i.aru = fmul <4 x float> %broadcast.splat778, %wide.load781
  %i.arv = fmul <4 x float> %broadcast.splat778, %wide.load782
  store <4 x float> %i.aru, ptr %i.ars, align 4, !tbaa !11
  store <4 x float> %i.arv, ptr %i.art, align 4, !tbaa !11
  %index.next783 = add nuw i64 %index780, 8       ; 2 uses
  %i.arw = icmp eq i64 %index.next783, %n.vec776
  br i1 %i.arw, label %middle.block784, label %vector.body779, !llvm.loop !48

middle.block784:                                  ; preds = %vector.body779
  %cmp.n785 = icmp eq i64 %i.arq, %n.vec776
  br i1 %cmp.n785, label %.lr.ph.i332, label %.lr.ph25.i.i328.preheader

.lr.ph25.i.i328.preheader:                        ; preds = %bb.an, %middle.block784
  %indvars.iv28.i.i329.ph = phi i64 [ 0, %bb.an ], [ %n.vec776, %middle.block784 ]
  br label %.lr.ph25.i.i328

.lr.ph25.i.i328:                                  ; preds = %.lr.ph25.i.i328.preheader, %.lr.ph25.i.i328
  %indvars.iv28.i.i329 = phi i64 [ %indvars.iv.next29.i.i330, %.lr.ph25.i.i328 ], [ %indvars.iv28.i.i329.ph, %.lr.ph25.i.i328.preheader ] ; 2 uses
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv28.i.i329 ; 2 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !11
  %i.arz = fmul float %i.arp, %i.ary
  store float %i.arz, ptr %i.arx, align 4, !tbaa !11
  %indvars.iv.next29.i.i330 = add nuw nsw i64 %indvars.iv28.i.i329, 1 ; 2 uses
  %exitcond.not.i.i331 = icmp eq i64 %indvars.iv.next29.i.i330, %i.arq
  br i1 %exitcond.not.i.i331, label %.lr.ph.i332, label %.lr.ph25.i.i328, !llvm.loop !49

.lr.ph.i332:                                      ; preds = %.lr.ph25.i.i328, %middle.block784
  %invariant.gep.i333 = getelementptr [4 x i8], ptr @main.aa, i64 %i.arj
  %min.iters.check758 = icmp samesign ugt i64 %indvars.iv107.i310, 91
  %n.vec760 = and i64 %i.arq, 120                 ; 3 uses
  %cmp.n771 = icmp eq i64 %i.arq, %n.vec760
  br label %bb.ao

bb.ao:                                            ; preds = %daxpy.exit.i342, %.lr.ph.i332
  %indvars.iv104.i334 = phi i64 [ %indvars.iv.i311, %.lr.ph.i332 ], [ %indvars.iv.next105.i343, %daxpy.exit.i342 ] ; 2 uses
  %i.asa = mul nuw nsw i64 %indvars.iv104.i334, 200 ; 2 uses
  %gep.i335 = getelementptr [4 x i8], ptr %invariant.gep.i333, i64 %i.asa ; 2 uses
  %i.asb = load float, ptr %gep.i335, align 4, !tbaa !11 ; 4 uses
  %.pre.i336 = add nuw nsw i64 %i.asa, %indvars.iv107.i310 ; 2 uses
  br i1 %.not.i327, label %._crit_edge.i337, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr @main.aa, i64 %.pre.i336 ; 2 uses
  %i.asd = load float, ptr %i.asc, align 4, !tbaa !11
  store float %i.asd, ptr %gep.i335, align 4, !tbaa !11
  store float %i.asb, ptr %i.asc, align 4, !tbaa !11
  br label %._crit_edge.i337

._crit_edge.i337:                                 ; preds = %bb.ap, %bb.ao
  %i.ase = getelementptr [4 x i8], ptr @main.aa, i64 %.pre.i336
  %i.asf = getelementptr i8, ptr %i.ase, i64 4    ; 2 uses
  %i.asg = fcmp oeq float %i.asb, 0.000000e+00
  br i1 %i.asg, label %daxpy.exit.i342, label %.lr.ph.i.i338.preheader

.lr.ph.i.i338.preheader:                          ; preds = %._crit_edge.i337
  br i1 %min.iters.check758, label %.lr.ph.i.i338.preheader801, label %vector.ph759

vector.ph759:                                     ; preds = %.lr.ph.i.i338.preheader
  %broadcast.splatinsert761 = insertelement <4 x float> poison, float %i.asb, i64 0
  %broadcast.splat762 = shufflevector <4 x float> %broadcast.splatinsert761, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body763

vector.body763:                                   ; preds = %vector.body763, %vector.ph759
  %index764 = phi i64 [ 0, %vector.ph759 ], [ %index.next769, %vector.body763 ] ; 3 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %index764 ; 3 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 16 ; 2 uses
  %wide.load765 = load <4 x float>, ptr %i.ash, align 4, !tbaa !11
  %wide.load766 = load <4 x float>, ptr %i.asi, align 4, !tbaa !11
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %index764 ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %wide.load767 = load <4 x float>, ptr %i.asj, align 4, !tbaa !11
  %wide.load768 = load <4 x float>, ptr %i.ask, align 4, !tbaa !11
  %i.asl = fmul <4 x float> %broadcast.splat762, %wide.load767
  %i.asm = fmul <4 x float> %broadcast.splat762, %wide.load768
  %i.asn = fadd <4 x float> %wide.load765, %i.asl
  %i.aso = fadd <4 x float> %wide.load766, %i.asm
  store <4 x float> %i.asn, ptr %i.ash, align 4, !tbaa !11
  store <4 x float> %i.aso, ptr %i.asi, align 4, !tbaa !11
  %index.next769 = add nuw i64 %index764, 8       ; 2 uses
  %i.asp = icmp eq i64 %index.next769, %n.vec760
  br i1 %i.asp, label %middle.block770, label %vector.body763, !llvm.loop !50

middle.block770:                                  ; preds = %vector.body763
  br i1 %cmp.n771, label %daxpy.exit.i342, label %.lr.ph.i.i338.preheader801

.lr.ph.i.i338.preheader801:                       ; preds = %.lr.ph.i.i338.preheader, %middle.block770
  %indvars.iv.i.i339.ph = phi i64 [ 0, %.lr.ph.i.i338.preheader ], [ %n.vec760, %middle.block770 ]
  br label %.lr.ph.i.i338

.lr.ph.i.i338:                                    ; preds = %.lr.ph.i.i338.preheader801, %.lr.ph.i.i338
  %indvars.iv.i.i339 = phi i64 [ %indvars.iv.next.i.i340, %.lr.ph.i.i338 ], [ %indvars.iv.i.i339.ph, %.lr.ph.i.i338.preheader801 ] ; 3 uses
  %i.asq = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv.i.i339 ; 2 uses
  %i.asr = load float, ptr %i.asq, align 4, !tbaa !11
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i.i339
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !11
  %i.asu = fmul float %i.asb, %i.ast
  %i.asv = fadd float %i.asr, %i.asu
  store float %i.asv, ptr %i.asq, align 4, !tbaa !11
  %indvars.iv.next.i.i340 = add nuw nsw i64 %indvars.iv.i.i339, 1 ; 2 uses
  %exitcond.not.i99.i341 = icmp eq i64 %indvars.iv.next.i.i340, %i.arq
  br i1 %exitcond.not.i99.i341, label %daxpy.exit.i342, label %.lr.ph.i.i338, !llvm.loop !51

daxpy.exit.i342:                                  ; preds = %.lr.ph.i.i338, %middle.block770, %._crit_edge.i337
  %indvars.iv.next105.i343 = add nuw nsw i64 %indvars.iv104.i334, 1 ; 2 uses
  %exitcond.not.i344 = icmp eq i64 %indvars.iv.next105.i343, 100
  br i1 %exitcond.not.i344, label %.loopexit.i323, label %bb.ao, !llvm.loop !32

.loopexit.i323:                                   ; preds = %daxpy.exit.i342, %idamax.exit.loopexit.i321
  %i.asw = phi i32 [ %indvars109.i312, %idamax.exit.loopexit.i321 ], [ %i.aqk, %daxpy.exit.i342 ] ; 2 uses
  %indvars.iv.next.i324 = add nuw nsw i64 %indvars.iv.i311, 1
  %exitcond111.not.i325 = icmp eq i64 %indvars.iv.next108.i322, 99
  br i1 %exitcond111.not.i325, label %.loopexit100.i326, label %.lr.ph103.i309, !llvm.loop !33

.loopexit100.i326:                                ; preds = %.loopexit.i323
  store i32 99, ptr getelementptr inbounds nuw (i8, ptr @main.ipvt, i64 396), align 4, !tbaa !4
  %i.asx = add nuw nsw i32 %storemerge83424, 1    ; 2 uses
  %exitcond469.not = icmp eq i32 %i.asx, %i.anp
  br i1 %exitcond469.not, label %._crit_edge425, label %.preheader52.i284.preheader, !llvm.loop !52

._crit_edge425:                                   ; preds = %.loopexit100.i326
  %i.asy = load float, ptr getelementptr inbounds nuw (i8, ptr @main.aa, i64 79596), align 4, !tbaa !11
  %i.asz = fcmp oeq float %i.asy, 0.000000e+00
  %i.ata = select i1 %i.asz, i32 99, i32 %i.asw
  store i32 %i.ata, ptr @main.info, align 4, !tbaa !4
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge425, %bb.aj
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
  br i1 %i.atq, label %.preheader, label %._crit_edge430

.preheader:                                       ; preds = %bb.aq, %dgesl.exit368
  %storemerge84429 = phi i32 [ %i.avt, %dgesl.exit368 ], [ 0, %bb.aq ]
  br label %bb.ar

bb.ar:                                            ; preds = %.preheader, %daxpy.exit.i353
  %indvars.iv146.i346 = phi i64 [ %indvars.iv.next147.i348, %daxpy.exit.i353 ], [ 0, %.preheader ] ; 7 uses
  %i.atr = getelementptr inbounds nuw [4 x i8], ptr @main.ipvt, i64 %indvars.iv146.i346
  %i.ats = load i32, ptr %i.atr, align 4, !tbaa !4 ; 2 uses
  %i.att = sext i32 %i.ats to i64
  %i.atu = getelementptr inbounds [4 x i8], ptr @main.b, i64 %i.att ; 2 uses
  %i.atv = load float, ptr %i.atu, align 4, !tbaa !11 ; 4 uses
  %i.atw = zext i32 %i.ats to i64
  %.not103.i347 = icmp eq i64 %indvars.iv146.i346, %i.atw
  br i1 %.not103.i347, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.atx = getelementptr inbounds nuw [4 x i8], ptr @main.b, i64 %indvars.iv146.i346 ; 2 uses
  %i.aty = load float, ptr %i.atx, align 4, !tbaa !11
  store float %i.aty, ptr %i.atu, align 4, !tbaa !11
  store float %i.atv, ptr %i.atx, align 4, !tbaa !11
end_hunk_2
