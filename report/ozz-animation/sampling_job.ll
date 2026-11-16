Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/sampling_job?download=true
inline.NumInlined: 276
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %.027.i60 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !56  ; 2 uses
  store i8 0, ptr %i.ps, align 1, !tbaa !56
  %.not24.i61 = icmp eq i8 %i.pt, 0
  br i1 %.not24.i61, label %._crit_edge.i93, label %.lr.ph.preheader.i62

.lr.ph.preheader.i62:                             ; preds = %bb.m
  %i.pu = shl nuw i64 %.027.i60, 3
  br label %.lr.ph.i63

._crit_edge.i93:                                  ; preds = %bb.s, %bb.m
  %i.pv = add nuw nsw i64 %.027.i60, 1            ; 2 uses
  %exitcond.not.i94 = icmp eq i64 %i.pv, %i.bu
  br i1 %exitcond.not.i94, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit, label %bb.m, !llvm.loop !78

.lr.ph.i63:                                       ; preds = %bb.s, %.lr.ph.preheader.i62
  %.06126.i64 = phi i8 [ %i.ajs, %bb.s ], [ %i.pt, %.lr.ph.preheader.i62 ] ; 2 uses
  %.06225.i65 = phi i64 [ %i.ajr, %bb.s ], [ %i.pu, %.lr.ph.preheader.i62 ] ; 6 uses
  %i.pw = and i8 %.06126.i64, 1
  %.not64.i66 = icmp eq i8 %i.pw, 0
  br i1 %.not64.i66, label %bb.s, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i63
  %i.px = load ptr, ptr %i.ok, align 8, !tbaa !49
  %.idx.i67 = shl i64 %.06225.i65, 4
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 %.idx.i67 ; 5 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !58 ; 2 uses
  %i.qa = zext i32 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qa
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !60
  %i.qd = zext i16 %i.qc to i32
  %i.qe = sub i32 %i.pz, %i.qd
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !58 ; 2 uses
  %i.qh = zext i32 %i.qg to i64
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qh
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !60
  %i.qk = zext i16 %i.qj to i32
  %i.ql = sub i32 %i.qg, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !58 ; 2 uses
  %i.qo = zext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qo
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !60
  %i.qr = zext i16 %i.qq to i32
  %i.qs = sub i32 %i.qn, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.py, i64 12 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !58 ; 2 uses
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.ni, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !60
  %i.qy = zext i16 %i.qx to i32
  %i.qz = sub i32 %i.qu, %i.qy
  %i.ra = zext i32 %i.qe to i64                   ; 3 uses
  %i.rb = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.ra ; 3 uses
  %i.rc = zext i32 %i.ql to i64                   ; 3 uses
  %i.rd = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.rc ; 3 uses
  %i.re = zext i32 %i.qs to i64                   ; 3 uses
  %i.rf = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.re ; 3 uses
  %i.rg = zext i32 %i.qz to i64                   ; 3 uses
  %i.rh = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.rg ; 3 uses
  br i1 %.not.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ri = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.ra
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !56
  %i.rk = zext i8 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.rc
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !56
  %i.rn = zext i8 %i.rm to i64
  %i.ro = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.re
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !56
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.rg
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !56
  %i.rt = zext i8 %i.rs to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69

bb.p:                                             ; preds = %bb.n
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.ra
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !60
  %i.rw = zext i16 %i.rv to i64
  %i.rx = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.rc
  %i.ry = load i16, ptr %i.rx, align 2, !tbaa !60
  %i.rz = zext i16 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.re
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !60
  %i.sc = zext i16 %i.sb to i64
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.rg
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !60
  %i.sf = zext i16 %i.se to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69: ; preds = %bb.p, %bb.o
  %.sink20.i.i70 = phi i64 [ %i.sf, %bb.p ], [ %i.rt, %bb.o ]
  %.pn.i.i71 = phi i64 [ %i.rw, %bb.p ], [ %i.rk, %bb.o ]
  %.pn21.i.i72 = phi i64 [ %i.rz, %bb.p ], [ %i.rn, %bb.o ]
  %.pn22.i.i73 = phi i64 [ %i.sc, %bb.p ], [ %i.rq, %bb.o ]
  %.sink17.in.i.i74 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn22.i.i73
  %.sink17.i.i75 = load float, ptr %.sink17.in.i.i74, align 4, !tbaa !61
  %.sink18.in.i.i76 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn21.i.i72
  %.sink18.i.i77 = load float, ptr %.sink18.in.i.i76, align 4, !tbaa !61
  %.sink19.in.i.i78 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn.i.i71
  %.sink19.i.i79 = load float, ptr %.sink19.in.i.i78, align 4, !tbaa !61
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sink20.i.i70
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !61
  %i.si = insertelement <4 x float> poison, float %.sink19.i.i79, i64 0
  %i.sj = insertelement <4 x float> %i.si, float %.sink18.i.i77, i64 1
  %i.sk = insertelement <4 x float> %i.sj, float %.sink17.i.i75, i64 2
  %i.sl = insertelement <4 x float> %i.sk, float %i.sh, i64 3
  %i.sm = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.sn = getelementptr inbounds nuw [160 x i8], ptr %i.sm, i64 %.06225.i65
  store <4 x float> %i.sl, ptr %i.sn, align 16, !tbaa !56
  %i.so = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.sp = getelementptr inbounds nuw [160 x i8], ptr %i.so, i64 %.06225.i65 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.sr = load i16, ptr %i.rb, align 2, !tbaa !60 ; 2 uses
  %i.ss = zext i16 %i.sr to i32                   ; 2 uses
  %i.st = lshr i32 %i.ss, 3
  %i.su = getelementptr inbounds nuw i8, ptr %i.rb, i64 2
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !60
  %i.sw = zext i16 %i.sv to i32
  %i.sx = shl nuw nsw i32 %i.sw, 13               ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !60 ; 2 uses
  %i.ta = zext i16 %i.sz to i32
  %i.tb = shl i32 %i.ta, 29
  %i.tc = or disjoint i32 %i.tb, %i.sx
  %i.td = and i32 %i.ss, 3
  %.masked.i.i148 = and i32 %i.sx, 24576
  %i.te = or disjoint i32 %.masked.i.i148, %i.st  ; 2 uses
  store i32 %i.te, ptr %i.a, align 16, !tbaa !58
  %i.tf = lshr i32 %i.tc, 15
  %i.tg = and i32 %i.tf, 32767
  store i32 %i.tg, ptr %i.op, align 4, !tbaa !58
  %i.th = lshr i16 %i.sz, 1
  %i.ti = zext nneg i16 %i.th to i32
  store i32 %i.ti, ptr %i.oq, align 8, !tbaa !58
  %i.tj = load i16, ptr %i.rd, align 2, !tbaa !60 ; 2 uses
  %i.tk = zext i16 %i.tj to i32                   ; 2 uses
  %i.tl = lshr i32 %i.tk, 3
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rd, i64 2
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !60
  %i.to = zext i16 %i.tn to i32
  %i.tp = shl nuw nsw i32 %i.to, 13               ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !60 ; 2 uses
  %i.ts = zext i16 %i.tr to i32
  %i.tt = shl i32 %i.ts, 29
  %i.tu = or disjoint i32 %i.tt, %i.tp
  %i.tv = and i32 %i.tk, 3
  %.masked.i48.i149 = and i32 %i.tp, 24576
  %i.tw = or disjoint i32 %.masked.i48.i149, %i.tl ; 2 uses
  store i32 %i.tw, ptr %i.or, align 4, !tbaa !58
  %i.tx = lshr i32 %i.tu, 15
  %i.ty = and i32 %i.tx, 32767
  store i32 %i.ty, ptr %i.os, align 16, !tbaa !58
  %i.tz = lshr i16 %i.tr, 1
  %i.ua = zext nneg i16 %i.tz to i32
  store i32 %i.ua, ptr %i.ot, align 4, !tbaa !58
  %i.ub = load i16, ptr %i.rf, align 2, !tbaa !60 ; 2 uses
  %i.uc = zext i16 %i.ub to i32                   ; 2 uses
  %i.ud = lshr i32 %i.uc, 3
  %i.ue = getelementptr inbounds nuw i8, ptr %i.rf, i64 2
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !60
  %i.ug = zext i16 %i.uf to i32
  %i.uh = shl nuw nsw i32 %i.ug, 13               ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !60 ; 2 uses
  %i.uk = zext i16 %i.uj to i32
  %i.ul = shl i32 %i.uk, 29
  %i.um = or disjoint i32 %i.ul, %i.uh
  %i.un = and i32 %i.uc, 3
  %.masked.i49.i150 = and i32 %i.uh, 24576
  %i.uo = or disjoint i32 %.masked.i49.i150, %i.ud ; 2 uses
  store i32 %i.uo, ptr %i.ou, align 8, !tbaa !58
  %i.up = lshr i32 %i.um, 15
  %i.uq = and i32 %i.up, 32767
  store i32 %i.uq, ptr %i.ov, align 4, !tbaa !58
  %i.ur = lshr i16 %i.uj, 1
  %i.us = zext nneg i16 %i.ur to i32
  store i32 %i.us, ptr %i.ow, align 16, !tbaa !58
  %i.ut = load i16, ptr %i.rh, align 2, !tbaa !60 ; 2 uses
  %i.uu = zext i16 %i.ut to i32                   ; 2 uses
  %i.uv = lshr i32 %i.uu, 3
  %i.uw = getelementptr inbounds nuw i8, ptr %i.rh, i64 2
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !60
  %i.uy = zext i16 %i.ux to i32
  %i.uz = shl nuw nsw i32 %i.uy, 13               ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !60 ; 2 uses
  %i.vc = zext i16 %i.vb to i32
  %i.vd = shl i32 %i.vc, 29
  %i.ve = or disjoint i32 %i.vd, %i.uz
  %i.vf = and i32 %i.uu, 3
  %i.vg = insertelement <4 x i16> poison, i16 %i.sr, i64 0
  %i.vh = insertelement <4 x i16> %i.vg, i16 %i.tj, i64 1
  %i.vi = insertelement <4 x i16> %i.vh, i16 %i.ub, i64 2
  %i.vj = insertelement <4 x i16> %i.vi, i16 %i.ut, i64 3
  %4 = lshr <4 x i16> %i.vj, splat (i16 2)
  %5 = and <4 x i16> %4, splat (i16 1)
  %6 = zext nneg <4 x i16> %5 to <4 x i32>
  %.masked.i50.i151 = and i32 %i.uz, 24576
  %i.vk = or disjoint i32 %.masked.i50.i151, %i.uv ; 2 uses
  store i32 %i.vk, ptr %i.ox, align 4, !tbaa !58
  %i.vl = lshr i32 %i.ve, 15
  %i.vm = and i32 %i.vl, 32767
  store i32 %i.vm, ptr %i.oy, align 8, !tbaa !58
  %i.vn = lshr i16 %i.vb, 1
  %i.vo = zext nneg i16 %i.vn to i32
  store i32 %i.vo, ptr %i.oz, align 4, !tbaa !58
  %i.vp = zext nneg i32 %i.td to i64              ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vp ; 3 uses
  %i.vr = zext nneg i32 %i.tv to i64              ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vr ; 3 uses
  %i.vt = zext nneg i32 %i.un to i64              ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vt ; 3 uses
  %i.vv = zext nneg i32 %i.vf to i64              ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.vv ; 3 uses
  %.sroa.0.0.vec.insert.i152 = insertelement <4 x i32> poison, i32 %i.te, i64 0
  %.sroa.0.4.vec.insert.i153 = insertelement <4 x i32> %.sroa.0.0.vec.insert.i152, i32 %i.tw, i64 1
  %.sroa.0.8.vec.insert.i154 = insertelement <4 x i32> %.sroa.0.4.vec.insert.i153, i32 %i.uo, i64 2
  %.sroa.0.12.vec.insert.i155 = insertelement <4 x i32> %.sroa.0.8.vec.insert.i154, i32 %i.vk, i64 3
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !56
  %i.vz = zext i8 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.vz
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !58
  %.sroa.7.16.vec.insert.i156 = insertelement <4 x i32> poison, i32 %i.wb, i64 0
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !56
  %i.we = zext i8 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.we
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !58
  %.sroa.7.20.vec.insert.i157 = insertelement <4 x i32> %.sroa.7.16.vec.insert.i156, i32 %i.wg, i64 1
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vu, i64 1
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !56
  %i.wj = zext i8 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !58
  %.sroa.7.24.vec.insert.i158 = insertelement <4 x i32> %.sroa.7.20.vec.insert.i157, i32 %i.wl, i64 2
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vw, i64 1
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !56
  %i.wo = zext i8 %i.wn to i64
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !58
  %.sroa.7.28.vec.insert.i159 = insertelement <4 x i32> %.sroa.7.24.vec.insert.i158, i32 %i.wq, i64 3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  %i.ws = load i8, ptr %i.wr, align 2, !tbaa !56
  %i.wt = zext i8 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.wt
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !58
  %.sroa.12.32.vec.insert.i160 = insertelement <4 x i32> poison, i32 %i.wv, i64 0
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vs, i64 2
  %i.wx = load i8, ptr %i.ww, align 2, !tbaa !56
  %i.wy = zext i8 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !58
  %.sroa.12.36.vec.insert.i161 = insertelement <4 x i32> %.sroa.12.32.vec.insert.i160, i32 %i.xa, i64 1
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vu, i64 2
  %i.xc = load i8, ptr %i.xb, align 2, !tbaa !56
  %i.xd = zext i8 %i.xc to i64
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !58
  %.sroa.12.40.vec.insert.i162 = insertelement <4 x i32> %.sroa.12.36.vec.insert.i161, i32 %i.xf, i64 2
  %i.xg = getelementptr inbounds nuw i8, ptr %i.vw, i64 2
  %i.xh = load i8, ptr %i.xg, align 2, !tbaa !56
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !58
  %.sroa.12.44.vec.insert.i163 = insertelement <4 x i32> %.sroa.12.40.vec.insert.i162, i32 %i.xk, i64 3
  %i.xl = getelementptr inbounds nuw i8, ptr %i.vq, i64 3
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !56
  %i.xn = zext i8 %i.xm to i64
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xn
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !58
  %.sroa.17.48.vec.insert.i164 = insertelement <4 x i32> poison, i32 %i.xp, i64 0
  %i.xq = getelementptr inbounds nuw i8, ptr %i.vs, i64 3
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !56
  %i.xs = zext i8 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.xs
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !58
  %.sroa.17.52.vec.insert.i165 = insertelement <4 x i32> %.sroa.17.48.vec.insert.i164, i32 %i.xu, i64 1
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vu, i64 3
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !56
  %i.xx = zext i8 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !58
  %.sroa.17.56.vec.insert.i166 = insertelement <4 x i32> %.sroa.17.52.vec.insert.i165, i32 %i.xz, i64 2
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vw, i64 3
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !56
  %i.yc = zext i8 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !58
  %.sroa.17.60.vec.insert.i167 = insertelement <4 x i32> %.sroa.17.56.vec.insert.i166, i32 %i.ye, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.yf = uitofp nneg <4 x i32> %.sroa.0.12.vec.insert.i155 to <4 x float>
  %i.yg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yf, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.yg, ptr %i.b, align 16, !tbaa !56
  %i.yh = sitofp <4 x i32> %.sroa.7.28.vec.insert.i159 to <4 x float>
  %i.yi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yh, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.yi, ptr %i.pa, align 16, !tbaa !56
  %i.yj = sitofp <4 x i32> %.sroa.12.44.vec.insert.i163 to <4 x float>
  %i.yk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yj, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.yk, ptr %i.pb, align 16, !tbaa !56
  %i.yl = sitofp <4 x i32> %.sroa.17.60.vec.insert.i167 to <4 x float>
  %i.ym = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yl, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.ym, ptr %i.pc, align 16, !tbaa !56
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vp ; 4 uses
  %i.yo = load <4 x i32>, ptr %i.yn, align 16, !tbaa !56
  %i.yp = and <4 x i32> %i.yo, <i32 0, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %i.yp, ptr %i.yn, align 16, !tbaa !56
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vr ; 4 uses
  %i.yr = load <4 x i32>, ptr %i.yq, align 16, !tbaa !56
  %i.ys = and <4 x i32> %i.yr, <i32 -1, i32 0, i32 -1, i32 -1>
  store <4 x i32> %i.ys, ptr %i.yq, align 16, !tbaa !56
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vt ; 4 uses
  %i.yu = load <4 x i32>, ptr %i.yt, align 16, !tbaa !56
  %i.yv = and <4 x i32> %i.yu, <i32 -1, i32 -1, i32 0, i32 -1>
  store <4 x i32> %i.yv, ptr %i.yt, align 16, !tbaa !56
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.vv ; 4 uses
  %i.yx = load <4 x i32>, ptr %i.yw, align 16, !tbaa !56
  %i.yy = and <4 x i32> %i.yx, <i32 -1, i32 -1, i32 -1, i32 0>
  store <4 x i32> %i.yy, ptr %i.yw, align 16, !tbaa !56
  %i.yz = load <4 x float>, ptr %i.b, align 16, !tbaa !56 ; 2 uses
  %i.za = load <4 x float>, ptr %i.pa, align 16, !tbaa !56 ; 2 uses
  %i.zb = fmul <4 x float> %i.za, %i.za
  %i.zc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yz, <4 x float> %i.yz, <4 x float> %i.zb)
  %i.zd = load <4 x float>, ptr %i.pb, align 16, !tbaa !56 ; 2 uses
  %i.ze = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zd, <4 x float> %i.zd, <4 x float> %i.zc)
  %i.zf = load <4 x float>, ptr %i.pc, align 16, !tbaa !56 ; 2 uses
  %i.zg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zf, <4 x float> %i.zf, <4 x float> %i.ze)
  %i.zh = fsub <4 x float> splat (float 1.000000e+00), %i.zg ; 2 uses
  %i.zi = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.zh)
  %i.zj = fmul <4 x float> %i.zi, %i.zh
  %i.zk = shl nuw <4 x i32> %6, splat (i32 31)
  %i.zl = bitcast <4 x float> %i.zj to <4 x i32>
  %i.zm = or <4 x i32> %i.zk, %i.zl               ; 4 uses
  %i.zn = load <4 x i32>, ptr %i.yn, align 16, !tbaa !56
  %i.zo = and <4 x i32> %i.zm, <i32 -1, i32 0, i32 0, i32 0>
  %i.zp = or <4 x i32> %i.zo, %i.zn
  store <4 x i32> %i.zp, ptr %i.yn, align 16, !tbaa !56
  %i.zq = load <4 x i32>, ptr %i.yq, align 16, !tbaa !56
  %i.zr = and <4 x i32> %i.zm, <i32 0, i32 -1, i32 0, i32 0>
  %i.zs = or <4 x i32> %i.zr, %i.zq
  store <4 x i32> %i.zs, ptr %i.yq, align 16, !tbaa !56
  %i.zt = load <4 x i32>, ptr %i.yt, align 16, !tbaa !56
  %i.zu = and <4 x i32> %i.zm, <i32 0, i32 0, i32 -1, i32 0>
  %i.zv = or <4 x i32> %i.zu, %i.zt
  store <4 x i32> %i.zv, ptr %i.yt, align 16, !tbaa !56
  %i.zw = load <4 x i32>, ptr %i.yw, align 16, !tbaa !56
  %i.zx = and <4 x i32> %i.zm, <i32 0, i32 0, i32 0, i32 -1>
  %i.zy = or <4 x i32> %i.zw, %i.zx
  store <4 x i32> %i.zy, ptr %i.yw, align 16, !tbaa !56
  %i.zz = load <4 x float>, ptr %i.b, align 16, !tbaa !56
  store <4 x float> %i.zz, ptr %i.sq, align 16, !tbaa !56
  %i.aaa = load <4 x float>, ptr %i.pa, align 16, !tbaa !56
  %i.aab = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store <4 x float> %i.aaa, ptr %i.aab, align 16, !tbaa !56
  %i.aac = load <4 x float>, ptr %i.pb, align 16, !tbaa !56
  %i.aad = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  store <4 x float> %i.aac, ptr %i.aad, align 16, !tbaa !56
  %i.aae = load <4 x float>, ptr %i.pc, align 16, !tbaa !56
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.sp, i64 80
  store <4 x float> %i.aae, ptr %i.aaf, align 16, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.aag = load i32, ptr %i.py, align 4, !tbaa !58
  %i.aah = zext i32 %i.aag to i64                 ; 3 uses
  %i.aai = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aah ; 3 uses
  %i.aaj = load i32, ptr %i.qf, align 4, !tbaa !58
  %i.aak = zext i32 %i.aaj to i64                 ; 3 uses
  %i.aal = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aak ; 3 uses
  %i.aam = load i32, ptr %i.qm, align 4, !tbaa !58
  %i.aan = zext i32 %i.aam to i64                 ; 3 uses
  %i.aao = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aan ; 3 uses
  %i.aap = load i32, ptr %i.qt, align 4, !tbaa !58
  %i.aaq = zext i32 %i.aap to i64                 ; 3 uses
  %i.aar = getelementptr inbounds nuw [6 x i8], ptr %i.oi, i64 %i.aaq ; 3 uses
  br i1 %.not.i.i59, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69
  %i.aas = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aah
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !56
  %i.aau = zext i8 %i.aat to i64
  %i.aav = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aak
  %i.aaw = load i8, ptr %i.aav, align 1, !tbaa !56
  %i.aax = zext i8 %i.aaw to i64
  %i.aay = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aan
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !56
  %i.aba = zext i8 %i.aaz to i64
  %i.abb = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.aaq
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !56
  %i.abd = zext i8 %i.abc to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81

bb.r:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i69
  %i.abe = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aah
  %i.abf = load i16, ptr %i.abe, align 2, !tbaa !60
  %i.abg = zext i16 %i.abf to i64
  %i.abh = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aak
  %i.abi = load i16, ptr %i.abh, align 2, !tbaa !60
  %i.abj = zext i16 %i.abi to i64
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aan
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !60
  %i.abm = zext i16 %i.abl to i64
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.nc, i64 %i.aaq
  %i.abo = load i16, ptr %i.abn, align 2, !tbaa !60
  %i.abp = zext i16 %i.abo to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81: ; preds = %bb.r, %bb.q
  %.sink20.i77.i82 = phi i64 [ %i.abp, %bb.r ], [ %i.abd, %bb.q ]
  %.pn.i78.i83 = phi i64 [ %i.abg, %bb.r ], [ %i.aau, %bb.q ]
  %.pn21.i79.i84 = phi i64 [ %i.abj, %bb.r ], [ %i.aax, %bb.q ]
  %.pn22.i80.i85 = phi i64 [ %i.abm, %bb.r ], [ %i.aba, %bb.q ]
  %.sink17.in.i81.i86 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn22.i80.i85
  %.sink17.i82.i87 = load float, ptr %.sink17.in.i81.i86, align 4, !tbaa !61
  %.sink18.in.i83.i88 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn21.i79.i84
  %.sink18.i84.i89 = load float, ptr %.sink18.in.i83.i88, align 4, !tbaa !61
  %.sink19.in.i85.i90 = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.pn.i78.i83
  %.sink19.i86.i91 = load float, ptr %.sink19.in.i85.i90, align 4, !tbaa !61
  %i.abq = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %.sink20.i77.i82
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !61
  %i.abs = insertelement <4 x float> poison, float %.sink19.i86.i91, i64 0
  %i.abt = insertelement <4 x float> %i.abs, float %.sink18.i84.i89, i64 1
  %i.abu = insertelement <4 x float> %i.abt, float %.sink17.i82.i87, i64 2
  %i.abv = insertelement <4 x float> %i.abu, float %i.abr, i64 3
  %i.abw = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.abx = getelementptr inbounds nuw [160 x i8], ptr %i.abw, i64 %.06225.i65
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  store <4 x float> %i.abv, ptr %i.aby, align 16, !tbaa !56
  %i.abz = load ptr, ptr %i.ol, align 8, !tbaa !63
  %i.aca = getelementptr inbounds nuw [160 x i8], ptr %i.abz, i64 %.06225.i65 ; 4 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.acc = load i16, ptr %i.aai, align 2, !tbaa !60 ; 2 uses
  %i.acd = zext i16 %i.acc to i32                 ; 2 uses
  %i.ace = lshr i32 %i.acd, 3
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !60
  %i.ach = zext i16 %i.acg to i32
  %i.aci = shl nuw nsw i32 %i.ach, 13             ; 2 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !60 ; 2 uses
  %i.acl = zext i16 %i.ack to i32
  %i.acm = shl i32 %i.acl, 29
  %i.acn = or disjoint i32 %i.acm, %i.aci
  %i.aco = and i32 %i.acd, 3
  %.masked.i.i = and i32 %i.aci, 24576
  %i.acp = or disjoint i32 %.masked.i.i, %i.ace   ; 2 uses
  store i32 %i.acp, ptr %i.c, align 16, !tbaa !58
  %i.acq = lshr i32 %i.acn, 15
  %i.acr = and i32 %i.acq, 32767
  store i32 %i.acr, ptr %i.pd, align 4, !tbaa !58
  %i.acs = lshr i16 %i.ack, 1
  %i.act = zext nneg i16 %i.acs to i32
  store i32 %i.act, ptr %i.pe, align 8, !tbaa !58
  %i.acu = load i16, ptr %i.aal, align 2, !tbaa !60 ; 2 uses
  %i.acv = zext i16 %i.acu to i32                 ; 2 uses
  %i.acw = lshr i32 %i.acv, 3
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aal, i64 2
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !60
  %i.acz = zext i16 %i.acy to i32
  %i.ada = shl nuw nsw i32 %i.acz, 13             ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aal, i64 4
  %i.adc = load i16, ptr %i.adb, align 2, !tbaa !60 ; 2 uses
  %i.add = zext i16 %i.adc to i32
  %i.ade = shl i32 %i.add, 29
  %i.adf = or disjoint i32 %i.ade, %i.ada
  %i.adg = and i32 %i.acv, 3
  %.masked.i48.i = and i32 %i.ada, 24576
  %i.adh = or disjoint i32 %.masked.i48.i, %i.acw ; 2 uses
  store i32 %i.adh, ptr %i.pf, align 4, !tbaa !58
  %i.adi = lshr i32 %i.adf, 15
  %i.adj = and i32 %i.adi, 32767
  store i32 %i.adj, ptr %i.pg, align 16, !tbaa !58
  %i.adk = lshr i16 %i.adc, 1
  %i.adl = zext nneg i16 %i.adk to i32
  store i32 %i.adl, ptr %i.ph, align 4, !tbaa !58
  %i.adm = load i16, ptr %i.aao, align 2, !tbaa !60 ; 2 uses
  %i.adn = zext i16 %i.adm to i32                 ; 2 uses
  %i.ado = lshr i32 %i.adn, 3
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aao, i64 2
  %i.adq = load i16, ptr %i.adp, align 2, !tbaa !60
  %i.adr = zext i16 %i.adq to i32
  %i.ads = shl nuw nsw i32 %i.adr, 13             ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.aao, i64 4
  %i.adu = load i16, ptr %i.adt, align 2, !tbaa !60 ; 2 uses
  %i.adv = zext i16 %i.adu to i32
  %i.adw = shl i32 %i.adv, 29
  %i.adx = or disjoint i32 %i.adw, %i.ads
  %i.ady = and i32 %i.adn, 3
  %.masked.i49.i = and i32 %i.ads, 24576
  %i.adz = or disjoint i32 %.masked.i49.i, %i.ado ; 2 uses
  store i32 %i.adz, ptr %i.pi, align 8, !tbaa !58
  %i.aea = lshr i32 %i.adx, 15
  %i.aeb = and i32 %i.aea, 32767
  store i32 %i.aeb, ptr %i.pj, align 4, !tbaa !58
  %i.aec = lshr i16 %i.adu, 1
  %i.aed = zext nneg i16 %i.aec to i32
  store i32 %i.aed, ptr %i.pk, align 16, !tbaa !58
  %i.aee = load i16, ptr %i.aar, align 2, !tbaa !60 ; 2 uses
  %i.aef = zext i16 %i.aee to i32                 ; 2 uses
  %i.aeg = lshr i32 %i.aef, 3
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aar, i64 2
  %i.aei = load i16, ptr %i.aeh, align 2, !tbaa !60
  %i.aej = zext i16 %i.aei to i32
  %i.aek = shl nuw nsw i32 %i.aej, 13             ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aar, i64 4
  %i.aem = load i16, ptr %i.ael, align 2, !tbaa !60 ; 2 uses
  %i.aen = zext i16 %i.aem to i32
  %i.aeo = shl i32 %i.aen, 29
  %i.aep = or disjoint i32 %i.aeo, %i.aek
  %i.aeq = and i32 %i.aef, 3
  %i.aer = insertelement <4 x i16> poison, i16 %i.acc, i64 0
  %i.aes = insertelement <4 x i16> %i.aer, i16 %i.acu, i64 1
  %i.aet = insertelement <4 x i16> %i.aes, i16 %i.adm, i64 2
  %i.aeu = insertelement <4 x i16> %i.aet, i16 %i.aee, i64 3
  %7 = lshr <4 x i16> %i.aeu, splat (i16 2)
  %8 = and <4 x i16> %7, splat (i16 1)
  %9 = zext nneg <4 x i16> %8 to <4 x i32>
  %.masked.i50.i = and i32 %i.aek, 24576
  %i.aev = or disjoint i32 %.masked.i50.i, %i.aeg ; 2 uses
  store i32 %i.aev, ptr %i.pl, align 4, !tbaa !58
  %i.aew = lshr i32 %i.aep, 15
  %i.aex = and i32 %i.aew, 32767
  store i32 %i.aex, ptr %i.pm, align 8, !tbaa !58
  %i.aey = lshr i16 %i.aem, 1
  %i.aez = zext nneg i16 %i.aey to i32
  store i32 %i.aez, ptr %i.pn, align 4, !tbaa !58
  %i.afa = zext nneg i32 %i.aco to i64            ; 2 uses
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.afa ; 3 uses
  %i.afc = zext nneg i32 %i.adg to i64            ; 2 uses
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.afc ; 3 uses
  %i.afe = zext nneg i32 %i.ady to i64            ; 2 uses
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.afe ; 3 uses
  %i.afg = zext nneg i32 %i.aeq to i64            ; 2 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr @_ZN3ozz9animation12_GLOBAL__N_112kCpntMappingE, i64 %i.afg ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <4 x i32> poison, i32 %i.acp, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <4 x i32> %.sroa.0.0.vec.insert.i, i32 %i.adh, i64 1
  %.sroa.0.8.vec.insert.i = insertelement <4 x i32> %.sroa.0.4.vec.insert.i, i32 %i.adz, i64 2
  %.sroa.0.12.vec.insert.i = insertelement <4 x i32> %.sroa.0.8.vec.insert.i, i32 %i.aev, i64 3
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afb, i64 1
  %i.afj = load i8, ptr %i.afi, align 1, !tbaa !56
  %i.afk = zext i8 %i.afj to i64
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.afk
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !58
  %.sroa.7.16.vec.insert.i = insertelement <4 x i32> poison, i32 %i.afm, i64 0
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afd, i64 1
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !56
  %i.afp = zext i8 %i.afo to i64
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.afp
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !58
  %.sroa.7.20.vec.insert.i = insertelement <4 x i32> %.sroa.7.16.vec.insert.i, i32 %i.afr, i64 1
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aff, i64 1
  %i.aft = load i8, ptr %i.afs, align 1, !tbaa !56
  %i.afu = zext i8 %i.aft to i64
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.afu
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !58
  %.sroa.7.24.vec.insert.i = insertelement <4 x i32> %.sroa.7.20.vec.insert.i, i32 %i.afw, i64 2
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afh, i64 1
  %i.afy = load i8, ptr %i.afx, align 1, !tbaa !56
  %i.afz = zext i8 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.afz
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !58
  %.sroa.7.28.vec.insert.i = insertelement <4 x i32> %.sroa.7.24.vec.insert.i, i32 %i.agb, i64 3
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afb, i64 2
  %i.agd = load i8, ptr %i.agc, align 2, !tbaa !56
  %i.age = zext i8 %i.agd to i64
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.age
  %i.agg = load i32, ptr %i.agf, align 4, !tbaa !58
  %.sroa.12.32.vec.insert.i = insertelement <4 x i32> poison, i32 %i.agg, i64 0
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afd, i64 2
  %i.agi = load i8, ptr %i.agh, align 2, !tbaa !56
  %i.agj = zext i8 %i.agi to i64
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.agj
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !58
  %.sroa.12.36.vec.insert.i = insertelement <4 x i32> %.sroa.12.32.vec.insert.i, i32 %i.agl, i64 1
  %i.agm = getelementptr inbounds nuw i8, ptr %i.aff, i64 2
  %i.agn = load i8, ptr %i.agm, align 2, !tbaa !56
  %i.ago = zext i8 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.ago
  %i.agq = load i32, ptr %i.agp, align 4, !tbaa !58
  %.sroa.12.40.vec.insert.i = insertelement <4 x i32> %.sroa.12.36.vec.insert.i, i32 %i.agq, i64 2
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afh, i64 2
  %i.ags = load i8, ptr %i.agr, align 2, !tbaa !56
  %i.agt = zext i8 %i.ags to i64
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.agt
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !58
  %.sroa.12.44.vec.insert.i = insertelement <4 x i32> %.sroa.12.40.vec.insert.i, i32 %i.agv, i64 3
  %i.agw = getelementptr inbounds nuw i8, ptr %i.afb, i64 3
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !56
  %i.agy = zext i8 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agy
  %i.aha = load i32, ptr %i.agz, align 4, !tbaa !58
  %.sroa.17.48.vec.insert.i = insertelement <4 x i32> poison, i32 %i.aha, i64 0
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.afd, i64 3
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !56
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.ahd
  %i.ahf = load i32, ptr %i.ahe, align 4, !tbaa !58
  %.sroa.17.52.vec.insert.i = insertelement <4 x i32> %.sroa.17.48.vec.insert.i, i32 %i.ahf, i64 1
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.aff, i64 3
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !56
  %i.ahi = zext i8 %i.ahh to i64
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %i.ahi
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !58
  %.sroa.17.56.vec.insert.i = insertelement <4 x i32> %.sroa.17.52.vec.insert.i, i32 %i.ahk, i64 2
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.afh, i64 3
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !56
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.ahn
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !58
  %.sroa.17.60.vec.insert.i = insertelement <4 x i32> %.sroa.17.56.vec.insert.i, i32 %i.ahp, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ahq = uitofp nneg <4 x i32> %.sroa.0.12.vec.insert.i to <4 x float>
  %i.ahr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahq, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.ahr, ptr %i.d, align 16, !tbaa !56
  %i.ahs = sitofp <4 x i32> %.sroa.7.28.vec.insert.i to <4 x float>
  %i.aht = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahs, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.aht, ptr %i.po, align 16, !tbaa !56
  %i.ahu = sitofp <4 x i32> %.sroa.12.44.vec.insert.i to <4 x float>
  %i.ahv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahu, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.ahv, ptr %i.pp, align 16, !tbaa !56
  %i.ahw = sitofp <4 x i32> %.sroa.17.60.vec.insert.i to <4 x float>
  %i.ahx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahw, <4 x float> splat (float f0x3835065D), <4 x float> splat (float f0xBF3504F3))
  store <4 x float> %i.ahx, ptr %i.pq, align 16, !tbaa !56
  %i.ahy = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.afa ; 4 uses
  %i.ahz = load <4 x i32>, ptr %i.ahy, align 16, !tbaa !56
  %i.aia = and <4 x i32> %i.ahz, <i32 0, i32 -1, i32 -1, i32 -1>
  store <4 x i32> %i.aia, ptr %i.ahy, align 16, !tbaa !56
  %i.aib = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.afc ; 4 uses
  %i.aic = load <4 x i32>, ptr %i.aib, align 16, !tbaa !56
  %i.aid = and <4 x i32> %i.aic, <i32 -1, i32 0, i32 -1, i32 -1>
  store <4 x i32> %i.aid, ptr %i.aib, align 16, !tbaa !56
  %i.aie = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.afe ; 4 uses
  %i.aif = load <4 x i32>, ptr %i.aie, align 16, !tbaa !56
  %i.aig = and <4 x i32> %i.aif, <i32 -1, i32 -1, i32 0, i32 -1>
  store <4 x i32> %i.aig, ptr %i.aie, align 16, !tbaa !56
  %i.aih = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.afg ; 4 uses
  %i.aii = load <4 x i32>, ptr %i.aih, align 16, !tbaa !56
  %i.aij = and <4 x i32> %i.aii, <i32 -1, i32 -1, i32 -1, i32 0>
  store <4 x i32> %i.aij, ptr %i.aih, align 16, !tbaa !56
  %i.aik = load <4 x float>, ptr %i.d, align 16, !tbaa !56 ; 2 uses
  %i.ail = load <4 x float>, ptr %i.po, align 16, !tbaa !56 ; 2 uses
  %i.aim = fmul <4 x float> %i.ail, %i.ail
  %i.ain = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aik, <4 x float> %i.aik, <4 x float> %i.aim)
  %i.aio = load <4 x float>, ptr %i.pp, align 16, !tbaa !56 ; 2 uses
  %i.aip = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aio, <4 x float> %i.aio, <4 x float> %i.ain)
  %i.aiq = load <4 x float>, ptr %i.pq, align 16, !tbaa !56 ; 2 uses
  %i.air = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aiq, <4 x float> %i.aiq, <4 x float> %i.aip)
  %i.ais = fsub <4 x float> splat (float 1.000000e+00), %i.air ; 2 uses
  %i.ait = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.ais)
  %i.aiu = fmul <4 x float> %i.ait, %i.ais
  %i.aiv = shl nuw <4 x i32> %9, splat (i32 31)
  %i.aiw = bitcast <4 x float> %i.aiu to <4 x i32>
  %i.aix = or <4 x i32> %i.aiv, %i.aiw            ; 4 uses
  %i.aiy = load <4 x i32>, ptr %i.ahy, align 16, !tbaa !56
  %i.aiz = and <4 x i32> %i.aix, <i32 -1, i32 0, i32 0, i32 0>
  %i.aja = or <4 x i32> %i.aiz, %i.aiy
  store <4 x i32> %i.aja, ptr %i.ahy, align 16, !tbaa !56
  %i.ajb = load <4 x i32>, ptr %i.aib, align 16, !tbaa !56
  %i.ajc = and <4 x i32> %i.aix, <i32 0, i32 -1, i32 0, i32 0>
  %i.ajd = or <4 x i32> %i.ajc, %i.ajb
  store <4 x i32> %i.ajd, ptr %i.aib, align 16, !tbaa !56
  %i.aje = load <4 x i32>, ptr %i.aie, align 16, !tbaa !56
  %i.ajf = and <4 x i32> %i.aix, <i32 0, i32 0, i32 -1, i32 0>
  %i.ajg = or <4 x i32> %i.ajf, %i.aje
  store <4 x i32> %i.ajg, ptr %i.aie, align 16, !tbaa !56
  %i.ajh = load <4 x i32>, ptr %i.aih, align 16, !tbaa !56
  %i.aji = and <4 x i32> %i.aix, <i32 0, i32 0, i32 0, i32 -1>
  %i.ajj = or <4 x i32> %i.ajh, %i.aji
  store <4 x i32> %i.ajj, ptr %i.aih, align 16, !tbaa !56
  %i.ajk = load <4 x float>, ptr %i.d, align 16, !tbaa !56
  store <4 x float> %i.ajk, ptr %i.acb, align 16, !tbaa !56
  %i.ajl = load <4 x float>, ptr %i.po, align 16, !tbaa !56
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aca, i64 112
  store <4 x float> %i.ajl, ptr %i.ajm, align 16, !tbaa !56
  %i.ajn = load <4 x float>, ptr %i.pp, align 16, !tbaa !56
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aca, i64 128
  store <4 x float> %i.ajn, ptr %i.ajo, align 16, !tbaa !56
  %i.ajp = load <4 x float>, ptr %i.pq, align 16, !tbaa !56
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aca, i64 144
  store <4 x float> %i.ajp, ptr %i.ajq, align 16, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.s

bb.s:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i81, %.lr.ph.i63
  %i.ajr = add nuw i64 %.06225.i65, 1
  %i.ajs = lshr i8 %.06126.i64, 1                 ; 2 uses
  %.not.i92 = icmp eq i8 %i.ajs, 0
  br i1 %.not.i92, label %._crit_edge.i93, label %.lr.ph.i63, !llvm.loop !79

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit: ; preds = %._crit_edge.i93
  %.pre194 = load ptr, ptr %i.e, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %.pre194, i64 24
  %.pre196 = load ptr, ptr %.phi.trans.insert195, align 8, !tbaa !98
  %.pre197 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit: ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.ajt = phi ptr [ %.pre197, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.oj, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ]
  %i.aju = phi ptr [ %.pre196, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.og, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ]
  %i.ajv = phi ptr [ %.pre194, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit.loopexit ], [ %i.oe, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !47, !noalias !107 ; 17 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajv, i64 192
  %i.ajz = load i64, ptr %i.ajy, align 8, !tbaa !48, !noalias !107
  store ptr %i.ajx, ptr %3, align 8, !alias.scope !107
  %i.aka = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ajz, ptr %i.aka, align 8, !alias.scope !107
  %i.akb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajv, i64 200
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !95, !noalias !107 ; 5 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajv, i64 208
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !96, !noalias !107
  store ptr %i.akd, ptr %i.akb, align 8, !alias.scope !107
  %i.akg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.akf, ptr %i.akg, align 8, !alias.scope !107
  %i.akh = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajv, i64 216
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !47, !noalias !107
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajv, i64 224
  %i.akl = load i64, ptr %i.akk, align 8, !tbaa !48, !noalias !107
  store ptr %i.akj, ptr %i.akh, align 8, !alias.scope !107
  %i.akm = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.akl, ptr %i.akm, align 8, !alias.scope !107
  %i.akn = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ajv, i64 232
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !49, !noalias !107
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ajv, i64 240
  %i.akr = load i64, ptr %i.akq, align 8, !tbaa !50, !noalias !107
  store ptr %i.akp, ptr %i.akn, align 8, !alias.scope !107
  %i.aks = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.akr, ptr %i.aks, align 8, !alias.scope !107
  %i.akt = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ajv, i64 248
  %i.akv = load float, ptr %i.aku, align 8, !tbaa !97, !noalias !107
  store float %i.akv, ptr %i.akt, align 8, !tbaa !55, !alias.scope !107
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 32
  %i.akx = load i64, ptr %i.akw, align 8, !tbaa !99
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ajt, i64 104
  call fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %i.z, float noundef %i.ae, i64 noundef %i.u, ptr %i.aju, i64 %i.akx, ptr noundef nonnull align 8 dereferenceable(68) %3, ptr noundef nonnull align 8 dereferenceable(36) %i.aky)
  %i.akz = load ptr, ptr %i.e, align 8, !tbaa !17 ; 3 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akz, i64 24
  %i.alb = load ptr, ptr %i.ala, align 8, !tbaa !98 ; 8 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.akz, i64 288
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !100 ; 8 uses
  %i.ale = load ptr, ptr %i.g, align 8, !tbaa !18 ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 104
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ale, i64 176 ; 4 uses
  br i1 %.not31.i, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139, label %.lr.ph29.i102

.lr.ph29.i102:                                    ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.alh = getelementptr inbounds nuw i8, ptr %i.akz, i64 32
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !99
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ale, i64 120
  %.not.i.i103 = icmp ugt i64 %i.ali, 255         ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i137, %.lr.ph29.i102
  %.027.i104 = phi i64 [ 0, %.lr.ph29.i102 ], [ %i.alo, %._crit_edge.i137 ] ; 3 uses
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !47
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 %.027.i104 ; 2 uses
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !56 ; 2 uses
  store i8 0, ptr %i.all, align 1, !tbaa !56
  %.not24.i105 = icmp eq i8 %i.alm, 0
  br i1 %.not24.i105, label %._crit_edge.i137, label %.lr.ph.preheader.i106

.lr.ph.preheader.i106:                            ; preds = %bb.t
  %i.aln = shl nuw i64 %.027.i104, 3
  br label %.lr.ph.i107

._crit_edge.i137:                                 ; preds = %bb.z, %bb.t
  %i.alo = add nuw nsw i64 %.027.i104, 1          ; 2 uses
  %exitcond.not.i138 = icmp eq i64 %i.alo, %i.bu
  br i1 %exitcond.not.i138, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit, label %bb.t, !llvm.loop !72

.lr.ph.i107:                                      ; preds = %bb.z, %.lr.ph.preheader.i106
  %.06126.i108 = phi i8 [ %i.awj, %bb.z ], [ %i.alm, %.lr.ph.preheader.i106 ] ; 2 uses
  %.06225.i109 = phi i64 [ %i.awi, %bb.z ], [ %i.aln, %.lr.ph.preheader.i106 ] ; 6 uses
  %i.alp = and i8 %.06126.i108, 1
  %.not64.i110 = icmp eq i8 %i.alp, 0
  br i1 %.not64.i110, label %bb.z, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i107
  %i.alq = load ptr, ptr %i.alf, align 8, !tbaa !49
  %.idx.i111 = shl i64 %.06225.i109, 4
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 %.idx.i111 ; 5 uses
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !58 ; 2 uses
  %i.alt = zext i32 %i.als to i64
  %i.alu = getelementptr inbounds nuw [2 x i8], ptr %i.akd, i64 %i.alt
  %i.alv = load i16, ptr %i.alu, align 2, !tbaa !60
  %i.alw = zext i16 %i.alv to i32
  %i.alx = sub i32 %i.als, %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alr, i64 4 ; 2 uses
  %i.alz = load i32, ptr %i.aly, align 4, !tbaa !58 ; 2 uses
  %i.ama = zext i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw [2 x i8], ptr %i.akd, i64 %i.ama
  %i.amc = load i16, ptr %i.amb, align 2, !tbaa !60
  %i.amd = zext i16 %i.amc to i32
  %i.ame = sub i32 %i.alz, %i.amd
  %i.amf = getelementptr inbounds nuw i8, ptr %i.alr, i64 8 ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !58 ; 2 uses
  %i.amh = zext i32 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [2 x i8], ptr %i.akd, i64 %i.amh
  %i.amj = load i16, ptr %i.ami, align 2, !tbaa !60
  %i.amk = zext i16 %i.amj to i32
  %i.aml = sub i32 %i.amg, %i.amk
  %i.amm = getelementptr inbounds nuw i8, ptr %i.alr, i64 12 ; 2 uses
  %i.amn = load i32, ptr %i.amm, align 4, !tbaa !58 ; 2 uses
  %i.amo = zext i32 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [2 x i8], ptr %i.akd, i64 %i.amo
  %i.amq = load i16, ptr %i.amp, align 2, !tbaa !60
  %i.amr = zext i16 %i.amq to i32
  %i.ams = sub i32 %i.amn, %i.amr
  %i.amt = zext i32 %i.alx to i64                 ; 3 uses
  %i.amu = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.amt ; 3 uses
  %i.amv = zext i32 %i.ame to i64                 ; 3 uses
  %i.amw = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.amv ; 3 uses
  %i.amx = zext i32 %i.aml to i64                 ; 3 uses
  %i.amy = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.amx ; 3 uses
  %i.amz = zext i32 %i.ams to i64                 ; 3 uses
  %i.ana = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.amz ; 3 uses
  br i1 %.not.i.i103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.amt
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !56
  %i.and = zext i8 %i.anc to i64
  %i.ane = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.amv
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !56
  %i.ang = zext i8 %i.anf to i64
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.amx
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !56
  %i.anj = zext i8 %i.ani to i64
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.amz
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !56
  %i.anm = zext i8 %i.anl to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113

bb.w:                                             ; preds = %bb.u
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.amt
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !60
  %i.anp = zext i16 %i.ano to i64
  %i.anq = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.amv
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !60
  %i.ans = zext i16 %i.anr to i64
  %i.ant = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.amx
  %i.anu = load i16, ptr %i.ant, align 2, !tbaa !60
  %i.anv = zext i16 %i.anu to i64
end_hunk_0
