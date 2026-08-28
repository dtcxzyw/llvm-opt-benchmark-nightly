Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mixbox/original/mixbox?download=true
inline.NumInlined: 22
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mixbox_lerp_linear_float:bb.a
  %i.ve = tail call float @llvm.fmuladd.f32(float %i.vd, float f0xBE98C2A3, float %i.vc)
  %i.vf = fmul float %i.su, %i.sl                 ; 2 uses
  %i.vg = tail call float @llvm.fmuladd.f32(float %i.vf, float f0x3F203166, float %i.ve)
  %i.vh = fmul float %i.sv, %i.sl                 ; 2 uses
  %i.vi = tail call float @llvm.fmuladd.f32(float %i.vh, float f0x400998DE, float %i.vg)
  %i.vj = fmul float %i.sw, %i.sl                 ; 2 uses
  %i.vk = tail call float @llvm.fmuladd.f32(float %i.vj, float f0x3FF42585, float %i.vi)
  %i.vl = insertelement <2 x float> poison, float %i.rn, i64 0
  %i.vm = shufflevector <2 x float> %i.vl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vm, <2 x float> <float f0x4023707E, float f0x40416251>, <2 x float> %i.rl)
  %i.vo = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.vp = shufflevector <2 x float> %i.vo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vp, <2 x float> <float f0x4033F7FD, float f0x403CE13B>, <2 x float> %i.vn)
  %i.vr = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.vs = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vs, <2 x float> <float f0x3F4CA0EA, float f0x4034E9CF>, <2 x float> %i.vq)
  %i.vu = insertelement <2 x float> poison, float %i.rt, i64 0
  %i.vv = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vv, <2 x float> <float f0x3F9CEB4B, float f0x403FCD64>, <2 x float> %i.vt)
  %i.vx = insertelement <2 x float> poison, float %i.rv, i64 0
  %i.vy = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vy, <2 x float> <float f0x400337A7, float f0x3FEFDD4D>, <2 x float> %i.vw)
  %i.wa = insertelement <2 x float> poison, float %i.rx, i64 0
  %i.wb = shufflevector <2 x float> %i.wa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wb, <2 x float> <float f0x40E118D7, float f0x40243AE9>, <2 x float> %i.vz)
  %i.wd = insertelement <2 x float> poison, float %i.rz, i64 0
  %i.we = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.we, <2 x float> <float f0xBFB3B903, float f0x4082AA5A>, <2 x float> %i.wc)
  %i.wg = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wh, <2 x float> <float f0x40238DA6, float f0x40C00672>, <2 x float> %i.wf)
  %i.wj = fsub <2 x float> %i.ju, %i.wi
  %i.wk = fmul <2 x float> %i.sf, %i.wj
  %i.wl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.si, <2 x float> %i.iy, <2 x float> %i.wk)
  %i.wm = insertelement <2 x float> poison, float %i.up, i64 0
  %i.wn = shufflevector <2 x float> %i.wm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wn, <2 x float> <float f0x3FFD3419, float f0x3F86905C>, <2 x float> %i.un)
  %i.wp = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wq, <2 x float> <float f0x3F500D42, float f0x404DD41D>, <2 x float> %i.wo)
  %i.ws = insertelement <2 x float> poison, float %i.ut, i64 0
  %i.wt = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wt, <2 x float> <float f0x3ED4D0CC, float f0x40327DE4>, <2 x float> %i.wr)
  %i.wv = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.ww = shufflevector <2 x float> %i.wv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ww, <2 x float> <float f0x4023707E, float f0x40416251>, <2 x float> %i.wu)
  %i.wy = insertelement <2 x float> poison, float %i.ux, i64 0
  %i.wz = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wz, <2 x float> <float f0x4033F7FD, float f0x403CE13B>, <2 x float> %i.wx)
  %i.xb = insertelement <2 x float> poison, float %i.uz, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xc, <2 x float> <float f0x3F4CA0EA, float f0x4034E9CF>, <2 x float> %i.xa)
  %i.xe = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.xf = shufflevector <2 x float> %i.xe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xf, <2 x float> <float f0x3F9CEB4B, float f0x403FCD64>, <2 x float> %i.xd)
  %i.xh = insertelement <2 x float> poison, float %i.vd, i64 0
  %i.xi = shufflevector <2 x float> %i.xh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xi, <2 x float> <float f0x400337A7, float f0x3FEFDD4D>, <2 x float> %i.xg)
  %i.xk = insertelement <2 x float> poison, float %i.vf, i64 0
  %i.xl = shufflevector <2 x float> %i.xk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> <float f0x40E118D7, float f0x40243AE9>, <2 x float> %i.xj)
  %i.xn = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.xo = shufflevector <2 x float> %i.xn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> <float f0xBFB3B903, float f0x4082AA5A>, <2 x float> %i.xm)
  %i.xq = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.xr = shufflevector <2 x float> %i.xq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xr, <2 x float> <float f0x40238DA6, float f0x40C00672>, <2 x float> %i.xp)
  %i.xt = fadd <2 x float> %i.wl, %i.xs           ; 3 uses
  %i.xu = extractelement <2 x float> %i.xt, i64 1 ; 2 uses
  %i.xv = fcmp ogt float %i.xu, 1.000000e+00
  %i.xw = select i1 %i.xv, float 1.000000e+00, float %i.xu
  %i.xx = fcmp olt <2 x float> %i.xt, zeroinitializer ; 2 uses
  %i.xy = extractelement <2 x i1> %i.xx, i64 1
  %i.xz = select i1 %i.xy, float 0.000000e+00, float %i.xw ; 3 uses
  %i.ya = extractelement <2 x float> %i.xt, i64 0 ; 2 uses
  %i.yb = fcmp ogt float %i.ya, 1.000000e+00
  %i.yc = select i1 %i.yb, float 1.000000e+00, float %i.ya
  %i.yd = extractelement <2 x i1> %i.xx, i64 0
  %i.ye = select i1 %i.yd, float 0.000000e+00, float %i.yc ; 3 uses
  %i.yf = fadd float %i.sn, %i.vk                 ; 3 uses
  %i.yg = fcmp olt float %i.yf, 0.000000e+00
  %i.yh = fcmp ogt float %i.yf, 1.000000e+00
  %i.yi = select i1 %i.yh, float 1.000000e+00, float %i.yf
  %i.yj = select i1 %i.yg, float 0.000000e+00, float %i.yi ; 3 uses
  %i.yk = fcmp ult float %i.xz, 4.045000e-02
  br i1 %i.yk, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZL10mixbox_lutv.exit16
  %i.yl = fadd float %i.xz, 5.500000e-02
  %i.ym = fdiv float %i.yl, 1.055000e+00
  %i.yn = tail call noundef float @powf(float noundef %i.ym, float noundef 2.400000e+00) #12
  br label %_ZL14srgb_to_linearf.exit23

bb.s:                                             ; preds = %_ZL10mixbox_lutv.exit16
  %i.yo = fdiv float %i.xz, 1.292000e+01
  br label %_ZL14srgb_to_linearf.exit23

_ZL14srgb_to_linearf.exit23:                      ; preds = %bb.r, %bb.s
  %i.yp = phi float [ %i.yn, %bb.r ], [ %i.yo, %bb.s ]
  store float %i.yp, ptr %7, align 4, !tbaa !10
  %i.yq = fcmp ult float %i.ye, 4.045000e-02
  br i1 %i.yq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZL14srgb_to_linearf.exit23
  %i.yr = fadd float %i.ye, 5.500000e-02
  %i.ys = fdiv float %i.yr, 1.055000e+00
  %i.yt = tail call noundef float @powf(float noundef %i.ys, float noundef 2.400000e+00) #12
  br label %_ZL14srgb_to_linearf.exit22

bb.u:                                             ; preds = %_ZL14srgb_to_linearf.exit23
  %i.yu = fdiv float %i.ye, 1.292000e+01
  br label %_ZL14srgb_to_linearf.exit22

_ZL14srgb_to_linearf.exit22:                      ; preds = %bb.t, %bb.u
  %i.yv = phi float [ %i.yt, %bb.t ], [ %i.yu, %bb.u ]
  store float %i.yv, ptr %8, align 4, !tbaa !10
  %i.yw = fcmp ult float %i.yj, 4.045000e-02
  br i1 %i.yw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZL14srgb_to_linearf.exit22
  %i.yx = fadd float %i.yj, 5.500000e-02
  %i.yy = fdiv float %i.yx, 1.055000e+00
  %i.yz = tail call noundef float @powf(float noundef %i.yy, float noundef 2.400000e+00) #12
  br label %_ZL14srgb_to_linearf.exit

bb.w:                                             ; preds = %_ZL14srgb_to_linearf.exit22
  %i.za = fdiv float %i.yj, 1.292000e+01
  br label %_ZL14srgb_to_linearf.exit

_ZL14srgb_to_linearf.exit:                        ; preds = %bb.v, %bb.w
  %i.zb = phi float [ %i.yz, %bb.v ], [ %i.za, %bb.w ]
  store float %i.zb, ptr %9, align 4, !tbaa !10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev() unnamed_addr #6 align 2 {
bb.a:
  %0 = alloca %struct.zhuffman, align 4           ; 10 uses
  %i.a = alloca [455 x i8], align 16              ; 8 uses
  %i.b = alloca [19 x i8], align 16               ; 6 uses
  %1 = alloca %struct.zbuf, align 8               ; 40 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  store ptr @.str, ptr %1, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  store ptr @_ZZL10mixbox_lutvE12decompressed, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr @_ZZL10mixbox_lutvE12decompressed, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 799107), ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 6 uses
  store i32 0, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 36 uses
  store i32 0, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 32 uses
  store i32 0, ptr %i.k, align 4, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1444
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2080 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1116
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1084
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1216
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1504
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3136
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 3104
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 3204
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3236
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3524
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.bx, %bb.a
  %i.ad = phi i32 [ 0, %bb.a ], [ %i.jm, %bb.bx ]
  %i.ae = phi i32 [ 0, %bb.a ], [ %.pr.i, %bb.bx ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.b, label %_ZL8zreceiveP4zbufi.exit27.i

bb.b:                                             ; preds = %thread-pre-split.i
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre81.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit27.i

_ZL8zreceiveP4zbufi.exit27.i:                     ; preds = %bb.b, %thread-pre-split.i
  %i.ag = phi i32 [ %i.ae, %thread-pre-split.i ], [ %.pre81.i, %bb.b ] ; 2 uses
  %i.ah = phi i32 [ %i.ad, %thread-pre-split.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %i.ai = lshr i32 %i.ah, 1                       ; 2 uses
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !25
  %i.aj = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.aj, ptr %i.j, align 8, !tbaa !24
  %i.ak = icmp slt i32 %i.ag, 3
  br i1 %i.ak, label %bb.c, label %_ZL8zreceiveP4zbufi.exit.i

bb.c:                                             ; preds = %_ZL8zreceiveP4zbufi.exit27.i
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre82.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre83.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit.i

_ZL8zreceiveP4zbufi.exit.i:                       ; preds = %bb.c, %_ZL8zreceiveP4zbufi.exit27.i
  %i.al = phi i32 [ %i.aj, %_ZL8zreceiveP4zbufi.exit27.i ], [ %.pre83.i, %bb.c ] ; 2 uses
  %i.am = phi i32 [ %i.ai, %_ZL8zreceiveP4zbufi.exit27.i ], [ %.pre82.i, %bb.c ] ; 2 uses
  %i.an = and i32 %i.am, 3
  %i.ao = lshr i32 %i.am, 2                       ; 2 uses
  store i32 %i.ao, ptr %i.k, align 4, !tbaa !25
  %i.ap = add nsw i32 %i.al, -2                   ; 2 uses
  store i32 %i.ap, ptr %i.j, align 8, !tbaa !24
  %.not.i = icmp eq i32 %i.an, 2
  br i1 %.not.i, label %bb.d, label %_ZL10decompressPci.exit

bb.d:                                             ; preds = %_ZL8zreceiveP4zbufi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.aq = icmp slt i32 %i.al, 7
  br i1 %i.aq, label %bb.e, label %_ZL8zreceiveP4zbufi.exit75.i.i

bb.e:                                             ; preds = %bb.d
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  %.pre84.i = load i32, ptr %i.k, align 4, !tbaa !25
  br label %_ZL8zreceiveP4zbufi.exit75.i.i

_ZL8zreceiveP4zbufi.exit75.i.i:                   ; preds = %bb.e, %bb.d
  %i.ar = phi i32 [ %i.ao, %bb.d ], [ %.pre84.i, %bb.e ] ; 2 uses
  %i.as = phi i32 [ %i.ap, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.at = and i32 %i.ar, 31
  %i.au = lshr i32 %i.ar, 5                       ; 2 uses
  store i32 %i.au, ptr %i.k, align 4, !tbaa !25
  %i.av = add nsw i32 %i.as, -5                   ; 2 uses
  store i32 %i.av, ptr %i.j, align 8, !tbaa !24
  %i.aw = add nuw nsw i32 %i.at, 257              ; 3 uses
  %i.ax = icmp slt i32 %i.as, 10
  br i1 %i.ax, label %bb.f, label %_ZL8zreceiveP4zbufi.exit74.i.i

bb.f:                                             ; preds = %_ZL8zreceiveP4zbufi.exit75.i.i
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre91.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre92.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit74.i.i

_ZL8zreceiveP4zbufi.exit74.i.i:                   ; preds = %bb.f, %_ZL8zreceiveP4zbufi.exit75.i.i
  %i.ay = phi i32 [ %i.av, %_ZL8zreceiveP4zbufi.exit75.i.i ], [ %.pre92.i.i, %bb.f ] ; 2 uses
  %i.az = phi i32 [ %i.au, %_ZL8zreceiveP4zbufi.exit75.i.i ], [ %.pre91.i.i, %bb.f ] ; 2 uses
  %i.ba = and i32 %i.az, 31
  %i.bb = lshr i32 %i.az, 5                       ; 2 uses
  store i32 %i.bb, ptr %i.k, align 4, !tbaa !25
  %i.bc = add nsw i32 %i.ay, -5                   ; 2 uses
  store i32 %i.bc, ptr %i.j, align 8, !tbaa !24
  %i.bd = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.be = icmp slt i32 %i.ay, 9
  br i1 %i.be, label %bb.g, label %_ZL8zreceiveP4zbufi.exit73.i.i

bb.g:                                             ; preds = %_ZL8zreceiveP4zbufi.exit74.i.i
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre93.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre94.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit73.i.i

_ZL8zreceiveP4zbufi.exit73.i.i:                   ; preds = %bb.g, %_ZL8zreceiveP4zbufi.exit74.i.i
  %i.bf = phi i32 [ %i.bc, %_ZL8zreceiveP4zbufi.exit74.i.i ], [ %.pre94.i.i, %bb.g ]
  %i.bg = phi i32 [ %i.bb, %_ZL8zreceiveP4zbufi.exit74.i.i ], [ %.pre93.i.i, %bb.g ] ; 2 uses
  %i.bh = lshr i32 %i.bg, 4                       ; 2 uses
  store i32 %i.bh, ptr %i.k, align 4, !tbaa !25
  %i.bi = add nsw i32 %i.bf, -4                   ; 2 uses
  store i32 %i.bi, ptr %i.j, align 8, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(19) %i.b, i8 0, i64 19, i1 false), !tbaa !9
  %i.bj = and i32 %i.bg, 15
  %i.bk = add nuw nsw i32 %i.bj, 4
  %wide.trip.count.i.i = zext nneg i32 %i.bk to i64
  %.promoted21.i = load i32, ptr %i.e, align 8
  %.promoted.i = load ptr, ptr %1, align 8
  %.promoted34.i = load i32, ptr %i.d, align 4
  %.promoted41.i = load i32, ptr %i.c, align 8
  br label %.preheader80.i.i

.preheader80.i.i:                                 ; preds = %_ZL8zreceiveP4zbufi.exit72.i.i, %_ZL8zreceiveP4zbufi.exit73.i.i
  %.promoted1448.i = phi i32 [ %.promoted41.i, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %.promoted1442.i, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 3 uses
  %.promoted1340.i = phi i32 [ %.promoted34.i, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %.promoted1335.i, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 3 uses
  %.promoted1233.i = phi ptr [ %.promoted.i, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %.promoted1227.i, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 3 uses
  %.promoted26.i = phi i32 [ %.promoted21.i, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %.promoted22.i, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 3 uses
  %.promoted.i16.i = phi i32 [ %i.bh, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %i.eb, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 2 uses
  %i.bl = phi i32 [ %i.bi, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %i.ec, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 0, %_ZL8zreceiveP4zbufi.exit73.i.i ], [ %indvars.iv.next.i.i, %_ZL8zreceiveP4zbufi.exit72.i.i ] ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 3
  br i1 %i.bm, label %.preheader62.i, label %_ZL8zreceiveP4zbufi.exit72.i.i

.preheader62.i:                                   ; preds = %.preheader80.i.i, %_ZL5zget8P4zbuf.exit.i.i
  %.promoted1447.i = phi i32 [ %.promoted1444.i, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1448.i, %.preheader80.i.i ] ; 3 uses
  %.promoted1339.i = phi i32 [ %.promoted1337.i, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1340.i, %.preheader80.i.i ] ; 3 uses
  %.promoted1232.i = phi ptr [ %.promoted1229.i, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1233.i, %.preheader80.i.i ] ; 4 uses
  %.promoted25.i = phi i32 [ %.promoted24.i, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted26.i, %.preheader80.i.i ] ; 2 uses
  %i.bn = phi i32 [ %i.dr, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1448.i, %.preheader80.i.i ] ; 4 uses
  %i.bo = phi i32 [ %i.ds, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1340.i, %.preheader80.i.i ] ; 4 uses
  %i.bp = phi ptr [ %i.dt, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted1233.i, %.preheader80.i.i ] ; 4 uses
  %i.bq = phi i32 [ %i.du, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted26.i, %.preheader80.i.i ] ; 3 uses
  %i.br = phi i32 [ %i.dx, %_ZL5zget8P4zbuf.exit.i.i ], [ %i.bl, %.preheader80.i.i ] ; 5 uses
  %i.bs = phi i32 [ %i.dw, %_ZL5zget8P4zbuf.exit.i.i ], [ %.promoted.i16.i, %.preheader80.i.i ] ; 3 uses
  %.highbits.i.i = lshr i32 %i.bs, %i.br
  %.not.i49.i = icmp eq i32 %.highbits.i.i, 0
  br i1 %.not.i49.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader62.i
  store i32 1, ptr %i.i, align 8, !tbaa !23
  br label %_ZL8zreceiveP4zbufi.exit72.i.i

bb.i:                                             ; preds = %.preheader62.i
  %i.bt = and i32 %i.bq, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.bv = sext i32 %i.bo to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bp, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bz = add nsw i32 %i.bn, 1                    ; 6 uses
  store i32 %i.bz, ptr %i.c, align 8, !tbaa !17
  %i.ca = icmp sgt i32 %i.bn, 39
  br i1 %i.ca, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %i.i, align 8, !tbaa !23
  br label %_ZL5zget8P4zbuf.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @_ZL21mixbox_lut_compressed, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26 ; 4 uses
  store ptr %i.cd, ptr %1, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %.pre.i52.i = load i8, ptr %i.cd, align 1, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.promoted1446.i = phi i32 [ %i.bz, %bb.m ], [ %.promoted1447.i, %bb.j ]
  %.promoted1231.i = phi ptr [ %i.cd, %bb.m ], [ %.promoted1232.i, %bb.j ]
  %i.ce = phi i32 [ %i.bz, %bb.m ], [ %i.bn, %bb.j ]
  %i.cf = phi ptr [ %i.cd, %bb.m ], [ %i.bp, %bb.j ] ; 2 uses
  %i.cg = phi i8 [ %.pre.i52.i, %bb.m ], [ %i.bx, %bb.j ] ; 2 uses
  %i.ch = phi i32 [ 0, %bb.m ], [ %i.bo, %bb.j ]  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  %i.ck = icmp sgt i8 %i.cg, 91
  %.v.i11.i.i = select i1 %i.ck, i8 -36, i8 -35
  %i.cl = add i8 %.v.i11.i.i, %i.cg
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr i8, ptr %i.cj, i64 1
  %i.co = load <4 x i8>, ptr %i.cn, align 1, !tbaa !9 ; 2 uses
  %i.cp = icmp sgt <4 x i8> %i.co, splat (i8 91)
  %i.cq = select <4 x i1> %i.cp, <4 x i8> splat (i8 -36), <4 x i8> splat (i8 -35)
  %i.cr = add <4 x i8> %i.cq, %i.co               ; 4 uses
  %i.cs = extractelement <4 x i8> %i.cr, i64 0
  %i.ct = zext i8 %i.cs to i32
  %i.cu = extractelement <4 x i8> %i.cr, i64 1
  %i.cv = zext i8 %i.cu to i32
  %i.cw = extractelement <4 x i8> %i.cr, i64 2
  %i.cx = zext i8 %i.cw to i32
  %i.cy = extractelement <4 x i8> %i.cr, i64 3
  %i.cz = zext i8 %i.cy to i32
  %i.da = mul nuw nsw i32 %i.cz, 85
  %i.db = add nuw nsw i32 %i.da, %i.cx
  %i.dc = mul nuw nsw i32 %i.db, 85
  %i.dd = add nuw nsw i32 %i.dc, %i.cv
  %i.de = mul nuw nsw i32 %i.dd, 85
  %i.df = add nuw nsw i32 %i.de, %i.ct
  %i.dg = mul nuw nsw i32 %i.df, 85
  %i.dh = add nuw nsw i32 %i.dg, %i.cm
  store i32 %i.dh, ptr %i.l, align 4
  %i.di = add nsw i32 %i.ch, 5                    ; 3 uses
  store i32 %i.di, ptr %i.d, align 4, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.i
  %.promoted1445.i = phi i32 [ %.promoted1446.i, %bb.n ], [ %.promoted1447.i, %bb.i ]
  %.promoted1338.i = phi i32 [ %i.di, %bb.n ], [ %.promoted1339.i, %bb.i ]
  %.promoted1230.i = phi ptr [ %.promoted1231.i, %bb.n ], [ %.promoted1232.i, %bb.i ]
  %i.dj = phi i32 [ %i.ce, %bb.n ], [ %i.bn, %bb.i ]
  %i.dk = phi i32 [ %i.di, %bb.n ], [ %i.bo, %bb.i ]
  %i.dl = phi ptr [ %i.cf, %bb.n ], [ %i.bp, %bb.i ]
  %i.dm = zext nneg i32 %i.bt to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dp = add nsw i32 %i.bq, 1                    ; 3 uses
  store i32 %i.dp, ptr %i.e, align 8, !tbaa !19
  %i.dq = zext i8 %i.do to i32
  br label %_ZL5zget8P4zbuf.exit.i.i

_ZL5zget8P4zbuf.exit.i.i:                         ; preds = %bb.o, %bb.l
  %.promoted1444.i = phi i32 [ %i.bz, %bb.l ], [ %.promoted1445.i, %bb.o ] ; 2 uses
  %.promoted1337.i = phi i32 [ %.promoted1339.i, %bb.l ], [ %.promoted1338.i, %bb.o ] ; 2 uses
  %.promoted1229.i = phi ptr [ %.promoted1232.i, %bb.l ], [ %.promoted1230.i, %bb.o ] ; 2 uses
  %.promoted24.i = phi i32 [ %.promoted25.i, %bb.l ], [ %i.dp, %bb.o ] ; 2 uses
  %i.dr = phi i32 [ %i.bz, %bb.l ], [ %i.dj, %bb.o ]
  %i.ds = phi i32 [ %i.bo, %bb.l ], [ %i.dk, %bb.o ]
  %i.dt = phi ptr [ %i.bp, %bb.l ], [ %i.dl, %bb.o ]
  %i.du = phi i32 [ %i.bq, %bb.l ], [ %i.dp, %bb.o ]
  %.0.i.i51.i = phi i32 [ 0, %bb.l ], [ %i.dq, %bb.o ]
  %i.dv = shl i32 %.0.i.i51.i, %i.br
  %i.dw = or i32 %i.dv, %i.bs                     ; 3 uses
  store i32 %i.dw, ptr %i.k, align 4, !tbaa !25
  %i.dx = add nsw i32 %i.br, 8                    ; 3 uses
  store i32 %i.dx, ptr %i.j, align 8, !tbaa !24
  %i.dy = icmp slt i32 %i.br, 17
  br i1 %i.dy, label %.preheader62.i, label %_ZL8zreceiveP4zbufi.exit72.i.i, !llvm.loop !27

_ZL8zreceiveP4zbufi.exit72.i.i:                   ; preds = %_ZL5zget8P4zbuf.exit.i.i, %bb.h, %.preheader80.i.i
  %.promoted1442.i = phi i32 [ %.promoted1448.i, %.preheader80.i.i ], [ %.promoted1447.i, %bb.h ], [ %.promoted1444.i, %_ZL5zget8P4zbuf.exit.i.i ]
  %.promoted1335.i = phi i32 [ %.promoted1340.i, %.preheader80.i.i ], [ %.promoted1339.i, %bb.h ], [ %.promoted1337.i, %_ZL5zget8P4zbuf.exit.i.i ]
  %.promoted1227.i = phi ptr [ %.promoted1233.i, %.preheader80.i.i ], [ %.promoted1232.i, %bb.h ], [ %.promoted1229.i, %_ZL5zget8P4zbuf.exit.i.i ]
  %.promoted22.i = phi i32 [ %.promoted26.i, %.preheader80.i.i ], [ %.promoted25.i, %bb.h ], [ %.promoted24.i, %_ZL5zget8P4zbuf.exit.i.i ]
  %i.dz = phi i32 [ %i.bl, %.preheader80.i.i ], [ %i.br, %bb.h ], [ %i.dx, %_ZL5zget8P4zbuf.exit.i.i ]
  %i.ea = phi i32 [ %.promoted.i16.i, %.preheader80.i.i ], [ %i.bs, %bb.h ], [ %i.dw, %_ZL5zget8P4zbuf.exit.i.i ] ; 2 uses
  %i.eb = lshr i32 %i.ea, 3                       ; 3 uses
  store i32 %i.eb, ptr %i.k, align 4, !tbaa !25
  %i.ec = add nsw i32 %i.dz, -3                   ; 3 uses
  store i32 %i.ec, ptr %i.j, align 8, !tbaa !24
  %i.ed = trunc i32 %i.ea to i8
  %i.ee = and i8 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr @_ZZL21compute_huffman_codesP4zbufE15length_dezigzag, i64 %indvars.iv.i.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.eh
  store i8 %i.ee, ptr %i.ei, align 1, !tbaa !9
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %bb.p, label %.preheader80.i.i, !llvm.loop !29

bb.p:                                             ; preds = %_ZL8zreceiveP4zbufi.exit72.i.i
  %i.ej = add nuw nsw i32 %i.bd, %i.aw            ; 3 uses
  %i.ek = call fastcc noundef i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr noundef %0, ptr noundef %i.b, i32 noundef 19)
  %.not.i.i = trunc nuw i32 %i.ek to i1
  br i1 %.not.i.i, label %.preheader79.i.i, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

.preheader79.i.i:                                 ; preds = %bb.p, %bb.al
  %i.el = phi i32 [ %i.hp, %bb.al ], [ %i.eb, %bb.p ]
  %i.em = phi i32 [ %i.hq, %bb.al ], [ %i.ec, %bb.p ]
  %.05685.i.i = phi i32 [ %.359.i.i, %bb.al ], [ 0, %bb.p ] ; 7 uses
  %i.en = icmp slt i32 %i.em, 16
  br i1 %i.en, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.preheader79.i.i
  %i.eo = load i32, ptr %i.i, align 8, !tbaa !23
  %.not.i.i.i = icmp eq i32 %i.eo, 0
  br i1 %.not.i.i.i, label %bb.r, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre97.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader79.i.i
  %i.ep = phi i32 [ %.pre97.i.i, %bb.r ], [ %i.el, %.preheader79.i.i ] ; 4 uses
  %i.eq = and i32 %i.ep, 511
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !30 ; 2 uses
  %.not15.i.i.i = icmp eq i16 %i.et, 0
  br i1 %.not15.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = lshr i32 %i.eu, 9                       ; 2 uses
  %i.ew = lshr i32 %i.ep, %i.ev                   ; 2 uses
  store i32 %i.ew, ptr %i.k, align 4, !tbaa !25
  %i.ex = load i32, ptr %i.j, align 8, !tbaa !24
  %i.ey = sub nsw i32 %i.ex, %i.ev                ; 2 uses
  store i32 %i.ey, ptr %i.j, align 8, !tbaa !24
  %i.ez = and i32 %i.eu, 511
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i

bb.u:                                             ; preds = %bb.s
  %trunc.i.i.i.i = trunc i32 %i.ep to i16
  %rev.i.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i.i)
  %i.fa = zext i16 %rev.i.i.i.i to i32            ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.v ], [ 10, %bb.u ] ; 7 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !32
  %i.fd = icmp sgt i32 %i.fc, %i.fa
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br i1 %i.fd, label %bb.w, label %bb.v, !llvm.loop !33

bb.w:                                             ; preds = %bb.v
  %i.fe = trunc nuw nsw i64 %indvars.iv.i.i.i to i32 ; 3 uses
  %i.ff = icmp samesign ugt i64 %indvars.iv.i.i.i, 15
  br i1 %i.ff, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fg = sub nuw nsw i32 16, %i.fe
  %i.fh = lshr i32 %i.fa, %i.fg
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv.i.i.i
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !30
  %i.fk = zext i16 %i.fj to i32
  %i.fl = sub nsw i32 %i.fh, %i.fk
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv.i.i.i
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !30
  %i.fo = zext i16 %i.fn to i32
  %i.fp = add nsw i32 %i.fl, %i.fo                ; 2 uses
  %i.fq = icmp sgt i32 %i.fp, 287
  br i1 %i.fq, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = sext i32 %i.fp to i64                   ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %i.p, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !9
  %i.fu = zext i8 %i.ft to i64
  %.not.i76.i.i = icmp eq i64 %indvars.iv.i.i.i, %i.fu
  br i1 %.not.i76.i.i, label %bb.z, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.fv = lshr i32 %i.ep, %i.fe                   ; 2 uses
  store i32 %i.fv, ptr %i.k, align 4, !tbaa !25
  %i.fw = load i32, ptr %i.j, align 8, !tbaa !24
  %i.fx = sub nsw i32 %i.fw, %i.fe                ; 2 uses
  store i32 %i.fx, ptr %i.j, align 8, !tbaa !24
  %i.fy = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.fr
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !30
  %i.ga = zext i16 %i.fz to i32
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i

_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i:    ; preds = %bb.z, %bb.t
  %i.gb = phi i32 [ %i.fv, %bb.z ], [ %i.ew, %bb.t ] ; 4 uses
  %i.gc = phi i32 [ %i.fx, %bb.z ], [ %i.ey, %bb.t ] ; 7 uses
  %.0.i.i.i = phi i32 [ %i.ga, %bb.z ], [ %i.ez, %bb.t ] ; 4 uses
  %or.cond.i.i = icmp samesign ugt i32 %.0.i.i.i, 18
  br i1 %or.cond.i.i, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i
  %i.gd = icmp samesign ult i32 %.0.i.i.i, 16
  br i1 %i.gd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ge = trunc nuw nsw i32 %.0.i.i.i to i8
  %i.gf = add nsw i32 %.05685.i.i, 1
  %i.gg = sext i32 %.05685.i.i to i64
  %i.gh = getelementptr inbounds i8, ptr %i.a, i64 %i.gg
  store i8 %i.ge, ptr %i.gh, align 1, !tbaa !9
  br label %bb.al

bb.ac:                                            ; preds = %bb.aa
  switch i32 %.0.i.i.i, label %bb.ai [
    i32 16, label %bb.ad
    i32 17, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.gi = icmp slt i32 %i.gc, 2
  br i1 %i.gi, label %bb.ae, label %_ZL8zreceiveP4zbufi.exit71.i.i

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre100.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre101.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit71.i.i

_ZL8zreceiveP4zbufi.exit71.i.i:                   ; preds = %bb.ae, %bb.ad
  %i.gj = phi i32 [ %i.gc, %bb.ad ], [ %.pre101.i.i, %bb.ae ]
  %i.gk = phi i32 [ %i.gb, %bb.ad ], [ %.pre100.i.i, %bb.ae ] ; 2 uses
  %i.gl = lshr i32 %i.gk, 2                       ; 2 uses
  store i32 %i.gl, ptr %i.k, align 4, !tbaa !25
  %i.gm = add nsw i32 %i.gj, -2                   ; 2 uses
  store i32 %i.gm, ptr %i.j, align 8, !tbaa !24
  %i.gn = icmp eq i32 %.05685.i.i, 0
  br i1 %i.gn, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %_ZL8zreceiveP4zbufi.exit71.i.i
  %i.go = and i32 %i.gk, 3
  %i.gp = add nuw nsw i32 %i.go, 3
  %i.gq = sext i32 %.05685.i.i to i64
  %i.gr = getelementptr i8, ptr %i.a, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -1
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !9
  br label %bb.ak

bb.ag:                                            ; preds = %bb.ac
  %i.gu = icmp slt i32 %i.gc, 3
  br i1 %i.gu, label %bb.ah, label %_ZL8zreceiveP4zbufi.exit70.i.i

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre98.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre99.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit70.i.i

_ZL8zreceiveP4zbufi.exit70.i.i:                   ; preds = %bb.ah, %bb.ag
  %i.gv = phi i32 [ %i.gc, %bb.ag ], [ %.pre99.i.i, %bb.ah ]
  %i.gw = phi i32 [ %i.gb, %bb.ag ], [ %.pre98.i.i, %bb.ah ] ; 2 uses
  %i.gx = and i32 %i.gw, 7
  %i.gy = lshr i32 %i.gw, 3                       ; 2 uses
  store i32 %i.gy, ptr %i.k, align 4, !tbaa !25
  %i.gz = add nsw i32 %i.gv, -3                   ; 2 uses
  store i32 %i.gz, ptr %i.j, align 8, !tbaa !24
  %i.ha = add nuw nsw i32 %i.gx, 3
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ac
  %i.hb = icmp slt i32 %i.gc, 7
  br i1 %i.hb, label %bb.aj, label %_ZL8zreceiveP4zbufi.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre102.i.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre103.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit.i.i

_ZL8zreceiveP4zbufi.exit.i.i:                     ; preds = %bb.aj, %bb.ai
  %i.hc = phi i32 [ %i.gc, %bb.ai ], [ %.pre103.i.i, %bb.aj ]
  %i.hd = phi i32 [ %i.gb, %bb.ai ], [ %.pre102.i.i, %bb.aj ] ; 2 uses
  %i.he = and i32 %i.hd, 127
  %i.hf = lshr i32 %i.hd, 7                       ; 2 uses
  store i32 %i.hf, ptr %i.k, align 4, !tbaa !25
  %i.hg = add nsw i32 %i.hc, -7                   ; 2 uses
  store i32 %i.hg, ptr %i.j, align 8, !tbaa !24
  %i.hh = add nuw nsw i32 %i.he, 11
  br label %bb.ak

bb.ak:                                            ; preds = %_ZL8zreceiveP4zbufi.exit.i.i, %_ZL8zreceiveP4zbufi.exit70.i.i, %bb.af
  %i.hi = phi i32 [ %i.gl, %bb.af ], [ %i.gy, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hf, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %i.hj = phi i32 [ %i.gm, %bb.af ], [ %i.gz, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hg, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %.052.i.i = phi i32 [ %i.gp, %bb.af ], [ %i.ha, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ %i.hh, %_ZL8zreceiveP4zbufi.exit.i.i ] ; 3 uses
  %.0.i.i = phi i8 [ %i.gt, %bb.af ], [ 0, %_ZL8zreceiveP4zbufi.exit70.i.i ], [ 0, %_ZL8zreceiveP4zbufi.exit.i.i ]
  %i.hk = sub nsw i32 %i.ej, %.05685.i.i
  %i.hl = icmp slt i32 %i.hk, %.052.i.i
  br i1 %i.hl, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.ak
  %i.hm = sext i32 %.05685.i.i to i64
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.hm
  %i.hn = zext nneg i32 %.052.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i.i, i8 %.0.i.i, i64 %i.hn, i1 false), !tbaa !9
  %i.ho = add nsw i32 %.052.i.i, %.05685.i.i
  br label %bb.al

bb.al:                                            ; preds = %.preheader.preheader.i.i, %bb.ab
  %i.hp = phi i32 [ %i.gb, %bb.ab ], [ %i.hi, %.preheader.preheader.i.i ]
  %i.hq = phi i32 [ %i.gc, %bb.ab ], [ %i.hj, %.preheader.preheader.i.i ]
  %.359.i.i = phi i32 [ %i.gf, %bb.ab ], [ %i.ho, %.preheader.preheader.i.i ] ; 3 uses
  %i.hr = icmp slt i32 %.359.i.i, %i.ej
  br i1 %i.hr, label %.preheader79.i.i, label %bb.am, !llvm.loop !34

bb.am:                                            ; preds = %bb.al
  %.not66.i.i = icmp eq i32 %.359.i.i, %i.ej
  br i1 %.not66.i.i, label %bb.an, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.hs = call fastcc noundef i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr noundef %i.r, ptr noundef %i.a, i32 noundef %i.aw)
  %.not67.i.i = trunc nuw i32 %i.hs to i1
  br i1 %.not67.i.i, label %_ZL21compute_huffman_codesP4zbuf.exit.i, label %_ZL21compute_huffman_codesP4zbuf.exit.thread.i

_ZL21compute_huffman_codesP4zbuf.exit.thread.i:   ; preds = %bb.an, %bb.am, %bb.p, %bb.ak, %_ZL8zreceiveP4zbufi.exit71.i.i, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i.i, %bb.y, %bb.x, %bb.w, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  br label %_ZL10decompressPci.exit

_ZL21compute_huffman_codesP4zbuf.exit.i:          ; preds = %bb.an
  %i.ht = zext nneg i32 %i.aw to i64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ht
  %i.hv = call fastcc noundef i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr noundef %i.s, ptr noundef %i.hu, i32 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #12
  %.not23.i = trunc nuw i32 %i.hv to i1
  br i1 %.not23.i, label %bb.ao, label %_ZL10decompressPci.exit

bb.ao:                                            ; preds = %_ZL21compute_huffman_codesP4zbuf.exit.i
  %i.hw = load ptr, ptr %i.g, align 8, !tbaa !21
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.i.i, %bb.ao
  %.051.i.i = phi ptr [ %i.hw, %bb.ao ], [ %.7.i.i, %.loopexit.i.i ] ; 16 uses
  %i.hx = load i32, ptr %i.j, align 8, !tbaa !24
  %i.hy = icmp slt i32 %i.hx, 16
  br i1 %i.hy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.hz = load i32, ptr %i.i, align 8, !tbaa !23
  %.not.i74.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not.i74.i.i, label %bb.ar, label %_ZL10decompressPci.exit

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ap
  %i.ia = load i32, ptr %i.k, align 4, !tbaa !25  ; 4 uses
  %i.ib = and i32 %i.ia, 511
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 2, !tbaa !30 ; 2 uses
  %.not15.i72.i.i = icmp eq i16 %i.ie, 0
  br i1 %.not15.i72.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = zext i16 %i.ie to i32                   ; 2 uses
  %i.ig = lshr i32 %i.if, 9                       ; 2 uses
  %i.ih = lshr i32 %i.ia, %i.ig                   ; 2 uses
  store i32 %i.ih, ptr %i.k, align 4, !tbaa !25
  %i.ii = load i32, ptr %i.j, align 8, !tbaa !24
  %i.ij = sub nsw i32 %i.ii, %i.ig                ; 2 uses
  store i32 %i.ij, ptr %i.j, align 8, !tbaa !24
  %i.ik = and i32 %i.if, 511
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i

bb.au:                                            ; preds = %bb.as
  %trunc.i.i.i44.i = trunc i32 %i.ia to i16
  %rev.i.i.i45.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i44.i)
  %i.il = zext i16 %rev.i.i.i45.i to i32          ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.i.i46.i = phi i64 [ %indvars.iv.next.i.i47.i, %bb.av ], [ 10, %bb.au ] ; 7 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.i46.i
  %i.in = load i32, ptr %i.im, align 4, !tbaa !32
  %i.io = icmp sgt i32 %i.in, %i.il
  %indvars.iv.next.i.i47.i = add nuw nsw i64 %indvars.iv.i.i46.i, 1
  br i1 %i.io, label %bb.aw, label %bb.av, !llvm.loop !33

bb.aw:                                            ; preds = %bb.av
  %i.ip = trunc nuw nsw i64 %indvars.iv.i.i46.i to i32 ; 3 uses
  %i.iq = icmp samesign ugt i64 %indvars.iv.i.i46.i, 15
  br i1 %i.iq, label %_ZL10decompressPci.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ir = sub nuw nsw i32 16, %i.ip
  %i.is = lshr i32 %i.il, %i.ir
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv.i.i46.i
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !30
  %i.iv = zext i16 %i.iu to i32
  %i.iw = sub nsw i32 %i.is, %i.iv
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %indvars.iv.i.i46.i
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !30
  %i.iz = zext i16 %i.iy to i32
  %i.ja = add nsw i32 %i.iw, %i.iz                ; 2 uses
  %i.jb = icmp sgt i32 %i.ja, 287
  br i1 %i.jb, label %_ZL10decompressPci.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jc = sext i32 %i.ja to i64                   ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.w, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !9
  %i.jf = zext i8 %i.je to i64
  %.not.i76.i48.i = icmp eq i64 %indvars.iv.i.i46.i, %i.jf
  br i1 %.not.i76.i48.i, label %bb.az, label %_ZL10decompressPci.exit

bb.az:                                            ; preds = %bb.ay
  %i.jg = lshr i32 %i.ia, %i.ip                   ; 2 uses
  store i32 %i.jg, ptr %i.k, align 4, !tbaa !25
  %i.jh = load i32, ptr %i.j, align 8, !tbaa !24
  %i.ji = sub nsw i32 %i.jh, %i.ip                ; 2 uses
  store i32 %i.ji, ptr %i.j, align 8, !tbaa !24
  %i.jj = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.jc
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !30
  %i.jl = zext i16 %i.jk to i32
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i

_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i:  ; preds = %bb.az, %bb.at
  %i.jm = phi i32 [ %i.jg, %bb.az ], [ %i.ih, %bb.at ] ; 3 uses
  %.pr.i = phi i32 [ %i.ji, %bb.az ], [ %i.ij, %bb.at ] ; 4 uses
  %.0.i73.i.i = phi i32 [ %i.jl, %bb.az ], [ %i.ik, %bb.at ] ; 5 uses
  %i.jn = icmp samesign ult i32 %.0.i73.i.i, 256
  br i1 %i.jn, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i
  %i.jo = load ptr, ptr %i.h, align 8, !tbaa !22
  %.not69.i.i = icmp ult ptr %.051.i.i, %i.jo
  br i1 %.not69.i.i, label %bb.bb, label %_ZL10decompressPci.exit

bb.bb:                                            ; preds = %bb.ba
  %i.jp = trunc nuw i32 %.0.i73.i.i to i8
  %i.jq = getelementptr inbounds nuw i8, ptr %.051.i.i, i64 1
  store i8 %i.jp, ptr %.051.i.i, align 1, !tbaa !9
  br label %.loopexit.i.i

bb.bc:                                            ; preds = %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit75.i.i
  %i.jr = icmp eq i32 %.0.i73.i.i, 256
  br i1 %i.jr, label %bb.bx, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.js = add nsw i32 %.0.i73.i.i, -257
  %i.jt = zext nneg i32 %i.js to i64              ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr @_ZL12zlength_base, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !32 ; 2 uses
  %i.jw = add nsw i32 %.0.i73.i.i, -285
  %.not.i28.i = icmp ult i32 %i.jw, -20
  br i1 %.not.i28.i, label %thread-pre-split.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr @_ZL13zlength_extra, i64 %i.jt
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !32 ; 4 uses
  %i.jz = icmp slt i32 %.pr.i, %i.jy
  br i1 %i.jz, label %bb.bf, label %_ZL8zreceiveP4zbufi.exit71.i29.i

bb.bf:                                            ; preds = %bb.be
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre.i42.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre101.i43.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit71.i29.i

_ZL8zreceiveP4zbufi.exit71.i29.i:                 ; preds = %bb.bf, %bb.be
  %i.ka = phi i32 [ %.pr.i, %bb.be ], [ %.pre101.i43.i, %bb.bf ]
  %i.kb = phi i32 [ %i.jm, %bb.be ], [ %.pre.i42.i, %bb.bf ] ; 2 uses
  %notmask.i70.i.i = shl nsw i32 -1, %i.jy
  %i.kc = xor i32 %notmask.i70.i.i, -1
  %i.kd = and i32 %i.kb, %i.kc
  %i.ke = lshr i32 %i.kb, %i.jy                   ; 2 uses
  store i32 %i.ke, ptr %i.k, align 4, !tbaa !25
  %i.kf = sub nsw i32 %i.ka, %i.jy                ; 2 uses
  store i32 %i.kf, ptr %i.j, align 8, !tbaa !24
  %i.kg = add i32 %i.kd, %i.jv
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %_ZL8zreceiveP4zbufi.exit71.i29.i, %bb.bd
  %i.kh = phi i32 [ %i.ke, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %i.jm, %bb.bd ]
  %i.ki = phi i32 [ %i.kf, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %.pr.i, %bb.bd ]
  %.047.i.i = phi i32 [ %i.kg, %_ZL8zreceiveP4zbufi.exit71.i29.i ], [ %i.jv, %bb.bd ] ; 10 uses
  %i.kj = icmp slt i32 %i.ki, 16
  br i1 %i.kj, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %thread-pre-split.i.i
  %i.kk = load i32, ptr %i.i, align 8, !tbaa !23
  %.not.i.i40.i = icmp eq i32 %i.kk, 0
  br i1 %.not.i.i40.i, label %bb.bh, label %_ZL10decompressPci.exit

bb.bh:                                            ; preds = %bb.bg
  call fastcc void @_ZL9fill_bitsP4zbuf(ptr noundef nonnull %1)
  %.pre102.i41.i = load i32, ptr %i.k, align 4, !tbaa !25
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %thread-pre-split.i.i
  %i.kl = phi i32 [ %.pre102.i41.i, %bb.bh ], [ %i.kh, %thread-pre-split.i.i ] ; 4 uses
  %i.km = and i32 %i.kl, 511
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.kn
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !30 ; 2 uses
  %.not15.i.i30.i = icmp eq i16 %i.kp, 0
  br i1 %.not15.i.i30.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kq = zext i16 %i.kp to i32                   ; 2 uses
  %i.kr = lshr i32 %i.kq, 9                       ; 2 uses
  %i.ks = lshr i32 %i.kl, %i.kr                   ; 2 uses
  store i32 %i.ks, ptr %i.k, align 4, !tbaa !25
  %i.kt = load i32, ptr %i.j, align 8, !tbaa !24
  %i.ku = sub nsw i32 %i.kt, %i.kr                ; 2 uses
  store i32 %i.ku, ptr %i.j, align 8, !tbaa !24
  %i.kv = and i32 %i.kq, 511
  br label %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i

bb.bk:                                            ; preds = %bb.bi
  %trunc.i.i77.i.i = trunc i32 %i.kl to i16
  %rev.i.i78.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i77.i.i)
  %i.kw = zext i16 %rev.i.i78.i.i to i32          ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %indvars.iv.i79.i.i = phi i64 [ %indvars.iv.next.i80.i.i, %bb.bl ], [ 10, %bb.bk ] ; 7 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i79.i.i
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !32
  %i.kz = icmp sgt i32 %i.ky, %i.kw
  %indvars.iv.next.i80.i.i = add nuw nsw i64 %indvars.iv.i79.i.i, 1
  br i1 %i.kz, label %bb.bm, label %bb.bl, !llvm.loop !33

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
begin_hunk_1_@_ZZL10mixbox_lutvEN13mixbox_init_tC2Ev:bb.a
  %.pre103.i39.i = load i32, ptr %i.k, align 4, !tbaa !25
  %.pre104.i.i = load i32, ptr %i.j, align 8, !tbaa !24
  br label %_ZL8zreceiveP4zbufi.exit.i33.i

_ZL8zreceiveP4zbufi.exit.i33.i:                   ; preds = %bb.br, %bb.bq
  %i.mg = phi i32 [ %i.ly, %bb.bq ], [ %.pre104.i.i, %bb.br ]
  %i.mh = phi i32 [ %i.lx, %bb.bq ], [ %.pre103.i39.i, %bb.br ] ; 2 uses
  %notmask.i.i.i = shl nsw i32 -1, %i.me
  %i.mi = xor i32 %notmask.i.i.i, -1
  %i.mj = and i32 %i.mh, %i.mi
  %i.mk = lshr i32 %i.mh, %i.me
  store i32 %i.mk, ptr %i.k, align 4, !tbaa !25
  %i.ml = sub nsw i32 %i.mg, %i.me
  store i32 %i.ml, ptr %i.j, align 8, !tbaa !24
  %i.mm = add i32 %i.mj, %i.mb
  br label %bb.bs

bb.bs:                                            ; preds = %_ZL8zreceiveP4zbufi.exit.i33.i, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i
  %.0.i34.i = phi i32 [ %i.mm, %_ZL8zreceiveP4zbufi.exit.i33.i ], [ %i.mb, %_ZL15zhuffman_decodeP4zbufP8zhuffman.exit.i31.i ] ; 2 uses
  %i.mn = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.mo = ptrtoint ptr %.051.i.i to i64
  %i.mp = ptrtoint ptr %i.mn to i64
  %i.mq = sub i64 %i.mo, %i.mp
  %i.mr = sext i32 %.0.i34.i to i64               ; 3 uses
  %i.ms = icmp slt i64 %i.mq, %i.mr
  br i1 %i.ms, label %_ZL10decompressPci.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mt = sext i32 %.047.i.i to i64
  %i.mu = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.mt
  %i.mv = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.mw = icmp ugt ptr %i.mu, %i.mv
  br i1 %i.mw, label %_ZL10decompressPci.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mx = sub nsw i64 0, %i.mr
  %i.my = getelementptr inbounds i8, ptr %.051.i.i, i64 %i.mx ; 6 uses
  %i.mz = icmp eq i32 %.0.i34.i, 1
  %.not67.i35.i = icmp eq i32 %.047.i.i, 0        ; 2 uses
  br i1 %i.mz, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %.preheader.preheader.i37.i

.preheader.preheader.i37.i:                       ; preds = %bb.bv
  %i.na = load i8, ptr %i.my, align 1, !tbaa !9
  %i.nb = zext i32 %.047.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.051.i.i, i8 %i.na, i64 %i.nb, i1 false), !tbaa !9
  %scevgep.i38.i = getelementptr i8, ptr %.051.i.i, i64 1
  %i.nc = add i32 %.047.i.i, -1
  %i.nd = zext i32 %i.nc to i64
  %scevgep100.i.i = getelementptr i8, ptr %scevgep.i38.i, i64 %i.nd
  br label %.loopexit.i.i

bb.bw:                                            ; preds = %bb.bu
  br i1 %.not67.i35.i, label %.loopexit.i.i, label %iter.check

iter.check:                                       ; preds = %bb.bw
  %i.ne = zext i32 %.047.i.i to i64               ; 5 uses
  %min.iters.check = icmp ult i32 %.047.i.i, 4
  %i.nf = add nsw i64 %i.mr, -1
  %diff.check = icmp ult i64 %i.nf, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader93.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check85 = icmp ult i32 %.047.i.i, 32
  br i1 %min.iters.check85, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ng = and i64 %i.ne, 28
  %n.vec = and i64 %i.ne, 4294967264              ; 6 uses
  %i.nh = getelementptr i8, ptr %.051.i.i, i64 %n.vec ; 2 uses
  %i.ni = getelementptr i8, ptr %i.my, i64 %n.vec
  %i.nj = trunc nuw i64 %n.vec to i32
  %i.nk = sub i32 %.047.i.i, %i.nj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.051.i.i, i64 %index ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.my, i64 %index ; 2 uses
  %i.nl = getelementptr i8, ptr %next.gep86, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep86, align 1, !tbaa !9
  %wide.load87 = load <16 x i8>, ptr %i.nl, align 1, !tbaa !9
  %i.nm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !9
  store <16 x i8> %wide.load87, ptr %i.nm, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nn = icmp eq i64 %index.next, %n.vec
  br i1 %i.nn, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ne
  br i1 %cmp.n, label %.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ng, 0
  br i1 %min.epilog.iters.check, label %.preheader93.i.i.preheader, label %vec.epilog.ph, !prof !38

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec90 = and i64 %i.ne, 4294967292            ; 5 uses
  %i.no = getelementptr i8, ptr %.051.i.i, i64 %n.vec90 ; 2 uses
  %i.np = getelementptr i8, ptr %i.my, i64 %n.vec90
  %i.nq = trunc nuw i64 %n.vec90 to i32
  %i.nr = sub i32 %.047.i.i, %i.nq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 3 uses
  %next.gep92 = getelementptr i8, ptr %.051.i.i, i64 %index91
  %next.gep93 = getelementptr i8, ptr %i.my, i64 %index91
  %wide.load94 = load <4 x i8>, ptr %next.gep93, align 1, !tbaa !9
  store <4 x i8> %wide.load94, ptr %next.gep92, align 1, !tbaa !9
  %index.next95 = add nuw i64 %index91, 4         ; 2 uses
  %i.ns = icmp eq i64 %index.next95, %n.vec90
  br i1 %i.ns, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n96 = icmp eq i64 %n.vec90, %i.ne
  br i1 %cmp.n96, label %.loopexit.i.i, label %.preheader93.i.i.preheader

.preheader93.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.i.i.ph = phi ptr [ %.051.i.i, %iter.check ], [ %i.nh, %vec.epilog.iter.check ], [ %i.no, %vec.epilog.middle.block ] ; 2 uses
  %.048.i.i.ph = phi ptr [ %i.my, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.np, %vec.epilog.middle.block ] ; 2 uses
  %.2.i.i.ph = phi i32 [ %.047.i.i, %iter.check ], [ %i.nk, %vec.epilog.iter.check ], [ %i.nr, %vec.epilog.middle.block ] ; 4 uses
  %i.nt = add nsw i32 %.2.i.i.ph, -1
  %xtraiter = and i32 %.2.i.i.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol

.preheader93.i.i.prol:                            ; preds = %.preheader93.i.i.preheader, %.preheader93.i.i.prol
  %.3.i.i.prol = phi ptr [ %i.nw, %.preheader93.i.i.prol ], [ %.3.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.048.i.i.prol = phi ptr [ %i.nu, %.preheader93.i.i.prol ], [ %.048.i.i.ph, %.preheader93.i.i.preheader ] ; 2 uses
  %.2.i.i.prol = phi i32 [ %i.nx, %.preheader93.i.i.prol ], [ %.2.i.i.ph, %.preheader93.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader93.i.i.prol ], [ 0, %.preheader93.i.i.preheader ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 1 ; 2 uses
  %i.nv = load i8, ptr %.048.i.i.prol, align 1, !tbaa !9
  %i.nw = getelementptr inbounds nuw i8, ptr %.3.i.i.prol, i64 1 ; 3 uses
  store i8 %i.nv, ptr %.3.i.i.prol, align 1, !tbaa !9
  %i.nx = add nsw i32 %.2.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader93.i.i.prol.loopexit, label %.preheader93.i.i.prol, !llvm.loop !40

.preheader93.i.i.prol.loopexit:                   ; preds = %.preheader93.i.i.prol, %.preheader93.i.i.preheader
  %.lcssa114.unr = phi ptr [ poison, %.preheader93.i.i.preheader ], [ %i.nw, %.preheader93.i.i.prol ]
  %.3.i.i.unr = phi ptr [ %.3.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nw, %.preheader93.i.i.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nu, %.preheader93.i.i.prol ]
  %.2.i.i.unr = phi i32 [ %.2.i.i.ph, %.preheader93.i.i.preheader ], [ %i.nx, %.preheader93.i.i.prol ]
  %i.ny = icmp ult i32 %i.nt, 7
  br i1 %i.ny, label %.loopexit.i.i, label %.preheader93.i.i

.preheader93.i.i:                                 ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i
  %.3.i.i = phi ptr [ %i.ow, %.preheader93.i.i ], [ %.3.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.048.i.i = phi ptr [ %i.ou, %.preheader93.i.i ], [ %.048.i.i.unr, %.preheader93.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i = phi i32 [ %i.ox, %.preheader93.i.i ], [ %.2.i.i.unr, %.preheader93.i.i.prol.loopexit ]
  %i.nz = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 1
  %i.oa = load i8, ptr %.048.i.i, align 1, !tbaa !9
  %i.ob = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 1
  store i8 %i.oa, ptr %.3.i.i, align 1, !tbaa !9
  %i.oc = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 2
  %i.od = load i8, ptr %i.nz, align 1, !tbaa !9
  %i.oe = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  store i8 %i.od, ptr %i.ob, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 3
  %i.og = load i8, ptr %i.oc, align 1, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 3
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !9
  %i.ok = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 4
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 5
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !9
  %i.on = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 5
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 6
  %i.op = load i8, ptr %i.ol, align 1, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 6
  store i8 %i.op, ptr %i.on, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 7
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 7
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8 ; 2 uses
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !9
  %i.ox = add nsw i32 %.2.i.i, -8                 ; 2 uses
  %.not66.i36.i.7 = icmp eq i32 %i.ox, 0
  br i1 %.not66.i36.i.7, label %.loopexit.i.i, label %.preheader93.i.i, !llvm.loop !42

.loopexit.i.i:                                    ; preds = %.preheader93.i.i.prol.loopexit, %.preheader93.i.i, %middle.block, %vec.epilog.middle.block, %bb.bw, %.preheader.preheader.i37.i, %bb.bv, %bb.bb
  %.7.i.i = phi ptr [ %i.jq, %bb.bb ], [ %scevgep100.i.i, %.preheader.preheader.i37.i ], [ %.051.i.i, %bb.bv ], [ %.051.i.i, %bb.bw ], [ %i.no, %vec.epilog.middle.block ], [ %i.nh, %middle.block ], [ %.lcssa114.unr, %.preheader93.i.i.prol.loopexit ], [ %i.ow, %.preheader93.i.i ]
  br label %bb.ap, !llvm.loop !43

bb.bx:                                            ; preds = %bb.bc
  store ptr %.051.i.i, ptr %i.g, align 8, !tbaa !21
  %.not25.i = trunc i32 %i.ah to i1
  br i1 %.not25.i, label %.preheader.i, label %thread-pre-split.i, !llvm.loop !44

.preheader.i:                                     ; preds = %bb.bx, %.split.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.split.us.i ], [ 0, %bb.bx ] ; 3 uses
  %i.oy = and i64 %indvars.iv.i, 63
  %.not26.i = icmp eq i64 %i.oy, 0
  br i1 %.not26.i, label %.split.us.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.oz = mul nuw nsw i64 %indvars.iv.i, 3        ; 2 uses
  %i.pa = add nuw nsw i64 %i.oz, 4294967293
  %i.pb = and i64 %i.pa, 4294967295
  %i.pc = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.pb ; 3 uses
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !9
  %i.pe = getelementptr inbounds nuw i8, ptr @_ZZL10mixbox_lutvE12decompressed, i64 %i.oz ; 4 uses
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !9
  %i.pg = add i8 %i.pd, -127
  %i.ph = add i8 %i.pg, %i.pf
  store i8 %i.ph, ptr %i.pe, align 1, !tbaa !9
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !9
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 1 ; 2 uses
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !9
  %i.pm = add i8 %i.pj, -127
  %i.pn = add i8 %i.pm, %i.pl
  store i8 %i.pn, ptr %i.pk, align 1, !tbaa !9
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 2
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !9
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 2 ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !9
  %i.ps = add i8 %i.pp, -127
  %i.pt = add i8 %i.ps, %i.pr
  store i8 %i.pt, ptr %i.pq, align 1, !tbaa !9
  br label %.split.us.i

.split.us.i:                                      ; preds = %.preheader.split.preheader.i, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 266369
  br i1 %exitcond.not.i, label %_ZL10decompressPci.exit, label %.preheader.i, !llvm.loop !45

_ZL10decompressPci.exit:                          ; preds = %_ZL8zreceiveP4zbufi.exit.i, %_ZL21compute_huffman_codesP4zbuf.exit.i, %bb.aq, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bg, %bb.bm, %bb.bn, %bb.bo, %bb.bs, %bb.bt, %.split.us.i, %_ZL21compute_huffman_codesP4zbuf.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZL9fill_bitsP4zbuf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted = load i32, ptr %i.a, align 4, !tbaa !25
  %.promoted12 = load i32, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZL5zget8P4zbuf.exit, %bb.a
  %i.h = phi i32 [ %i.bj, %_ZL5zget8P4zbuf.exit ], [ %.promoted12, %bb.a ] ; 4 uses
  %i.i = phi i32 [ %i.bi, %_ZL5zget8P4zbuf.exit ], [ %.promoted, %bb.a ] ; 2 uses
  %.highbits = lshr i32 %i.i, %i.h
  %.not = icmp eq i32 %.highbits, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.k = and i32 %i.j, 3                          ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !12     ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !18   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !9     ; 2 uses
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.e, align 8, !tbaa !17
  %i.u = icmp sgt i32 %i.s, 39
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.g, align 8, !tbaa !23
  br label %_ZL5zget8P4zbuf.exit

bb.h:                                             ; preds = %bb.f
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr @_ZL21mixbox_lut_compressed, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !26   ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !12
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %.pre = load i8, ptr %i.x, align 1, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.y = phi i8 [ %.pre, %bb.h ], [ %i.q, %bb.e ] ; 2 uses
  %i.z = phi i32 [ 0, %bb.h ], [ %i.n, %bb.e ]    ; 2 uses
  %i.aa = phi ptr [ %i.x, %bb.h ], [ %i.m, %bb.e ]
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %i.ad = icmp sgt i8 %i.y, 91
  %.v.i11 = select i1 %i.ad, i8 -36, i8 -35
  %i.ae = add i8 %.v.i11, %i.y
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr i8, ptr %i.ac, i64 1
  %i.ah = load <4 x i8>, ptr %i.ag, align 1, !tbaa !9 ; 2 uses
  %i.ai = icmp sgt <4 x i8> %i.ah, splat (i8 91)
  %i.aj = select <4 x i1> %i.ai, <4 x i8> splat (i8 -36), <4 x i8> splat (i8 -35)
  %i.ak = add <4 x i8> %i.aj, %i.ah               ; 4 uses
  %i.al = extractelement <4 x i8> %i.ak, i64 0
  %i.am = zext i8 %i.al to i32
  %i.an = extractelement <4 x i8> %i.ak, i64 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = extractelement <4 x i8> %i.ak, i64 2
  %i.aq = zext i8 %i.ap to i32
  %i.ar = extractelement <4 x i8> %i.ak, i64 3
  %i.as = zext i8 %i.ar to i32
  %i.at = mul nuw nsw i32 %i.as, 85
  %i.au = add nuw nsw i32 %i.at, %i.aq
  %i.av = mul nuw nsw i32 %i.au, 85
  %i.aw = add nuw nsw i32 %i.av, %i.ao
  %i.ax = mul nuw nsw i32 %i.aw, 85
  %i.ay = add nuw nsw i32 %i.ax, %i.am
  %i.az = mul nuw nsw i32 %i.ay, 85
  %i.ba = add nuw nsw i32 %i.az, %i.af
  store i32 %i.ba, ptr %i.f, align 4
  %i.bb = add nsw i32 %i.z, 5
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.bc = zext nneg i32 %i.k to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !9
  %i.bf = add nsw i32 %i.j, 1
  store i32 %i.bf, ptr %i.c, align 8, !tbaa !19
  %i.bg = zext i8 %i.be to i32
  br label %_ZL5zget8P4zbuf.exit

_ZL5zget8P4zbuf.exit:                             ; preds = %bb.g, %bb.j
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.bg, %bb.j ]
  %i.bh = shl i32 %.0.i, %i.h
  %i.bi = or i32 %i.bh, %i.i                      ; 2 uses
  store i32 %i.bi, ptr %i.a, align 4, !tbaa !25
  %i.bj = add nsw i32 %i.h, 8                     ; 2 uses
  store i32 %i.bj, ptr %i.b, align 8, !tbaa !24
  %i.bk = icmp slt i32 %i.h, 17
  br i1 %i.bk, label %bb.b, label %.loopexit, !llvm.loop !27

.loopexit:                                        ; preds = %_ZL5zget8P4zbuf.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL14zbuild_huffmanP8zhuffmanPKhi(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #8 {
.preheader74.preheader:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [17 x i32], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1024) %0, i8 0, i64 1024, i1 false), !tbaa !30
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader74.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.d = icmp ult i32 %2, 4
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.g ; 2 uses
end_hunk_1
