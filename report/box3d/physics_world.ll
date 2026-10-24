Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/physics_world?download=true
inline.NumInlined: 282
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@b3CollideTask:bb.a
._crit_edge544:                                   ; preds = %._crit_edge
  %i.qp = load i32, ptr %i.ag, align 4, !tbaa !242
  %i.qq = add nsw i32 %i.qp, 1
  store i32 %i.qq, ptr %i.ag, align 4, !tbaa !242
  %i.qr = tail call i32 @llvm.umin.i32(i32 %i.pn, i32 7)
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr [4 x i8], ptr %i.f, i64 %i.qs
  %i.qu = getelementptr i8, ptr %i.qt, i64 3748   ; 2 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !82
  %i.qw = add nsw i32 %i.qv, 1
  store i32 %i.qw, ptr %i.qu, align 4, !tbaa !82
  br label %.loopexit

bb.u:                                             ; preds = %.lr.ph543, %._crit_edge
  %indvars.iv557 = phi i64 [ 0, %.lr.ph543 ], [ %indvars.iv.next558, %._crit_edge ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [268 x i8], ptr %i.ps, i64 %indvars.iv557 ; 4 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 264
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !275 ; 2 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.u
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qx, i64 232
  %.sroa.469.0.copyload = load float, ptr %.sroa.469.0..sroa_idx, align 4, !tbaa !142
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 224
  %.sroa.068.0.copyload = load <2 x float>, ptr %i.rb, align 4, !tbaa !142
  %wide.trip.count = zext nneg i32 %i.qz to i64
  %i.rc = shufflevector <2 x float> %.sroa.068.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.rd = insertelement <4 x float> %i.rc, float %.sroa.469.0.copyload, i64 2
  br label %bb.v

._crit_edge:                                      ; preds = %bb.v, %bb.u
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next558, %wide.trip.count560
  br i1 %exitcond561.not, label %._crit_edge544, label %bb.u, !llvm.loop !645

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.re = getelementptr inbounds nuw [56 x i8], ptr %i.qx, i64 %indvars.iv ; 7 uses
  %.sroa.055.0.copyload = load <2 x float>, ptr %i.re, align 4 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  %.sroa.047.0.copyload = load <2 x float>, ptr %i.rf, align 4 ; 2 uses
  %.sroa.248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.re, i64 20
  %.sroa.248.0.copyload = load float, ptr %.sroa.248.0..sroa_idx, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 28
  %i.rh = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ri = insertelement <4 x float> %i.rh, float 1.000000e+00, i64 3
  %i.rj = fmul <4 x float> %i.qj, %i.ri
  %i.rk = shufflevector <2 x float> %.sroa.055.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.rl = insertelement <4 x float> %i.rk, float 1.000000e+00, i64 3
  %i.rm = fmul <4 x float> %i.qk, %i.rl
  %i.rn = fadd <4 x float> %i.rj, %i.rm
  %i.ro = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.256.0.copyload, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.rq = fmul <4 x float> %i.rp, %i.ql
  %i.rr = fadd <4 x float> %i.rq, %i.rn
  %i.rs = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.rt = insertelement <4 x float> %i.rs, float 1.000000e+00, i64 3
  %i.ru = fmul <4 x float> %i.qm, %i.rt
  %i.rv = shufflevector <2 x float> %.sroa.047.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.rw = insertelement <4 x float> %i.rv, float 1.000000e+00, i64 3
  %i.rx = fmul <4 x float> %i.qn, %i.rw
  %i.ry = fadd <4 x float> %i.ru, %i.rx
  %i.rz = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.248.0.copyload, i64 0
  %i.sa = shufflevector <4 x float> %i.rz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.sb = fmul <4 x float> %i.sa, %i.qo
  %i.sc = fadd <4 x float> %i.sb, %i.ry
  %i.sd = fsub <4 x float> %i.sc, %i.rr
  %i.se = fadd <4 x float> %i.sd, %i.pl
  %i.sf = load float, ptr %i.rg, align 4, !tbaa !651
  %i.sg = insertelement <4 x float> %i.rd, float %i.sf, i64 3
  %i.sh = fmul <4 x float> %i.sg, %i.se
  %i.si = tail call float @llvm.vector.reduce.fadd.v4f32(float -0.000000e+00, <4 x float> %i.sh)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  store float %i.si, ptr %i.sj, align 4, !tbaa !277
  %i.sk = getelementptr inbounds nuw i8, ptr %i.re, i64 52
  store i8 1, ptr %i.sk, align 4, !tbaa !278
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !646

.thread521:                                       ; preds = %bb.s, %bb.r, %bb.m, %bb.l, %bb.k
  %i.sl = getelementptr inbounds nuw i8, ptr %i.av, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sl, ptr noundef nonnull align 4 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !267
  %i.sm = getelementptr inbounds nuw i8, ptr %i.av, i64 100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sm, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !267
  %i.sn = getelementptr inbounds nuw i8, ptr %i.av, i64 116
  %.sroa.6494.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 4 uses
  %.sroa.7.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 4 uses
  %.sroa.6487.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 10 uses
  %.sroa.8489.0.copyload = load <2 x float>, ptr %i.ad, align 4 ; 6 uses
  %i.so = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sp = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sq = fmul <2 x float> %.sroa.6494.0.copyload, %i.sp ; 2 uses
  %shift644 = shufflevector <2 x float> %i.sq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop645 = fsub <2 x float> %i.sq, %shift644
  %i.sr = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 1, i32 2, i32 2, i32 0>
  %i.ss = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <4 x i32> <i32 0, i32 3, i32 2, i32 0>
  %i.st = fmul <4 x float> %i.sr, %i.ss           ; 2 uses
  %i.su = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.sv = shufflevector <4 x float> %i.st, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.sw = fsub <2 x float> %i.su, %i.sv
  %i.sx = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.sy = fmul <2 x float> %.sroa.6494.0.copyload, %i.sx
  %i.sz = fadd <2 x float> %i.sy, %i.sw
  %i.ta = shufflevector <2 x float> %.sroa.7.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tb = fmul <2 x float> %i.ta, %.sroa.6487.0.copyload
  %i.tc = fsub <2 x float> %i.sz, %i.tb
  %i.td = fmul <2 x float> %.sroa.7.0.copyload, %i.so ; 2 uses
  %foldExtExtBinop647 = fadd <2 x float> %foldExtExtBinop645, %i.td
  %shift649 = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop650 = fsub <2 x float> %foldExtExtBinop647, %shift649
  %i.te = shufflevector <2 x float> %.sroa.6494.0.copyload, <2 x float> %.sroa.7.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tf = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tg = fmul <4 x float> %i.te, %i.tf           ; 4 uses
  %i.th = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.ti = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.tj = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.tk = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tl = fadd <2 x float> %i.tj, %i.tk
  %i.tm = fadd <2 x float> %i.ti, %i.tl
  %i.tn = fadd <2 x float> %i.th, %i.tm
  %.sroa.251.12.vec.insert.i451 = shufflevector <2 x float> %foldExtExtBinop650, <2 x float> %i.tn, <2 x i32> <i32 0, i32 2>
  %i.to = load <2 x float>, ptr %5, align 8
  %i.tp = load <2 x float>, ptr %.sroa.4503.0..sroa_idx, align 4
  %i.tq = load <2 x float>, ptr %4, align 8
  %i.tr = load <2 x float>, ptr %.sroa.4496.0..sroa_idx, align 4
  %i.ts = fsub <2 x float> %i.to, %i.tq           ; 4 uses
  %i.tt = fsub <2 x float> %i.tp, %i.tr           ; 4 uses
  %i.tu = fmul <2 x float> %i.tt, %.sroa.6487.0.copyload
  %i.tv = shufflevector <2 x float> %.sroa.8489.0.copyload, <2 x float> %.sroa.6487.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.tw = fmul <2 x float> %i.ts, %i.tv
  %i.tx = shufflevector <2 x float> %.sroa.6487.0.copyload, <2 x float> %.sroa.8489.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ty = fmul <2 x float> %i.ts, %i.tx
  %i.tz = shufflevector <2 x float> %i.tt, <2 x float> %i.ts, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ua = fmul <2 x float> %i.tz, %.sroa.6487.0.copyload
  %i.ub = fsub <2 x float> %i.tu, %i.ty
  %i.uc = fsub <2 x float> %i.tw, %i.ua
  %i.ud = fmul <2 x float> %i.tz, %i.sx
  %i.ue = fmul <2 x float> %i.tt, %i.sx
  %i.uf = fsub <2 x float> %i.ub, %i.ud           ; 2 uses
  %i.ug = fsub <2 x float> %i.uc, %i.ue           ; 2 uses
  %i.uh = fmul <2 x float> %i.tx, %i.uf
  %i.ui = fmul <2 x float> %i.tv, %i.ug
  %i.uj = fsub <2 x float> %i.uh, %i.ui
  %foldExtExtBinop661 = fmul <2 x float> %.sroa.6487.0.copyload, %i.ug
  %foldExtExtBinop663 = fmul <2 x float> %.sroa.6487.0.copyload, %i.uf
  %shift665 = shufflevector <2 x float> %foldExtExtBinop663, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop666 = fsub <2 x float> %foldExtExtBinop661, %shift665
  %i.uk = extractelement <2 x float> %foldExtExtBinop666, i64 0
  %i.ul = fmul <2 x float> %i.uj, splat (float 2.000000e+00)
  %i.um = fadd <2 x float> %i.ts, %i.ul
  %i.un = fmul float %i.uk, 2.000000e+00
  %i.uo = extractelement <2 x float> %i.tt, i64 1
  %i.up = fadd float %i.uo, %i.un
  store <2 x float> %i.um, ptr %i.sn, align 4, !tbaa !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  store float %i.up, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !142
  %.sroa.5.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  store <2 x float> %i.tc, ptr %.sroa.5.0..sroa_idx465, align 8, !tbaa !142
  %.sroa.6.0..sroa_idx466 = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  store <2 x float> %.sroa.251.12.vec.insert.i451, ptr %.sroa.6.0..sroa_idx466, align 8, !tbaa !142
  %i.uq = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.ur = or i32 %i.uq, 8388608
  store i32 %i.ur, ptr %i.cs, align 4, !tbaa !190
  %i.us = getelementptr inbounds nuw i8, ptr %.0289, i64 68
  %i.ut = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %.sroa.015.0.copyload = load <2 x float>, ptr %i.us, align 4
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0289, i64 76
  %.sroa.216.0.copyload = load float, ptr %.sroa.216.0..sroa_idx, align 4
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ut, align 4
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 4
  %i.uu = tail call zeroext i1 @b3UpdateContact(ptr noundef %i.b, i32 noundef %2, ptr noundef nonnull %i.av, ptr noundef nonnull %i.az, <2 x float> %.sroa.015.0.copyload, float %.sroa.216.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %4, ptr noundef nonnull %i.bd, <2 x float> %.sroa.0.0.copyload, float %.sroa.2.0.copyload, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i1 noundef zeroext %i.ec, ptr noundef byval(%struct.b3Arena) align 8 %i.f) #21 ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 3 uses
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !272 ; 2 uses
  %i.ux = icmp sgt i32 %i.uw, 0
  br i1 %i.ux, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread521
  %i.uy = tail call i32 @llvm.umin.i32(i32 %i.uw, i32 7)
  %i.uz = zext nneg i32 %i.uy to i64
  %i.va = getelementptr [4 x i8], ptr %i.f, i64 %i.uz
  %i.vb = getelementptr i8, ptr %i.va, i64 3748   ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !82
  %i.vd = add nsw i32 %i.vc, 1
  store i32 %i.vd, ptr %i.vb, align 4, !tbaa !82
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread521
  %.not304 = xor i1 %i.uu, true
  %brmerge = or i1 %.not300, %.not304
  br i1 %brmerge, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ve = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.vf = and i32 %i.ve, 4194304
  %.not299 = icmp eq i32 %i.vf, 0
  br i1 %.not299, label %.thread526thread-pre-split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.vg = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !252
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr [112 x i8], ptr %i.b, i64 %i.vi
  %i.vk = getelementptr i8, ptr %i.vj, i64 1192
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !239
  %i.vm = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !250
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [12 x i8], ptr %i.vl, i64 %i.vo
  %i.vq = load i32, ptr %i.uv, align 8, !tbaa !272 ; 2 uses
  %i.vr = trunc i32 %i.vq to i16
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i16 %i.vr, ptr %i.vs, align 4, !tbaa !652
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %or.cond305 = and i1 %.not300, %i.uu
  br i1 %or.cond305, label %.sink.split, label %.thread524

.thread524:                                       ; preds = %bb.aa
  %brmerge306 = or i1 %.not300, %i.uu
  br i1 %brmerge306, label %.thread526thread-pre-split, label %.sink.split

.sink.split:                                      ; preds = %.thread524, %bb.aa
  %.sink597 = phi i32 [ 262144, %bb.aa ], [ 524288, %.thread524 ]
  %i.vt = load i32, ptr %i.cs, align 4, !tbaa !190
  %i.vu = or i32 %i.vt, %.sink597
  store i32 %i.vu, ptr %i.cs, align 4, !tbaa !190
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !244
  %i.vv = lshr i32 %i.at, 6
  %i.vw = and i32 %i.at, 63
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = shl nuw i64 1, %i.vx
  %i.vz = zext nneg i32 %i.vv to i64
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.vz ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 8, !tbaa !245
  %i.wc = or i64 %i.wb, %i.vy
  store i64 %i.wc, ptr %i.wa, align 8, !tbaa !245
  br label %.thread526thread-pre-split

.thread526thread-pre-split:                       ; preds = %.sink.split, %.thread524, %bb.y
  %.pr = load i32, ptr %i.uv, align 8, !tbaa !272
  br label %bb.ab

bb.ab:                                            ; preds = %.thread526thread-pre-split, %bb.z
  %6 = phi i32 [ %.pr, %.thread526thread-pre-split ], [ %i.vq, %bb.z ] ; 2 uses
  %i.wd = icmp sgt i32 %6, 0
  br i1 %i.wd, label %.lr.ph551, label %.loopexit

.lr.ph551:                                        ; preds = %bb.ab
  %i.we = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !273
  %wide.trip.count570 = zext nneg i32 %6 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph551, %._crit_edge548
  %indvars.iv567 = phi i64 [ 0, %.lr.ph551 ], [ %indvars.iv.next568, %._crit_edge548 ] ; 2 uses
  %i.wg = getelementptr inbounds nuw [268 x i8], ptr %i.wf, i64 %indvars.iv567 ; 6 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 264
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !275 ; 3 uses
  %i.wj = icmp sgt i32 %i.wi, 0
  br i1 %i.wj, label %.lr.ph547.preheader, label %._crit_edge548

.lr.ph547.preheader:                              ; preds = %bb.ac
  %wide.trip.count565 = zext nneg i32 %i.wi to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count565, 3      ; 3 uses
  %i.wk = icmp ult i32 %i.wi, 4
  br i1 %i.wk, label %.lr.ph547.epil.preheader, label %.lr.ph547.preheader.new

.lr.ph547.preheader.new:                          ; preds = %.lr.ph547.preheader
  %unroll_iter = and i64 %wide.trip.count565, 2147483644
  br label %.lr.ph547

._crit_edge548.loopexit.unr-lcssa:                ; preds = %.lr.ph547
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge548, label %.lr.ph547.epil.preheader

.lr.ph547.epil.preheader:                         ; preds = %._crit_edge548.loopexit.unr-lcssa, %.lr.ph547.preheader
  %indvars.iv562.epil.init = phi i64 [ 0, %.lr.ph547.preheader ], [ %indvars.iv.next563.3, %._crit_edge548.loopexit.unr-lcssa ]
  %lcmp.mod668 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod668)
  br label %.lr.ph547.epil

.lr.ph547.epil:                                   ; preds = %.lr.ph547.epil, %.lr.ph547.epil.preheader
  %indvars.iv562.epil = phi i64 [ %indvars.iv562.epil.init, %.lr.ph547.epil.preheader ], [ %indvars.iv.next563.epil, %.lr.ph547.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph547.epil.preheader ], [ %epil.iter.next, %.lr.ph547.epil ]
  %i.wl = getelementptr inbounds nuw [56 x i8], ptr %i.wg, i64 %indvars.iv562.epil ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !277
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 28
  store float %i.wn, ptr %i.wo, align 4, !tbaa !651
  %indvars.iv.next563.epil = add nuw nsw i64 %indvars.iv562.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge548, label %.lr.ph547.epil, !llvm.loop !647

._crit_edge548:                                   ; preds = %._crit_edge548.loopexit.unr-lcssa, %.lr.ph547.epil, %bb.ac
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.loopexit, label %bb.ac, !llvm.loop !648

.lr.ph547:                                        ; preds = %.lr.ph547, %.lr.ph547.preheader.new
  %indvars.iv562 = phi i64 [ 0, %.lr.ph547.preheader.new ], [ %indvars.iv.next563.3, %.lr.ph547 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph547.preheader.new ], [ %niter.next.3, %.lr.ph547 ]
  %i.wp = getelementptr inbounds nuw [56 x i8], ptr %i.wg, i64 %indvars.iv562 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 24
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !277
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 28
  store float %i.wr, ptr %i.ws, align 4, !tbaa !651
  %i.wt = getelementptr inbounds nuw [56 x i8], ptr %i.wg, i64 %indvars.iv562 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 80
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !277
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wt, i64 84
  store float %i.wv, ptr %i.ww, align 4, !tbaa !651
  %i.wx = getelementptr inbounds nuw [56 x i8], ptr %i.wg, i64 %indvars.iv562 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 136
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !277
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 140
  store float %i.wz, ptr %i.xa, align 4, !tbaa !651
  %i.xb = getelementptr inbounds nuw [56 x i8], ptr %i.wg, i64 %indvars.iv562 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 192
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !277
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 196
  store float %i.xd, ptr %i.xe, align 4, !tbaa !651
  %indvars.iv.next563.3 = add nuw nsw i64 %indvars.iv562, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge548.loopexit.unr-lcssa, label %.lr.ph547, !llvm.loop !649

.loopexit:                                        ; preds = %._crit_edge548, %._crit_edge544.thread, %bb.ab, %._crit_edge544
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit, %b3AABB_Overlaps.exit.thread
  %indvars.iv.next573 = add nsw i64 %indvars.iv572, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next573 to i32
  %exitcond575.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond575.not, label %._crit_edge555, label %bb.b, !llvm.loop !650
}

declare void @b3StackFree(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3InPlaceUnion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3ArenaSync(ptr noundef) local_unnamed_addr #2

declare void @b3DestroyContact(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @b3LinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3AddContactToGraph(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3UnlinkContact(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @b3RemoveContactFromGraph(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @b3UpdateContact(ptr noundef, i32 noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef, <2 x float>, float, ptr noundef byval(%struct.b3Transform) align 8, i1 noundef zeroext, ptr noundef byval(%struct.b3Arena) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #18

declare void @b3GetBodyTransformQuick(ptr dead_on_unwind writable sret(%struct.b3Transform) align 4, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @b3OverlapShape(ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare i32 @b3CollideMover(ptr noundef, i32 noundef, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare void @b3RayCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare void @b3ShapeCastShape(ptr dead_on_unwind writable sret(%struct.b3CastOutput) align 4, ptr noundef, ptr noundef byval(%struct.b3Transform) align 8, ptr noundef) local_unnamed_addr #2

declare { ptr, i64 } @b3MakeShapeProxy(ptr noundef) local_unnamed_addr #2

declare void @b3ShapeDistance(ptr dead_on_unwind writable sret(%struct.b3DistanceOutput) align 4, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @b3WakeBody(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { <2 x float>, float } @b3GetShapeCentroid(ptr noundef) local_unnamed_addr #2

declare float @b3GetShapeProjectedArea(ptr noundef, <2 x float>, float) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1>, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !79}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
end_hunk_0
