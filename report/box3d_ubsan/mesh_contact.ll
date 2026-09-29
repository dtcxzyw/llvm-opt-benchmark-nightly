Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/mesh_contact?download=true
inline.NumInlined: 110
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  %i.qm = insertelement <2 x float> poison, float %i.ns, i64 0
  %i.qn = insertelement <2 x float> %i.qm, float %i.nr, i64 1
  %i.qo = extractelement <2 x float> %i.nm, i64 0 ; 2 uses
  %i.qp = extractelement <2 x float> %i.nm, i64 1 ; 2 uses
  %i.qq = insertelement <4 x float> poison, float %i.nk, i64 2
  br label %.lr.ph7354.split.split.us.split.us

.lr.ph7354.split.split.us.split.us:               ; preds = %.lr.ph7354.split.split.us.split.us.preheader, %bb.ct
  %indvars.iv13672 = phi i64 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %indvars.iv.next13673, %bb.ct ] ; 3 uses
  %.07737352.us7375.us = phi i32 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %.4777.ph.us.us, %bb.ct ] ; 16 uses
  %.07787351.us7376.us = phi i32 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %.4782.ph.us.us, %bb.ct ] ; 15 uses
  %.07847350.us7377.us = phi i32 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %.4788.ph.us.us, %bb.ct ] ; 13 uses
  %.07917349.us7378.us = phi i32 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %.2793.ph.us.us, %bb.ct ] ; 9 uses
  %.07947348.us7379.us = phi i32 [ 0, %.lr.ph7354.split.split.us.split.us.preheader ], [ %.2796.ph.us.us, %bb.ct ] ; 5 uses
  %i.qr = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07917349.us7378.us, i32 3), !nosanitize !9 ; 2 uses
  %i.qs = extractvalue { i32, i1 } %i.qr, 1, !nosanitize !9
  br i1 %i.qs, label %.split7364.us, label %bb.ar, !prof !19, !nosanitize !9

bb.ar:                                            ; preds = %.lr.ph7354.split.split.us.split.us
  %i.qt = extractvalue { i32, i1 } %i.qr, 0, !nosanitize !9
  %i.qu = icmp slt i32 %i.qt, %i.of
  br i1 %i.qu, label %bb.as, label %._crit_edge7355.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.qv = getelementptr inbounds nuw [20 x i8], ptr %.fr8557, i64 %indvars.iv13672 ; 5 uses
  %i.qw = mul nuw nsw i64 %indvars.iv13672, 20
  %i.qx = add i64 %i.qw, %i.ov, !nosanitize !9    ; 2 uses
  %.not8561.a = icmp ult i64 %i.qx, %i.ov, !nosanitize !9
  br i1 %.not8561.a, label %.split7369.us, label %bb.at, !prof !19, !nosanitize !9

bb.at:                                            ; preds = %bb.as
  %i.qy = ptrtoint ptr %i.qv to i64, !nosanitize !9 ; 2 uses
  %i.qz = and i64 %i.qy, 3, !nosanitize !9
  %i.ra = icmp eq i64 %i.qz, 0, !nosanitize !9
  br i1 %i.ra, label %bb.au, label %.split7373, !prof !10, !nosanitize !9

bb.au:                                            ; preds = %bb.at
  %i.rb = load i32, ptr %i.qv, align 4, !tbaa !123 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #9
  %i.rc = load i32, ptr %i.ox, align 8, !tbaa !120
  %i.rd = icmp eq i32 %i.rc, 4
  br i1 %i.rd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.re = load ptr, ptr %i.oy, align 8, !tbaa !121
  call void @b3GetHeightFieldTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %21, ptr noundef %i.re, i32 noundef %i.rb) #9
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #9
  call void @b3GetMeshTriangle(ptr dead_on_unwind nonnull writable sret(%struct.b3Triangle) align 4 %22, ptr noundef nonnull %i.oy, i32 noundef %i.rb) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %21, ptr noundef nonnull align 4 dereferenceable(52) %22, i64 52, i1 false), !tbaa.struct !135
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #9
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #9
  %.sroa.0581.0.copyload.us.us = load <2 x float>, ptr %21, align 8 ; 4 uses
  %.sroa.2582.0.copyload.us.us = load float, ptr %.sroa.2582.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0.0.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0581.0.copyload.us.us, i64 0
  %.sroa.0.4.vec.extract.i.us.us = extractelement <2 x float> %.sroa.0581.0.copyload.us.us, i64 1
  %i.rf = fmul float %i.ma, %.sroa.0.0.vec.extract.i.us.us
  %i.rg = fmul float %i.md, %.sroa.0.4.vec.extract.i.us.us
  %i.rh = fadd float %i.rf, %i.rg
  %.sroa.0563.0.copyload.us.us = load <2 x float>, ptr %i.pa, align 4 ; 4 uses
  %.sroa.2564.0.copyload.us.us = load float, ptr %.sroa.2564.0..sroa_idx, align 4 ; 3 uses
  %.sroa.0.0.vec.extract.i1027.us.us = extractelement <2 x float> %.sroa.0563.0.copyload.us.us, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract.i1028.us.us = extractelement <2 x float> %.sroa.0563.0.copyload.us.us, i64 1 ; 2 uses
  %i.ri = fmul <2 x float> %i.me, %.sroa.0581.0.copyload.us.us
  %i.rj = fmul float %i.nv, %.sroa.2582.0.copyload.us.us
  %i.rk = fmul float %i.nw, %.sroa.2582.0.copyload.us.us
  %i.rl = fmul float %i.nr, %.sroa.0.0.vec.extract.i1027.us.us
  %i.rm = shufflevector <2 x float> %.sroa.0581.0.copyload.us.us, <2 x float> %.sroa.0563.0.copyload.us.us, <4 x i32> <i32 1, i32 0, i32 poison, i32 3>
  %i.rn = insertelement <4 x float> %i.rm, float %.sroa.2582.0.copyload.us.us, i64 2
  %i.ro = fmul <4 x float> %i.qj, %i.rn
  %i.rp = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.rh, i64 2
  %i.rq = shufflevector <2 x float> %i.ri, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> %i.rp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rs = fadd <4 x float> %i.ro, %i.rr
  %i.rt = insertelement <4 x float> %i.qq, float %i.rj, i64 0
  %i.ru = insertelement <4 x float> %i.rt, float %i.rk, i64 1
  %i.rv = insertelement <4 x float> %i.ru, float %i.rl, i64 3
  %i.rw = fadd <4 x float> %i.rv, %i.rs           ; 4 uses
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ry = extractelement <4 x float> %i.rw, i64 0
  %i.rz = fadd float %i.qo, %i.ry
  %.sroa.05.4.vec.insert.i.us.us = insertelement <2 x float> %i.rx, float %i.rz, i64 1
  %i.sa = extractelement <4 x float> %i.rw, i64 1
  %i.sb = fadd float %i.qp, %i.sa
  store <2 x float> %.sroa.05.4.vec.insert.i.us.us, ptr %23, align 16, !tbaa !114
  store float %i.sb, ptr %.sroa.4586.0..sroa_idx, align 8, !tbaa !114
  %i.sc = fmul float %i.ma, %.sroa.0.0.vec.extract.i1027.us.us
  %i.sd = fmul float %i.md, %.sroa.0.4.vec.extract.i1028.us.us
  %i.se = fadd float %i.sc, %i.sd
  %i.sf = fmul float %i.nu, %.sroa.2564.0.copyload.us.us
  %i.sg = fadd float %i.sf, %i.se
  %foldExtExtBinop20751 = fmul <2 x float> %i.me, %.sroa.0563.0.copyload.us.us
  %i.sh = extractelement <2 x float> %foldExtExtBinop20751, i64 0
  %i.si = fmul float %i.ns, %.sroa.0.4.vec.extract.i1028.us.us
  %i.sj = fadd float %i.sh, %i.si
  %i.sk = fmul float %i.nv, %.sroa.2564.0.copyload.us.us
  %i.sl = fadd float %i.sk, %i.sj
  %i.sm = fmul float %i.nw, %.sroa.2564.0.copyload.us.us
  %i.sn = extractelement <4 x float> %i.rw, i64 3
  %i.so = fadd float %i.sm, %i.sn
  %i.sp = fadd float %i.nk, %i.sg
  %.sroa.05.0.vec.insert.i1037.us.us = insertelement <2 x float> poison, float %i.sp, i64 0
  %i.sq = fadd float %i.qo, %i.sl
  %.sroa.05.4.vec.insert.i1038.us.us = insertelement <2 x float> %.sroa.05.0.vec.insert.i1037.us.us, float %i.sq, i64 1
  %i.sr = fadd float %i.qp, %i.so
  store <2 x float> %.sroa.05.4.vec.insert.i1038.us.us, ptr %i.oz, align 4, !tbaa !114
  store float %i.sr, ptr %.sroa.4568.0..sroa_idx, align 4, !tbaa !114
  %.sroa.0545.0.copyload.us.us = load <2 x float>, ptr %i.pc, align 8 ; 4 uses
  %.sroa.2546.0.copyload.us.us = load float, ptr %.sroa.2546.0..sroa_idx, align 8 ; 2 uses
  %i.ss = shufflevector <2 x float> %.sroa.0545.0.copyload.us.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i1041.us.us = extractelement <2 x float> %.sroa.0545.0.copyload.us.us, i64 0
  %i.st = fmul float %i.ma, %.sroa.0.0.vec.extract.i1041.us.us
  %i.su = extractelement <2 x float> %.sroa.0545.0.copyload.us.us, i64 1
  %i.sv = fmul float %i.md, %i.su
  %i.sw = fadd float %i.st, %i.sv
  %i.sx = fmul float %i.nu, %.sroa.2546.0.copyload.us.us
  %i.sy = fadd float %i.sx, %i.sw
  %i.sz = fadd float %i.nk, %i.sy
  %.sroa.05.0.vec.insert.i1051.us.us = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.ta = fmul <2 x float> %i.me, %.sroa.0545.0.copyload.us.us
  %i.tb = fmul <2 x float> %i.qn, %i.ss
  %i.tc = fadd <2 x float> %i.tb, %i.ta
  %i.td = insertelement <2 x float> poison, float %.sroa.2546.0.copyload.us.us, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = fmul <2 x float> %i.ql, %i.te
  %i.tg = fadd <2 x float> %i.tf, %i.tc
  %i.th = fadd <2 x float> %i.nm, %i.tg           ; 2 uses
  %i.ti = shufflevector <2 x float> %.sroa.05.0.vec.insert.i1051.us.us, <2 x float> %i.th, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.ti, ptr %i.pb, align 8, !tbaa !114
  %i.tj = extractelement <2 x float> %i.th, i64 1
  store float %i.tj, ptr %.sroa.4550.0..sroa_idx, align 16, !tbaa !114
  %i.tk = getelementptr inbounds nuw i8, ptr %i.qv, i64 4 ; 3 uses
  %i.tl = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.of, i32 %.07917349.us7378.us), !nosanitize !9 ; 2 uses
  %i.tm = extractvalue { i32, i1 } %i.tl, 0, !nosanitize !9 ; 3 uses
  %i.tn = extractvalue { i32, i1 } %i.tl, 1, !nosanitize !9
  br i1 %i.tn, label %.split7411.us.a, label %bb.ay, !prof !19, !nosanitize !9

bb.ay:                                            ; preds = %bb.ax
  %i.to = sext i32 %.07947348.us7379.us to i64    ; 2 uses
  %i.tp = getelementptr inbounds [64 x i8], ptr %i.om, i64 %i.to ; 22 uses
  %i.tq = shl nsw i64 %i.to, 6
  %i.tr = add i64 %i.tq, %i.pd, !nosanitize !9    ; 3 uses
  %i.ts = icmp eq i64 %i.tr, 0
  %i.tt = xor i1 %i.pe, %i.ts
  %i.tu = icmp uge i64 %i.tr, %i.pd, !nosanitize !9
  %i.tv = icmp slt i32 %.07947348.us7379.us, 0
  %i.tw = xor i1 %i.tv, %i.tu
  %i.tx = and i1 %i.tt, %i.tw, !nosanitize !9
  br i1 %i.tx, label %bb.az, label %.split7414.us, !prof !10, !nosanitize !9

bb.az:                                            ; preds = %bb.ay
  %i.ty = sext i32 %.07917349.us7378.us to i64    ; 2 uses
  %i.tz = getelementptr inbounds [24 x i8], ptr %i.ok, i64 %i.ty
  %i.ua = mul nsw i64 %i.ty, 24
  %i.ub = add i64 %i.ua, %i.pf, !nosanitize !9    ; 3 uses
  %i.uc = icmp eq i64 %i.ub, 0
  %i.ud = xor i1 %i.pg, %i.uc
  %i.ue = icmp uge i64 %i.ub, %i.pf, !nosanitize !9
  %i.uf = icmp slt i32 %.07917349.us7378.us, 0
  %i.ug = xor i1 %i.uf, %i.ue
  %i.uh = and i1 %i.ud, %i.ug, !nosanitize !9
  br i1 %i.uh, label %bb.ba, label %.split7418.us, !prof !10, !nosanitize !9

bb.ba:                                            ; preds = %bb.az
  %i.ui = ptrtoint ptr %i.tp to i64, !nosanitize !9 ; 2 uses
  %i.uj = and i64 %i.ui, 7, !nosanitize !9
  %i.uk = icmp eq i64 %i.uj, 0, !nosanitize !9
  %i.ul = and i1 %i.pe, %i.uk
  br i1 %i.ul, label %bb.bb, label %.split7422.us, !prof !10, !nosanitize !9

bb.bb:                                            ; preds = %bb.ba
  %i.um = getelementptr inbounds nuw i8, ptr %i.tp, i64 24 ; 2 uses
  store ptr %i.tz, ptr %i.um, align 8, !tbaa !138
  %i.un = getelementptr inbounds nuw i8, ptr %i.tp, i64 32 ; 2 uses
  store i32 0, ptr %i.un, align 8, !tbaa !139
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tp, i64 60
  %i.up = load i32, ptr %i.ph, align 8, !tbaa !141
  store i32 %i.up, ptr %i.uo, align 4, !tbaa !142
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tp, i64 56 ; 2 uses
  store i32 0, ptr %i.uq, align 8, !tbaa !143
  %i.ur = load i32, ptr %i.oo, align 8, !tbaa !120
  switch i32 %i.ur, label %.critedge [
    i32 0, label %bb.bj
    i32 3, label %bb.bd
    i32 5, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  call void @b3CollideTriangleAndSphere(ptr noundef nonnull %i.tp, i32 noundef %i.tm, ptr noundef nonnull %23, ptr noundef nonnull %i.pi) #9
  br label %bb.bk

bb.bd:                                            ; preds = %bb.bb
  br i1 %8, label %bb.be, label %.thread

bb.be:                                            ; preds = %bb.bd
  %i.us = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.ut = load i8, ptr %i.us, align 4, !tbaa !121
  %i.uu = icmp eq i8 %i.ut, 4
  br i1 %i.uu, label %bb.bf, label %.thread

bb.bf:                                            ; preds = %bb.be
  store i64 0, ptr %i.tk, align 4
  br label %.thread

.thread:                                          ; preds = %bb.bd, %bb.be, %bb.bf
  %i.uv = load i32, ptr %i.ph, align 8, !tbaa !141
  %.sroa.0497.0.copyload.us.us = load <2 x float>, ptr %23, align 16
  %.sroa.2498.0.copyload.us.us = load float, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.0495.0.copyload.us.us = load <2 x float>, ptr %i.oz, align 4
  %.sroa.2496.0.copyload.us.us = load float, ptr %.sroa.4568.0..sroa_idx, align 4
  %.sroa.0493.0.copyload.us.us = load <2 x float>, ptr %i.pb, align 8
  %.sroa.2494.0.copyload.us.us = load float, ptr %.sroa.4550.0..sroa_idx, align 16
  call void @b3CollideTriangleAndHull(ptr noundef nonnull %i.tp, i32 noundef %i.tm, <2 x float> %.sroa.0497.0.copyload.us.us, float %.sroa.2498.0.copyload.us.us, <2 x float> %.sroa.0495.0.copyload.us.us, float %.sroa.2496.0.copyload.us.us, <2 x float> %.sroa.0493.0.copyload.us.us, float %.sroa.2494.0.copyload.us.us, i32 noundef %i.uv, ptr noundef %i.ot, ptr noundef nonnull %i.tk, i1 noundef zeroext %i.oe) #9
  br i1 %i.pm, label %bb.bg, label %.split7449.us, !prof !10, !nosanitize !9

bb.bg:                                            ; preds = %.thread
  %i.uw = load i32, ptr %i.pn, align 8, !tbaa !147 ; 2 uses
  %i.ux = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.uw, i32 1), !nosanitize !9 ; 2 uses
  %i.uy = extractvalue { i32, i1 } %i.ux, 1, !nosanitize !9
  br i1 %i.uy, label %.split7455.us, label %bb.bh, !prof !19, !nosanitize !9

bb.bh:                                            ; preds = %bb.bg
  %i.uz = extractvalue { i32, i1 } %i.ux, 0, !nosanitize !9
  store i32 %i.uz, ptr %i.pn, align 8, !tbaa !147
  %i.va = getelementptr inbounds nuw i8, ptr %i.qv, i64 11
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !121 ; 2 uses
  %i.vc = zext i8 %i.vb to i32
  %i.vd = load i32, ptr %i.po, align 4, !tbaa !148 ; 2 uses
  %i.ve = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.vd, i32 %i.vc), !nosanitize !9 ; 2 uses
  %i.vf = extractvalue { i32, i1 } %i.ve, 1, !nosanitize !9
  br i1 %i.vf, label %.split7464.us, label %bb.bi, !prof !19, !nosanitize !9

bb.bi:                                            ; preds = %bb.bh
  %i.vg = extractvalue { i32, i1 } %i.ve, 0, !nosanitize !9
  store i32 %i.vg, ptr %i.po, align 4, !tbaa !148
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bb
  call void @b3CollideTriangleAndCapsule(ptr noundef nonnull %i.tp, i32 noundef %i.tm, ptr noundef nonnull %23, ptr noundef nonnull %i.pi, ptr noundef nonnull %i.tk) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bc
  %i.vh = load i32, ptr %i.un, align 8, !tbaa !139
  %.fr22909 = freeze i32 %i.vh                    ; 6 uses
  %i.vi = icmp sgt i32 %.fr22909, 0
  br i1 %i.vi, label %bb.bl, label %bb.ct

bb.bl:                                            ; preds = %bb.bk
  %i.vj = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07947348.us7379.us, i32 1), !nosanitize !9 ; 2 uses
  %i.vk = extractvalue { i32, i1 } %i.vj, 0, !nosanitize !9 ; 5 uses
  %i.vl = extractvalue { i32, i1 } %i.vj, 1, !nosanitize !9
  br i1 %i.vl, label %.split7474.us, label %bb.bm, !prof !19, !nosanitize !9

bb.bm:                                            ; preds = %bb.bl
  %i.vm = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %.07917349.us7378.us, i32 %.fr22909), !nosanitize !9 ; 2 uses
  %i.vn = extractvalue { i32, i1 } %i.vm, 0, !nosanitize !9 ; 5 uses
  %i.vo = extractvalue { i32, i1 } %i.vm, 1, !nosanitize !9
  br i1 %i.vo, label %.split7477.us, label %bb.bn, !prof !19, !nosanitize !9

bb.bn:                                            ; preds = %bb.bm
  %i.vp = getelementptr inbounds nuw i8, ptr %i.tp, i64 36
  store i32 %i.rb, ptr %i.vp, align 4, !tbaa !149
  %i.vq = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  %.sroa.0486.0.copyload.us.us = load <2 x float>, ptr %23, align 16 ; 2 uses
  %i.vr = load <4 x float>, ptr %.sroa.4586.0..sroa_idx, align 8
  %.sroa.0484.0.copyload.us.us = load <2 x float>, ptr %i.oz, align 4 ; 2 uses
  %.sroa.0482.0.copyload.us.us = load <2 x float>, ptr %i.pb, align 8 ; 2 uses
  %i.vs = load <4 x float>, ptr %.sroa.4568.0..sroa_idx, align 4
  %i.vt = shufflevector <4 x float> %i.vs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.vu = shufflevector <2 x float> %.sroa.0482.0.copyload.us.us, <2 x float> %.sroa.0484.0.copyload.us.us, <2 x i32> <i32 0, i32 3>
  %i.vv = fsub <2 x float> %i.vu, %.sroa.0486.0.copyload.us.us ; 3 uses
  %i.vw = shufflevector <2 x float> %.sroa.0484.0.copyload.us.us, <2 x float> %.sroa.0482.0.copyload.us.us, <2 x i32> <i32 0, i32 3>
  %i.vx = fsub <2 x float> %i.vw, %.sroa.0486.0.copyload.us.us ; 3 uses
  %i.vy = shufflevector <4 x float> %i.vr, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vz = fsub <2 x float> %i.vt, %i.vy           ; 2 uses
  %i.wa = fmul <2 x float> %i.vz, %i.vv
  %i.wb = shufflevector <2 x float> %i.vz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wc = fmul <2 x float> %i.vx, %i.wb
  %i.wd = fsub <2 x float> %i.wa, %i.wc           ; 3 uses
  %shift20753 = shufflevector <2 x float> %i.vx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20754 = fmul <2 x float> %i.vx, %shift20753
  %shift20756 = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20757.a = fmul <2 x float> %shift20756, %i.vv
  %foldExtExtBinop20759.a = fsub <2 x float> %foldExtExtBinop20754, %foldExtExtBinop20757.a ; 3 uses
  %i.we = fmul <2 x float> %i.wd, %i.wd           ; 2 uses
  %shift20761.a = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20762.a = fadd <2 x float> %shift20761.a, %i.we
  %foldExtExtBinop20764 = fmul <2 x float> %foldExtExtBinop20759.a, %foldExtExtBinop20759.a
  %foldExtExtBinop20766 = fadd <2 x float> %foldExtExtBinop20764, %foldExtExtBinop20762.a
  %i.wf = extractelement <2 x float> %foldExtExtBinop20766, i64 0 ; 2 uses
  %i.wg = fcmp ogt float %i.wf, f0x057A0000
  br i1 %i.wg, label %bb.bo, label %b3MakeNormalFromPoints.exit.us.us

bb.bo:                                            ; preds = %bb.bn
  %i.wh = extractelement <2 x float> %foldExtExtBinop20759.a, i64 0
  %sqrt.i.us.us = call float @llvm.sqrt.f32(float %i.wf)
  %i.wi = fdiv float 1.000000e+00, %sqrt.i.us.us  ; 2 uses
  %i.wj = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.wk = shufflevector <2 x float> %i.wd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wl = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = fmul <2 x float> %i.wk, %i.wl
  %i.wn = fmul float %i.wh, %i.wi
  br label %b3MakeNormalFromPoints.exit.us.us

b3MakeNormalFromPoints.exit.us.us:                ; preds = %bb.bo, %bb.bn
  %.sroa.07.0.i.i.us.us = phi <2 x float> [ %i.wm, %bb.bo ], [ zeroinitializer, %bb.bn ] ; 2 uses
  %.sroa.5.0.i.i.us.us = phi float [ %i.wn, %bb.bo ], [ 0.000000e+00, %bb.bn ] ; 2 uses
  store <2 x float> %.sroa.07.0.i.i.us.us, ptr %i.vq, align 4, !tbaa !114
  %.sroa.4489.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.tp, i64 20
  store float %.sroa.5.0.i.i.us.us, ptr %.sroa.4489.0..sroa_idx.us.us, align 4, !tbaa !114
  %i.wo = load i32, ptr %i.pp, align 4, !tbaa !150 ; 4 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.tp, i64 40
  store i32 %i.wo, ptr %i.wp, align 8, !tbaa !151
  %i.wq = getelementptr inbounds nuw i8, ptr %i.tp, i64 44
  %i.wr = load <2 x i32>, ptr %i.pq, align 8, !tbaa !20
  %i.ws = load i32, ptr %i.pq, align 8, !tbaa !152 ; 3 uses
  store <2 x i32> %i.wr, ptr %i.wq, align 4, !tbaa !20
  %i.wt = load i32, ptr %i.uq, align 8, !tbaa !143
  switch i32 %i.wt, label %bb.cm [
    i32 1, label %bb.ci
    i32 2, label %bb.bp
  ]

bb.bp:                                            ; preds = %b3MakeNormalFromPoints.exit.us.us
  %.sroa.0473.0.copyload.us.us = load <2 x float>, ptr %i.tp, align 8
  %.sroa.2474.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %.sroa.2474.0.copyload.us.us = load float, ptr %.sroa.2474.0..sroa_idx.us.us, align 8
  %i.wu = fmul <2 x float> %.sroa.07.0.i.i.us.us, %.sroa.0473.0.copyload.us.us ; 2 uses
  %shift20768 = shufflevector <2 x float> %i.wu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20769 = fadd <2 x float> %i.wu, %shift20768
  %i.wv = extractelement <2 x float> %foldExtExtBinop20769, i64 0
  %i.ww = fmul float %.sroa.5.0.i.i.us.us, %.sroa.2474.0.copyload.us.us
  %i.wx = fadd float %i.ww, %i.wv
  %i.wy = fcmp ogt float %i.wx, 5.000000e-01
  br i1 %i.wy, label %bb.ce, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wz = load ptr, ptr %i.um, align 8, !tbaa !138 ; 6 uses
  %i.xa = icmp ne ptr %i.wz, null, !nosanitize !9
  %i.xb = ptrtoint ptr %i.wz to i64, !nosanitize !9 ; 9 uses
  %i.xc = and i64 %i.xb, 3, !nosanitize !9
  %i.xd = icmp eq i64 %i.xc, 0, !nosanitize !9
  %i.xe = and i1 %i.xa, %i.xd, !nosanitize !9
  br i1 %i.xe, label %bb.br, label %.split7496.us, !prof !10, !nosanitize !9

bb.br:                                            ; preds = %bb.bq
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 12
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !155 ; 3 uses
  %.not8562.a = icmp eq i32 %.fr22909, 1
  br i1 %.not8562.a, label %._crit_edge.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.br
  %wide.trip.count = zext nneg i32 %.fr22909 to i64
  %i.xh = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.xh, 1
  %i.xi = icmp eq i32 %.fr22909, 2
  br i1 %i.xi, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us.preheader.new

.lr.ph.us.us.preheader.new:                       ; preds = %.lr.ph.us.us.preheader
  %unroll_iter = and i64 %i.xh, -2
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %bb.bs, %.lr.ph.us.us.preheader.new
  %indvars.iv = phi i64 [ 1, %.lr.ph.us.us.preheader.new ], [ %indvars.iv.next.1, %bb.bs ] ; 4 uses
  %.08137346.us.us = phi float [ %i.xg, %.lr.ph.us.us.preheader.new ], [ %i.xw, %bb.bs ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.us.us.preheader.new ], [ %niter.next.1, %bb.bs ]
  %i.xj = mul nuw nsw i64 %indvars.iv, 24
  %i.xk = add i64 %i.xj, %i.xb, !nosanitize !9    ; 2 uses
  %.not1324.us.us = icmp ult i64 %i.xk, %i.xb, !nosanitize !9
  br i1 %.not1324.us.us, label %.split7502.us, label %.lr.ph.us.us.1, !prof !19, !nosanitize !9

.lr.ph.us.us.1:                                   ; preds = %.lr.ph.us.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xl = mul nuw nsw i64 %indvars.iv.next, 24
  %i.xm = add i64 %i.xl, %i.xb, !nosanitize !9    ; 2 uses
  %.not1324.us.us.1 = icmp ult i64 %i.xm, %i.xb, !nosanitize !9
  br i1 %.not1324.us.us.1, label %.split7502.us, label %bb.bs, !prof !19, !nosanitize !9

bb.bs:                                            ; preds = %.lr.ph.us.us.1
  %i.xn = getelementptr inbounds nuw [24 x i8], ptr %i.wz, i64 %indvars.iv
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 12
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !155 ; 2 uses
  %i.xq = fcmp olt float %.08137346.us.us, %i.xp
  %i.xr = select i1 %i.xq, float %.08137346.us.us, float %i.xp ; 2 uses
  %i.xs = getelementptr inbounds nuw [24 x i8], ptr %i.wz, i64 %indvars.iv.next
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 12
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !155 ; 2 uses
  %i.xv = fcmp olt float %i.xr, %i.xu
  %i.xw = select i1 %i.xv, float %i.xr, float %i.xu ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !31

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %bb.bs
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us.us.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  %.08137346.us.us.epil.init = phi float [ %i.xg, %.lr.ph.us.us.preheader ], [ %i.xw, %._crit_edge.us.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod22905 = trunc i64 %i.xh to i1
end_hunk_0
