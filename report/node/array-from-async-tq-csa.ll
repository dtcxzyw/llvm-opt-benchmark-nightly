Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/array-from-async-tq-csa?download=true
inline.NumInlined: 10150
inline.NumDeleted: 751
begin_hunk_0_@_ZN2v88internal39CreateArrayFromIterableAsynchronously_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE:bb.a
  store ptr %i.um, ptr %i.un, align 8
  %i.up = getelementptr inbounds nuw i8, ptr %391, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.up, i8 0, i64 24, i1 false)
  %i.uq = getelementptr inbounds nuw i8, ptr %391, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.uq, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %392) #10
  %i.ur = load ptr, ptr %315, align 8
  store ptr %i.ur, ptr %392, align 8
  %i.us = getelementptr inbounds nuw i8, ptr %392, i64 8 ; 3 uses
  %i.ut = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.ut, ptr %i.us, align 8
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ut, i8 0, i64 72, i1 false)
  %i.uv = getelementptr inbounds nuw i8, ptr %392, i64 16 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %392, i64 24 ; 2 uses
  store ptr %i.uu, ptr %i.uw, align 8
  store ptr %i.uu, ptr %i.uv, align 8
  %i.ux = getelementptr inbounds nuw i8, ptr %392, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ux, i8 0, i64 24, i1 false)
  %i.uy = getelementptr inbounds nuw i8, ptr %392, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.uy, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %393) #10
  %i.uz = load ptr, ptr %315, align 8
  store ptr %i.uz, ptr %393, align 8
  %i.va = getelementptr inbounds nuw i8, ptr %393, i64 8 ; 3 uses
  %i.vb = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.vb, ptr %i.va, align 8
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.vb, i8 0, i64 96, i1 false)
  %i.vd = getelementptr inbounds nuw i8, ptr %393, i64 16 ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %393, i64 24 ; 2 uses
  store ptr %i.vc, ptr %i.ve, align 8
  store ptr %i.vc, ptr %i.vd, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %393, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vf, i8 0, i64 24, i1 false)
  %i.vg = getelementptr inbounds nuw i8, ptr %393, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.vg, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %394) #10
  %i.vh = load ptr, ptr %315, align 8
  store ptr %i.vh, ptr %394, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %394, i64 8 ; 3 uses
  %i.vj = call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #12 ; 3 uses
  store ptr %i.vj, ptr %i.vi, align 8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.vj, i8 0, i64 144, i1 false)
  %i.vl = getelementptr inbounds nuw i8, ptr %394, i64 16 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %394, i64 24 ; 2 uses
  store ptr %i.vk, ptr %i.vm, align 8
  store ptr %i.vk, ptr %i.vl, align 8
  %i.vn = getelementptr inbounds nuw i8, ptr %394, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vn, i8 0, i64 24, i1 false)
  %i.vo = getelementptr inbounds nuw i8, ptr %394, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.vo, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %395) #10
  %i.vp = load ptr, ptr %315, align 8
  store ptr %i.vp, ptr %395, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %395, i64 8 ; 3 uses
  %i.vr = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #12 ; 3 uses
  store ptr %i.vr, ptr %i.vq, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.vr, i8 0, i64 120, i1 false)
  %i.vt = getelementptr inbounds nuw i8, ptr %395, i64 16 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %395, i64 24 ; 2 uses
  store ptr %i.vs, ptr %i.vu, align 8
  store ptr %i.vs, ptr %i.vt, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %395, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vv, i8 0, i64 24, i1 false)
  %i.vw = getelementptr inbounds nuw i8, ptr %395, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.vw, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %396) #10
  %i.vx = load ptr, ptr %315, align 8
  store ptr %i.vx, ptr %396, align 8
  %i.vy = getelementptr inbounds nuw i8, ptr %396, i64 8 ; 3 uses
  %i.vz = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.vz, ptr %i.vy, align 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.vz, i8 0, i64 96, i1 false)
  %i.wb = getelementptr inbounds nuw i8, ptr %396, i64 16 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %396, i64 24 ; 2 uses
  store ptr %i.wa, ptr %i.wc, align 8
  store ptr %i.wa, ptr %i.wb, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %396, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wd, i8 0, i64 24, i1 false)
  %i.we = getelementptr inbounds nuw i8, ptr %396, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.we, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %397) #10
  %i.wf = load ptr, ptr %315, align 8
  store ptr %i.wf, ptr %397, align 8
  %i.wg = getelementptr inbounds nuw i8, ptr %397, i64 8 ; 3 uses
  %i.wh = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.wh, ptr %i.wg, align 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wh, i8 0, i64 96, i1 false)
  %i.wj = getelementptr inbounds nuw i8, ptr %397, i64 16 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %397, i64 24 ; 2 uses
  store ptr %i.wi, ptr %i.wk, align 8
  store ptr %i.wi, ptr %i.wj, align 8
  %i.wl = getelementptr inbounds nuw i8, ptr %397, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wl, i8 0, i64 24, i1 false)
  %i.wm = getelementptr inbounds nuw i8, ptr %397, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.wm, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %398) #10
  %i.wn = load ptr, ptr %315, align 8
  store ptr %i.wn, ptr %398, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %398, i64 8 ; 3 uses
  %i.wp = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.wp, ptr %i.wo, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wp, i8 0, i64 96, i1 false)
  %i.wr = getelementptr inbounds nuw i8, ptr %398, i64 16 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %398, i64 24 ; 2 uses
  store ptr %i.wq, ptr %i.ws, align 8
  store ptr %i.wq, ptr %i.wr, align 8
  %i.wt = getelementptr inbounds nuw i8, ptr %398, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wt, i8 0, i64 24, i1 false)
  %i.wu = getelementptr inbounds nuw i8, ptr %398, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.wu, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %399) #10
  %i.wv = load ptr, ptr %315, align 8
  store ptr %i.wv, ptr %399, align 8
  %i.ww = getelementptr inbounds nuw i8, ptr %399, i64 8 ; 3 uses
  %i.wx = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.wx, ptr %i.ww, align 8
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.wx, i8 0, i64 96, i1 false)
  %i.wz = getelementptr inbounds nuw i8, ptr %399, i64 16 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %399, i64 24 ; 2 uses
  store ptr %i.wy, ptr %i.xa, align 8
  store ptr %i.wy, ptr %i.wz, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %399, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xb, i8 0, i64 24, i1 false)
  %i.xc = getelementptr inbounds nuw i8, ptr %399, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.xc, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %400) #10
  %i.xd = load ptr, ptr %315, align 8
  store ptr %i.xd, ptr %400, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %400, i64 8 ; 3 uses
  %i.xf = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.xf, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xf, i8 0, i64 96, i1 false)
  %i.xh = getelementptr inbounds nuw i8, ptr %400, i64 16 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %400, i64 24 ; 2 uses
  store ptr %i.xg, ptr %i.xi, align 8
  store ptr %i.xg, ptr %i.xh, align 8
  %i.xj = getelementptr inbounds nuw i8, ptr %400, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xj, i8 0, i64 24, i1 false)
  %i.xk = getelementptr inbounds nuw i8, ptr %400, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.xk, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %401) #10
  %i.xl = load ptr, ptr %315, align 8
  store ptr %i.xl, ptr %401, align 8
  %i.xm = getelementptr inbounds nuw i8, ptr %401, i64 8 ; 3 uses
  %i.xn = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.xn, ptr %i.xm, align 8
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xn, i8 0, i64 96, i1 false)
  %i.xp = getelementptr inbounds nuw i8, ptr %401, i64 16 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %401, i64 24 ; 2 uses
  store ptr %i.xo, ptr %i.xq, align 8
  store ptr %i.xo, ptr %i.xp, align 8
  %i.xr = getelementptr inbounds nuw i8, ptr %401, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xr, i8 0, i64 24, i1 false)
  %i.xs = getelementptr inbounds nuw i8, ptr %401, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.xs, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %402) #10
  %i.xt = load ptr, ptr %315, align 8
  store ptr %i.xt, ptr %402, align 8
  %i.xu = getelementptr inbounds nuw i8, ptr %402, i64 8 ; 3 uses
  %i.xv = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.xv, ptr %i.xu, align 8
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.xv, i8 0, i64 96, i1 false)
  %i.xx = getelementptr inbounds nuw i8, ptr %402, i64 16 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %402, i64 24 ; 2 uses
  store ptr %i.xw, ptr %i.xy, align 8
  store ptr %i.xw, ptr %i.xx, align 8
  %i.xz = getelementptr inbounds nuw i8, ptr %402, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.xz, i8 0, i64 24, i1 false)
  %i.ya = getelementptr inbounds nuw i8, ptr %402, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ya, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %403) #10
  %i.yb = load ptr, ptr %315, align 8
  store ptr %i.yb, ptr %403, align 8
  %i.yc = getelementptr inbounds nuw i8, ptr %403, i64 8 ; 3 uses
  %i.yd = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.yd, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.yd, i8 0, i64 96, i1 false)
  %i.yf = getelementptr inbounds nuw i8, ptr %403, i64 16 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %403, i64 24 ; 2 uses
  store ptr %i.ye, ptr %i.yg, align 8
  store ptr %i.ye, ptr %i.yf, align 8
  %i.yh = getelementptr inbounds nuw i8, ptr %403, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yh, i8 0, i64 24, i1 false)
  %i.yi = getelementptr inbounds nuw i8, ptr %403, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.yi, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %404) #10
  %i.yj = load ptr, ptr %315, align 8
  store ptr %i.yj, ptr %404, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %404, i64 8 ; 3 uses
  %i.yl = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 3 uses
  store ptr %i.yl, ptr %i.yk, align 8
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yl, i8 0, i64 48, i1 false)
  %i.yn = getelementptr inbounds nuw i8, ptr %404, i64 16 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %404, i64 24 ; 2 uses
  store ptr %i.ym, ptr %i.yo, align 8
  store ptr %i.ym, ptr %i.yn, align 8
  %i.yp = getelementptr inbounds nuw i8, ptr %404, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.yp, i8 0, i64 24, i1 false)
  %i.yq = getelementptr inbounds nuw i8, ptr %404, i64 56 ; 57 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.yq, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %405) #10
  %i.yr = load ptr, ptr %315, align 8
  store ptr %i.yr, ptr %405, align 8
  %i.ys = getelementptr inbounds nuw i8, ptr %405, i64 8 ; 3 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %405, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ys, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.yt, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %406) #10
  %i.yu = load ptr, ptr %315, align 8
  store ptr %i.yu, ptr %406, align 8
  %i.yv = getelementptr inbounds nuw i8, ptr %406, i64 8 ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %406, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yv, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.yw, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %407) #10
  %i.yx = load ptr, ptr %315, align 8
  store ptr %i.yx, ptr %407, align 8
  %i.yy = getelementptr inbounds nuw i8, ptr %407, i64 8 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %407, i64 56 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.yy, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.yz, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %408) #10
  %i.za = load ptr, ptr %315, align 8
  store ptr %i.za, ptr %408, align 8
  %i.zb = getelementptr inbounds nuw i8, ptr %408, i64 8 ; 3 uses
  %i.zc = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.zc, ptr %i.zb, align 8
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zc, i8 0, i64 24, i1 false)
  %i.ze = getelementptr inbounds nuw i8, ptr %408, i64 16 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %408, i64 24 ; 2 uses
  store ptr %i.zd, ptr %i.zf, align 8
  store ptr %i.zd, ptr %i.ze, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %408, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zg, i8 0, i64 24, i1 false)
  %i.zh = getelementptr inbounds nuw i8, ptr %408, i64 56 ; 10 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.zh, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %409) #10
  %i.zi = load ptr, ptr %315, align 8
  store ptr %i.zi, ptr %409, align 8
  %i.zj = getelementptr inbounds nuw i8, ptr %409, i64 8 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %409, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.zj, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.zk, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %314)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %314, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %316, ptr noundef nonnull %314) #10
  %i.zl = load ptr, ptr %314, align 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.zl, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.zm = getelementptr inbounds nuw i8, ptr %314, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8
  %i.zo = ptrtoint ptr %i.zn to i64
  %i.zp = ptrtoint ptr %i.zl to i64
  %i.zq = sub i64 %i.zo, %i.zp
  call void @_ZdlPvm(ptr noundef nonnull %i.zl, i64 noundef %i.zq) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %314)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %i.c) #10
  %i.zr = getelementptr inbounds nuw i8, ptr %316, i64 64
  %i.zs = load i64, ptr %i.zr, align 8
  %.not = icmp eq i64 %i.zs, 0
  br i1 %.not, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %313)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %313, i8 0, i64 24, i1 false)
  %i.zt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %316, ptr noundef nonnull %313) #10 ; 0 uses
  %i.zu = load ptr, ptr %313, align 8             ; 3 uses
  %.not.i.i.i.i.i178 = icmp eq ptr %i.zu, null
  br i1 %.not.i.i.i.i.i178, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.zv = getelementptr inbounds nuw i8, ptr %313, i64 16
  %i.zw = load ptr, ptr %i.zv, align 8
  %i.zx = ptrtoint ptr %i.zw to i64
  %i.zy = ptrtoint ptr %i.zu to i64
  %i.zz = sub i64 %i.zx, %i.zy
  call void @_ZdlPvm(ptr noundef nonnull %i.zu, i64 noundef %i.zz) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %313)
  call void @llvm.lifetime.start.p0(ptr nonnull %410) #10
  %i.aaa = load ptr, ptr %315, align 8
  store ptr %i.aaa, ptr %410, align 8
  %i.aab = getelementptr inbounds nuw i8, ptr %410, i64 8 ; 3 uses
  %i.aac = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.aac, ptr %i.aab, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aac, i8 0, i64 24, i1 false)
  %i.aae = getelementptr inbounds nuw i8, ptr %410, i64 16 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %410, i64 24 ; 2 uses
  store ptr %i.aad, ptr %i.aaf, align 8
  store ptr %i.aad, ptr %i.aae, align 8
  %i.aag = getelementptr inbounds nuw i8, ptr %410, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aag, i8 0, i64 24, i1 false)
  %i.aah = getelementptr inbounds nuw i8, ptr %410, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.aah, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %411) #10
  call void @_ZN2v88internal8compiler22ScopedExceptionHandlerC1EPNS1_13CodeAssemblerEPNS1_31CodeAssemblerParameterizedLabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEE(ptr noundef nonnull align 8 dereferenceable(40) %411, ptr noundef nonnull %315, ptr noundef nonnull %410) #10
  %i.aai = load ptr, ptr %2, align 8
  store ptr %i.aai, ptr %413, align 8
  call void @_ZN2v88internal22GetIteratorResultMap_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.43") align 8 %412, ptr noundef %1, ptr noundef nonnull dead_on_return %413) #10
  %i.aaj = load ptr, ptr %412, align 8, !noalias !366
  call void @_ZN2v88internal8compiler22ScopedExceptionHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %411) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %411) #10
  %i.aak = getelementptr inbounds nuw i8, ptr %410, i64 64
  %i.aal = load i64, ptr %i.aak, align 8
  %.not5408 = icmp eq i64 %i.aal, 0
  br i1 %.not5408, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %414) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %414, ptr noundef nonnull %315, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %414) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %i.aah) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %312)
  %i.aam = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #12 ; 3 uses
  store ptr %i.aam, ptr %312, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 1 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %312, i64 16 ; 2 uses
  store ptr %i.aan, ptr %i.aao, align 8
  store i8 9, ptr %i.aam, align 1
  %i.aap = getelementptr inbounds nuw i8, ptr %312, i64 8
  store ptr %i.aan, ptr %i.aap, align 8
  %i.aaq = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %410, ptr noundef nonnull %312) #10
  %i.aar = load ptr, ptr %312, align 8            ; 3 uses
  %.not.i.i.i.i.i179 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i.i.i.i179, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aas = load ptr, ptr %i.aao, align 8
  %i.aat = ptrtoint ptr %i.aas to i64
  %i.aau = ptrtoint ptr %i.aar to i64
  %i.aav = sub i64 %i.aat, %i.aau
  call void @_ZdlPvm(ptr noundef nonnull %i.aar, i64 noundef %i.aav) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  %i.aaw = load ptr, ptr %i.aaq, align 8
  %i.aax = load ptr, ptr %i.aaw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %312)
  call void @llvm.lifetime.start.p0(ptr nonnull %311)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %311, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %317, ptr noundef nonnull %311) #10
  %i.aay = load ptr, ptr %311, align 8            ; 3 uses
  %.not.i.i.i.i.i180 = icmp eq ptr %i.aay, null
  br i1 %.not.i.i.i.i.i180, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit181, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i
  %i.aaz = getelementptr inbounds nuw i8, ptr %311, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = ptrtoint ptr %i.aba to i64
  %i.abc = ptrtoint ptr %i.aay to i64
  %i.abd = sub i64 %i.abb, %i.abc
  call void @_ZdlPvm(ptr noundef nonnull %i.aay, i64 noundef %i.abd) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit181

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit181: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %311)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %i.f) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %315, ptr noundef nonnull %414) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %414) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %414) #10
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit181, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %.sroa.05381.0 = phi ptr [ %i.aax, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit181 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit ]
  call void @_ZN2v88internal41kArrayFromAsyncIterableResolveMapfnSlot_0EPNS0_8compiler18CodeAssemblerStateE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %419, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %415) #10
  %i.abe = load ptr, ptr %315, align 8
  store ptr %i.abe, ptr %415, align 8
  %i.abf = getelementptr inbounds nuw i8, ptr %415, i64 8 ; 3 uses
  %i.abg = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.abg, ptr %i.abf, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abg, i8 0, i64 24, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %415, i64 16 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %415, i64 24 ; 2 uses
  store ptr %i.abh, ptr %i.abj, align 8
  store ptr %i.abh, ptr %i.abi, align 8
  %i.abk = getelementptr inbounds nuw i8, ptr %415, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal40CreateArrayFromArrayLikeAsynchronously_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEE:bb.a
  store ptr %i.oa, ptr %i.ob, align 8
  %i.od = getelementptr inbounds nuw i8, ptr %295, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.od, i8 0, i64 24, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %295, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.oe, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %296) #10
  %i.of = load ptr, ptr %240, align 8
  store ptr %i.of, ptr %296, align 8
  %i.og = getelementptr inbounds nuw i8, ptr %296, i64 8 ; 3 uses
  %i.oh = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.oh, ptr %i.og, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.oh, i8 0, i64 72, i1 false)
  %i.oj = getelementptr inbounds nuw i8, ptr %296, i64 16 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %296, i64 24 ; 2 uses
  store ptr %i.oi, ptr %i.ok, align 8
  store ptr %i.oi, ptr %i.oj, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %296, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ol, i8 0, i64 24, i1 false)
  %i.om = getelementptr inbounds nuw i8, ptr %296, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.om, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %297) #10
  %i.on = load ptr, ptr %240, align 8
  store ptr %i.on, ptr %297, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %297, i64 8 ; 3 uses
  %i.op = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.op, ptr %i.oo, align 8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.op, i8 0, i64 72, i1 false)
  %i.or = getelementptr inbounds nuw i8, ptr %297, i64 16 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %297, i64 24 ; 2 uses
  store ptr %i.oq, ptr %i.os, align 8
  store ptr %i.oq, ptr %i.or, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %297, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ot, i8 0, i64 24, i1 false)
  %i.ou = getelementptr inbounds nuw i8, ptr %297, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ou, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %298) #10
  %i.ov = load ptr, ptr %240, align 8
  store ptr %i.ov, ptr %298, align 8
  %i.ow = getelementptr inbounds nuw i8, ptr %298, i64 8 ; 3 uses
  %i.ox = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.ox, ptr %i.ow, align 8
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ox, i8 0, i64 72, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %298, i64 16 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %298, i64 24 ; 2 uses
  store ptr %i.oy, ptr %i.pa, align 8
  store ptr %i.oy, ptr %i.oz, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %298, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pb, i8 0, i64 24, i1 false)
  %i.pc = getelementptr inbounds nuw i8, ptr %298, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.pc, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %299) #10
  %i.pd = load ptr, ptr %240, align 8
  store ptr %i.pd, ptr %299, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %299, i64 8 ; 3 uses
  %i.pf = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #12 ; 3 uses
  store ptr %i.pf, ptr %i.pe, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 120 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.pf, i8 0, i64 120, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %299, i64 16 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %299, i64 24 ; 2 uses
  store ptr %i.pg, ptr %i.pi, align 8
  store ptr %i.pg, ptr %i.ph, align 8
  %i.pj = getelementptr inbounds nuw i8, ptr %299, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pj, i8 0, i64 24, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %299, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.pk, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %300) #10
  %i.pl = load ptr, ptr %240, align 8
  store ptr %i.pl, ptr %300, align 8
  %i.pm = getelementptr inbounds nuw i8, ptr %300, i64 8 ; 3 uses
  %i.pn = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #12 ; 3 uses
  store ptr %i.pn, ptr %i.pm, align 8
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.pn, i8 0, i64 96, i1 false)
  %i.pp = getelementptr inbounds nuw i8, ptr %300, i64 16 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %300, i64 24 ; 2 uses
  store ptr %i.po, ptr %i.pq, align 8
  store ptr %i.po, ptr %i.pp, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %300, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pr, i8 0, i64 24, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %300, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ps, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %301) #10
  %i.pt = load ptr, ptr %240, align 8
  store ptr %i.pt, ptr %301, align 8
  %i.pu = getelementptr inbounds nuw i8, ptr %301, i64 8 ; 3 uses
  %i.pv = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.pv, ptr %i.pu, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.pv, i8 0, i64 72, i1 false)
  %i.px = getelementptr inbounds nuw i8, ptr %301, i64 16 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %301, i64 24 ; 2 uses
  store ptr %i.pw, ptr %i.py, align 8
  store ptr %i.pw, ptr %i.px, align 8
  %i.pz = getelementptr inbounds nuw i8, ptr %301, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pz, i8 0, i64 24, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %301, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.qa, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %302) #10
  %i.qb = load ptr, ptr %240, align 8
  store ptr %i.qb, ptr %302, align 8
  %i.qc = getelementptr inbounds nuw i8, ptr %302, i64 8 ; 3 uses
  %i.qd = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.qd, ptr %i.qc, align 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.qd, i8 0, i64 72, i1 false)
  %i.qf = getelementptr inbounds nuw i8, ptr %302, i64 16 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %302, i64 24 ; 2 uses
  store ptr %i.qe, ptr %i.qg, align 8
  store ptr %i.qe, ptr %i.qf, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %302, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qh, i8 0, i64 24, i1 false)
  %i.qi = getelementptr inbounds nuw i8, ptr %302, i64 56 ; 4 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.qi, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %303) #10
  %i.qj = load ptr, ptr %240, align 8
  store ptr %i.qj, ptr %303, align 8
  %i.qk = getelementptr inbounds nuw i8, ptr %303, i64 8 ; 3 uses
  %i.ql = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.ql, ptr %i.qk, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ql, i8 0, i64 72, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %303, i64 16 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %303, i64 24 ; 2 uses
  store ptr %i.qm, ptr %i.qo, align 8
  store ptr %i.qm, ptr %i.qn, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %303, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, i8 0, i64 24, i1 false)
  %i.qq = getelementptr inbounds nuw i8, ptr %303, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.qq, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %304) #10
  %i.qr = load ptr, ptr %240, align 8
  store ptr %i.qr, ptr %304, align 8
  %i.qs = getelementptr inbounds nuw i8, ptr %304, i64 8 ; 3 uses
  %i.qt = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.qt, ptr %i.qs, align 8
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.qt, i8 0, i64 72, i1 false)
  %i.qv = getelementptr inbounds nuw i8, ptr %304, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %304, i64 24 ; 2 uses
  store ptr %i.qu, ptr %i.qw, align 8
  store ptr %i.qu, ptr %i.qv, align 8
  %i.qx = getelementptr inbounds nuw i8, ptr %304, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qx, i8 0, i64 24, i1 false)
  %i.qy = getelementptr inbounds nuw i8, ptr %304, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.qy, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %305) #10
  %i.qz = load ptr, ptr %240, align 8
  store ptr %i.qz, ptr %305, align 8
  %i.ra = getelementptr inbounds nuw i8, ptr %305, i64 8 ; 3 uses
  %i.rb = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.rb, ptr %i.ra, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.rb, i8 0, i64 72, i1 false)
  %i.rd = getelementptr inbounds nuw i8, ptr %305, i64 16 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %305, i64 24 ; 2 uses
  store ptr %i.rc, ptr %i.re, align 8
  store ptr %i.rc, ptr %i.rd, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %305, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rf, i8 0, i64 24, i1 false)
  %i.rg = getelementptr inbounds nuw i8, ptr %305, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.rg, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %306) #10
  %i.rh = load ptr, ptr %240, align 8
  store ptr %i.rh, ptr %306, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %306, i64 8 ; 3 uses
  %i.rj = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.rj, ptr %i.ri, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.rj, i8 0, i64 72, i1 false)
  %i.rl = getelementptr inbounds nuw i8, ptr %306, i64 16 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %306, i64 24 ; 2 uses
  store ptr %i.rk, ptr %i.rm, align 8
  store ptr %i.rk, ptr %i.rl, align 8
  %i.rn = getelementptr inbounds nuw i8, ptr %306, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rn, i8 0, i64 24, i1 false)
  %i.ro = getelementptr inbounds nuw i8, ptr %306, i64 56 ; 5 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ro, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %307) #10
  %i.rp = load ptr, ptr %240, align 8
  store ptr %i.rp, ptr %307, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %307, i64 8 ; 3 uses
  %i.rr = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #12 ; 3 uses
  store ptr %i.rr, ptr %i.rq, align 8
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.rr, i8 0, i64 72, i1 false)
  %i.rt = getelementptr inbounds nuw i8, ptr %307, i64 16 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %307, i64 24 ; 2 uses
  store ptr %i.rs, ptr %i.ru, align 8
  store ptr %i.rs, ptr %i.rt, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %307, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rv, i8 0, i64 24, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %307, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.rw, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %308) #10
  %i.rx = load ptr, ptr %240, align 8
  store ptr %i.rx, ptr %308, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %308, i64 8 ; 3 uses
  %i.rz = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #12 ; 3 uses
  store ptr %i.rz, ptr %i.ry, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.rz, i8 0, i64 48, i1 false)
  %i.sb = getelementptr inbounds nuw i8, ptr %308, i64 16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %308, i64 24 ; 2 uses
  store ptr %i.sa, ptr %i.sc, align 8
  store ptr %i.sa, ptr %i.sb, align 8
  %i.sd = getelementptr inbounds nuw i8, ptr %308, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sd, i8 0, i64 24, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %308, i64 56 ; 46 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.se, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %309) #10
  %i.sf = load ptr, ptr %240, align 8
  store ptr %i.sf, ptr %309, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %309, i64 8 ; 3 uses
  %i.sh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.sh, ptr %i.sg, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sh, i8 0, i64 24, i1 false)
  %i.sj = getelementptr inbounds nuw i8, ptr %309, i64 16 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %309, i64 24 ; 2 uses
  store ptr %i.si, ptr %i.sk, align 8
  store ptr %i.si, ptr %i.sj, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %309, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sl, i8 0, i64 24, i1 false)
  %i.sm = getelementptr inbounds nuw i8, ptr %309, i64 56 ; 9 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.sm, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %310) #10
  %i.sn = load ptr, ptr %240, align 8
  store ptr %i.sn, ptr %310, align 8
  %i.so = getelementptr inbounds nuw i8, ptr %310, i64 8 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %310, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.so, i8 0, i64 48, i1 false)
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.sp, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %239)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %239, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %241, ptr noundef nonnull %239) #10
  %i.sq = load ptr, ptr %239, align 8             ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.sq, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.sr = getelementptr inbounds nuw i8, ptr %239, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8
  %i.st = ptrtoint ptr %i.ss to i64
  %i.su = ptrtoint ptr %i.sq to i64
  %i.sv = sub i64 %i.st, %i.su
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef %i.sv) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %239)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %i.c) #10
  %i.sw = getelementptr inbounds nuw i8, ptr %241, i64 64
  %i.sx = load i64, ptr %i.sw, align 8
  %.not = icmp eq i64 %i.sx, 0
  br i1 %.not, label %bb.bj, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %238)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %238, i8 0, i64 24, i1 false)
  %i.sy = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %241, ptr noundef nonnull %238) #10 ; 0 uses
  %i.sz = load ptr, ptr %238, align 8             ; 3 uses
  %.not.i.i.i.i.i152 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i.i.i.i152, label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ta = getelementptr inbounds nuw i8, ptr %238, i64 16
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = ptrtoint ptr %i.tb to i64
  %i.td = ptrtoint ptr %i.sz to i64
  %i.te = sub i64 %i.tc, %i.td
  call void @_ZdlPvm(ptr noundef nonnull %i.sz, i64 noundef %i.te) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit

_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %238)
  call void @_ZN2v88internal42kArrayFromAsyncArrayLikeResolveMapfnSlot_0EPNS0_8compiler18CodeAssemblerStateE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %315, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %311) #10
  %i.tf = load ptr, ptr %240, align 8
  store ptr %i.tf, ptr %311, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %311, i64 8 ; 3 uses
  %i.th = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.th, ptr %i.tg, align 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.th, i8 0, i64 24, i1 false)
  %i.tj = getelementptr inbounds nuw i8, ptr %311, i64 16 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %311, i64 24 ; 2 uses
  store ptr %i.ti, ptr %i.tk, align 8
  store ptr %i.ti, ptr %i.tj, align 8
  %i.tl = getelementptr inbounds nuw i8, ptr %311, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tl, i8 0, i64 24, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %311, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.tm, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %312) #10
  call void @_ZN2v88internal8compiler22ScopedExceptionHandlerC1EPNS1_13CodeAssemblerEPNS1_31CodeAssemblerParameterizedLabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEE(ptr noundef nonnull align 8 dereferenceable(40) %312, ptr noundef nonnull %240, ptr noundef nonnull %311) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %313) #10
  %i.tn = load ptr, ptr %2, align 8
  store ptr %i.tn, ptr %314, align 8
  call void @_ZN2v88internal95ContextSlot_ArrayFromAsyncArrayLikeResolveContext_ArrayFromAsyncArrayLikeResolveContext_JSAny_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_JSAny_0") align 8 %313, ptr noundef %1, ptr noundef nonnull dead_on_return %314, ptr noundef nonnull dead_on_return %315)
  %i.to = load <2 x ptr>, ptr %313, align 16, !noalias !1359
  call void @llvm.lifetime.end.p0(ptr nonnull %313) #10
  call void @_ZN2v88internal8compiler22ScopedExceptionHandlerD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %312) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %312) #10
  %i.tp = getelementptr inbounds nuw i8, ptr %311, i64 64
  %i.tq = load i64, ptr %i.tp, align 8
  %.not3801 = icmp eq i64 %i.tq, 0
  br i1 %.not3801, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %316) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %316, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 1) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %316) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %i.tm) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %237)
  %i.tr = call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #12 ; 3 uses
  store ptr %i.tr, ptr %237, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 1 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %237, i64 16 ; 2 uses
  store ptr %i.ts, ptr %i.tt, align 8
  store i8 9, ptr %i.tr, align 1
  %i.tu = getelementptr inbounds nuw i8, ptr %237, i64 8
  store ptr %i.ts, ptr %i.tu, align 8
  %i.tv = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase10CreatePhisESt6vectorINS0_21MachineRepresentationESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(184) %311, ptr noundef nonnull %237) #10
  %i.tw = load ptr, ptr %237, align 8             ; 3 uses
  %.not.i.i.i.i.i153 = icmp eq ptr %i.tw, null
  br i1 %.not.i.i.i.i.i153, label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.tx = load ptr, ptr %i.tt, align 8
  %i.ty = ptrtoint ptr %i.tx to i64
  %i.tz = ptrtoint ptr %i.tw to i64
  %i.ua = sub i64 %i.ty, %i.tz
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.ua) #11
  br label %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i

_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ub = load ptr, ptr %i.tv, align 8
  %i.uc = load ptr, ptr %i.ub, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %237)
  call void @llvm.lifetime.start.p0(ptr nonnull %236)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %236, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal8compiler35CodeAssemblerParameterizedLabelBase9AddInputsESt6vectorIPNS1_4NodeESaIS5_EE(ptr noundef nonnull align 8 dereferenceable(184) %242, ptr noundef nonnull %236) #10
  %i.ud = load ptr, ptr %236, align 8             ; 3 uses
  %.not.i.i.i.i.i154 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i.i.i154, label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit155, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i
  %i.ue = getelementptr inbounds nuw i8, ptr %236, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ud to i64
  %i.ui = sub i64 %i.ug, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.ui) #11
  br label %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit155

_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit155: ; preds = %_ZNSt6vectorIN2v88internal21MachineRepresentationESaIS2_EED2Ev.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %236)
  call void @_ZN2v88internal8compiler13CodeAssembler4GotoEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %i.f) #10
  call void @_ZN2v88internal8compiler13CodeAssembler4BindEPNS1_18CodeAssemblerLabelE(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull %316) #10
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %316) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %316) #10
  br label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit155, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit
  %.sroa.03777.0 = phi ptr [ %i.uc, %_ZN2v88internal8compiler13CodeAssembler4GotoIJEJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpT0_.exit155 ], [ null, %_ZN2v88internal8compiler13CodeAssembler4BindIJEEEvPNS1_31CodeAssemblerParameterizedLabelIJDpT_EEEDpPNS0_5TNodeIS5_EE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %318) #10
  call void @_ZN2v88internal17CodeStubAssemblerC1EPNS0_8compiler18CodeAssemblerStateE(ptr noundef nonnull align 8 dereferenceable(16) %318, ptr noundef %1) #10
  store <2 x ptr> %i.to, ptr %319, align 16
  call void @_ZN2v88internal17CodeStubAssembler13LoadReferenceINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS0_5TNodeIT_EENS1_9ReferenceEQsr3stdE16is_convertible_vISG_NSE_INS0_6ObjectEEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.15") align 8 %317, ptr noundef nonnull align 8 dereferenceable(16) %318, ptr noundef nonnull dead_on_return %319)
  %i.uj = load ptr, ptr %317, align 8, !noalias !1364
  call void @_ZN2v88internal8compiler13CodeAssemblerD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %318) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %318) #10
  call void @_ZN2v88internal44kArrayFromAsyncArrayLikeResolveThisArgSlot_0EPNS0_8compiler18CodeAssemblerStateE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::TNode.13") align 8 %324, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %320) #10
  %i.uk = load ptr, ptr %240, align 8
  store ptr %i.uk, ptr %320, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %320, i64 8 ; 3 uses
  %i.um = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12 ; 3 uses
  store ptr %i.um, ptr %i.ul, align 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.um, i8 0, i64 24, i1 false)
  %i.uo = getelementptr inbounds nuw i8, ptr %320, i64 16 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %320, i64 24 ; 2 uses
  store ptr %i.un, ptr %i.up, align 8
  store ptr %i.un, ptr %i.uo, align 8
  %i.uq = getelementptr inbounds nuw i8, ptr %320, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uq, i8 0, i64 24, i1 false)
  %i.ur = getelementptr inbounds nuw i8, ptr %320, i64 56 ; 3 uses
  call void @_ZN2v88internal8compiler18CodeAssemblerLabelC2EPNS1_13CodeAssemblerEmPKPNS1_21CodeAssemblerVariableENS2_4TypeE(ptr noundef nonnull align 8 dereferenceable(128) %i.ur, ptr noundef nonnull %240, i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %321) #10
  call void @_ZN2v88internal8compiler22ScopedExceptionHandlerC1EPNS1_13CodeAssemblerEPNS1_31CodeAssemblerParameterizedLabelIJNS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEEE(ptr noundef nonnull align 8 dereferenceable(40) %321, ptr noundef nonnull %240, ptr noundef nonnull %320) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %322) #10
  %i.us = load ptr, ptr %2, align 8
  store ptr %i.us, ptr %323, align 8
  call void @_ZN2v88internal95ContextSlot_ArrayFromAsyncArrayLikeResolveContext_ArrayFromAsyncArrayLikeResolveContext_JSAny_0EPNS0_8compiler18CodeAssemblerStateENS0_5TNodeINS0_7ContextEEENS4_INS0_7IntPtrTEEE(ptr dead_on_unwind nonnull writable sret(%"struct.v8::internal::TorqueStructReference_JSAny_0") align 8 %322, ptr noundef %1, ptr noundef nonnull dead_on_return %323, ptr noundef nonnull dead_on_return %324)
  %i.ut = load <2 x ptr>, ptr %322, align 16, !noalias !1367
  call void @llvm.lifetime.end.p0(ptr nonnull %322) #10
end_hunk_1
