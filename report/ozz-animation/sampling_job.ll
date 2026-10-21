Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/sampling_job?download=true
inline.NumInlined: 276
inline.NumDeleted: 92
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !47, !noalias !103 ; 17 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 120
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !48, !noalias !103
  store ptr %i.nc, ptr %2, align 8, !alias.scope !103
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ne, ptr %i.nf, align 8, !alias.scope !103
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 128
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !95, !noalias !103 ; 5 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 136
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !96, !noalias !103
  store ptr %i.ni, ptr %i.ng, align 8, !alias.scope !103
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.nk, ptr %i.nl, align 8, !alias.scope !103
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.na, i64 144
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !47, !noalias !103
  %i.np = getelementptr inbounds nuw i8, ptr %i.na, i64 152
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !48, !noalias !103
  store ptr %i.no, ptr %i.nm, align 8, !alias.scope !103
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.nq, ptr %i.nr, align 8, !alias.scope !103
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.nt = getelementptr inbounds nuw i8, ptr %i.na, i64 160
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !49, !noalias !103
  %i.nv = getelementptr inbounds nuw i8, ptr %i.na, i64 168
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !50, !noalias !103
  store ptr %i.nu, ptr %i.ns, align 8, !alias.scope !103
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %i.nw, ptr %i.nx, align 8, !alias.scope !103
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.na, i64 176
  %i.oa = load float, ptr %i.nz, align 8, !tbaa !97, !noalias !103
  store float %i.oa, ptr %i.ny, align 8, !tbaa !55, !alias.scope !103
  %i.ob = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !99
  %i.od = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  call fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %i.z, float noundef %i.ae, i64 noundef %i.u, ptr %i.mz, i64 %i.oc, ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.od)
  %i.oe = load ptr, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !98 ; 9 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 272
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !104 ; 8 uses
  %i.oj = load ptr, ptr %i.g, align 8, !tbaa !18  ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 160 ; 4 uses
  br i1 %.not31.i, label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit, label %.lr.ph29.i58

.lr.ph29.i58:                                     ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.on = load i64, ptr %i.om, align 8, !tbaa !99
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %.not.i.i59 = icmp ugt i64 %i.on, 255           ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ou = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ow = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.pa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.pi = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 36 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.po = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i93, %.lr.ph29.i58
  %.027.i60 = phi i64 [ 0, %.lr.ph29.i58 ], [ %i.pv, %._crit_edge.i93 ] ; 3 uses
  %i.pr = load ptr, ptr %i.oo, align 8, !tbaa !47
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
  %i.sp = getelementptr inbounds nuw [160 x i8], ptr %i.so, i64 %.06225.i65 ; 2 uses
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
  %i.zk = lshr <4 x i16> %i.vj, splat (i16 2)
  %.lobit = and <4 x i16> %i.zk, splat (i16 1)
  %i.zl = zext nneg <4 x i16> %.lobit to <4 x i32>
  %i.zm = shl nuw <4 x i32> %i.zl, splat (i32 31)
  %i.zn = bitcast <4 x float> %i.zj to <4 x i32>
  %i.zo = or <4 x i32> %i.zm, %i.zn               ; 4 uses
  %i.zp = load <4 x i32>, ptr %i.yn, align 16, !tbaa !56
  %i.zq = and <4 x i32> %i.zo, <i32 -1, i32 0, i32 0, i32 0>
  %i.zr = or <4 x i32> %i.zq, %i.zp
  store <4 x i32> %i.zr, ptr %i.yn, align 16, !tbaa !56
  %i.zs = load <4 x i32>, ptr %i.yq, align 16, !tbaa !56
  %i.zt = and <4 x i32> %i.zo, <i32 0, i32 -1, i32 0, i32 0>
  %i.zu = or <4 x i32> %i.zt, %i.zs
  store <4 x i32> %i.zu, ptr %i.yq, align 16, !tbaa !56
  %i.zv = load <4 x i32>, ptr %i.yt, align 16, !tbaa !56
  %i.zw = and <4 x i32> %i.zo, <i32 0, i32 0, i32 -1, i32 0>
  %i.zx = or <4 x i32> %i.zw, %i.zv
  store <4 x i32> %i.zx, ptr %i.yt, align 16, !tbaa !56
  %i.zy = load <4 x i32>, ptr %i.yw, align 16, !tbaa !56
  %i.zz = and <4 x i32> %i.zo, <i32 0, i32 0, i32 0, i32 -1>
  %i.aaa = or <4 x i32> %i.zy, %i.zz
  store <4 x i32> %i.aaa, ptr %i.yw, align 16, !tbaa !56
  %i.aab = load <4 x float>, ptr %i.b, align 16, !tbaa !56
  %i.aac = load <4 x float>, ptr %i.pa, align 16, !tbaa !56
  %4 = shufflevector <4 x float> %i.aab, <4 x float> %i.aac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %4, ptr %i.sq, align 16, !tbaa !56
  %i.aad = load <4 x float>, ptr %i.pb, align 16, !tbaa !56
  %i.aae = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  %i.aaf = load <4 x float>, ptr %i.pc, align 16, !tbaa !56
  %5 = shufflevector <4 x float> %i.aad, <4 x float> %i.aaf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %5, ptr %i.aae, align 16, !tbaa !56
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
  %i.aca = getelementptr inbounds nuw [160 x i8], ptr %i.abz, i64 %.06225.i65 ; 2 uses
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
  %i.aiv = lshr <4 x i16> %i.aeu, splat (i16 2)
  %.lobit212 = and <4 x i16> %i.aiv, splat (i16 1)
  %i.aiw = zext nneg <4 x i16> %.lobit212 to <4 x i32>
  %i.aix = shl nuw <4 x i32> %i.aiw, splat (i32 31)
  %i.aiy = bitcast <4 x float> %i.aiu to <4 x i32>
  %i.aiz = or <4 x i32> %i.aix, %i.aiy            ; 4 uses
  %i.aja = load <4 x i32>, ptr %i.ahy, align 16, !tbaa !56
  %i.ajb = and <4 x i32> %i.aiz, <i32 -1, i32 0, i32 0, i32 0>
  %i.ajc = or <4 x i32> %i.ajb, %i.aja
  store <4 x i32> %i.ajc, ptr %i.ahy, align 16, !tbaa !56
  %i.ajd = load <4 x i32>, ptr %i.aib, align 16, !tbaa !56
  %i.aje = and <4 x i32> %i.aiz, <i32 0, i32 -1, i32 0, i32 0>
  %i.ajf = or <4 x i32> %i.aje, %i.ajd
  store <4 x i32> %i.ajf, ptr %i.aib, align 16, !tbaa !56
  %i.ajg = load <4 x i32>, ptr %i.aie, align 16, !tbaa !56
  %i.ajh = and <4 x i32> %i.aiz, <i32 0, i32 0, i32 -1, i32 0>
  %i.aji = or <4 x i32> %i.ajh, %i.ajg
  store <4 x i32> %i.aji, ptr %i.aie, align 16, !tbaa !56
  %i.ajj = load <4 x i32>, ptr %i.aih, align 16, !tbaa !56
  %i.ajk = and <4 x i32> %i.aiz, <i32 0, i32 0, i32 0, i32 -1>
  %i.ajl = or <4 x i32> %i.ajj, %i.ajk
  store <4 x i32> %i.ajl, ptr %i.aih, align 16, !tbaa !56
  %i.ajm = load <4 x float>, ptr %i.d, align 16, !tbaa !56
  %i.ajn = load <4 x float>, ptr %i.po, align 16, !tbaa !56
  %6 = shufflevector <4 x float> %i.ajm, <4 x float> %i.ajn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %6, ptr %i.acb, align 16, !tbaa !56
  %i.ajo = load <4 x float>, ptr %i.pp, align 16, !tbaa !56
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aca, i64 128
  %i.ajq = load <4 x float>, ptr %i.pq, align 16, !tbaa !56
  %7 = shufflevector <4 x float> %i.ajo, <4 x float> %i.ajq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %7, ptr %i.ajp, align 16, !tbaa !56
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
  %i.anw = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.amz
  %i.anx = load i16, ptr %i.anw, align 2, !tbaa !60
  %i.any = zext i16 %i.anx to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113: ; preds = %bb.w, %bb.v
  %.sink20.i.i114 = phi i64 [ %i.any, %bb.w ], [ %i.anm, %bb.v ]
  %.pn.i.i115 = phi i64 [ %i.anp, %bb.w ], [ %i.and, %bb.v ]
  %.pn21.i.i116 = phi i64 [ %i.ans, %bb.w ], [ %i.ang, %bb.v ]
  %.pn22.i.i117 = phi i64 [ %i.anv, %bb.w ], [ %i.anj, %bb.v ]
  %.sink17.in.i.i118 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn22.i.i117
  %.sink17.i.i119 = load float, ptr %.sink17.in.i.i118, align 4, !tbaa !61
  %.sink18.in.i.i120 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn21.i.i116
  %.sink18.i.i121 = load float, ptr %.sink18.in.i.i120, align 4, !tbaa !61
  %.sink19.in.i.i122 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn.i.i115
  %.sink19.i.i123 = load float, ptr %.sink19.in.i.i122, align 4, !tbaa !61
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.sink20.i.i114
  %i.aoa = load float, ptr %i.anz, align 4, !tbaa !61
  %i.aob = insertelement <4 x float> poison, float %.sink19.i.i123, i64 0
  %i.aoc = insertelement <4 x float> %i.aob, float %.sink18.i.i121, i64 1
  %i.aod = insertelement <4 x float> %i.aoc, float %.sink17.i.i119, i64 2
  %i.aoe = insertelement <4 x float> %i.aod, float %i.aoa, i64 3
  %i.aof = load ptr, ptr %i.alg, align 8, !tbaa !62
  %i.aog = getelementptr inbounds nuw [128 x i8], ptr %i.aof, i64 %.06225.i109
  store <4 x float> %i.aoe, ptr %i.aog, align 16, !tbaa !56
  %i.aoh = load ptr, ptr %i.alg, align 8, !tbaa !62
  %i.aoi = getelementptr inbounds nuw [128 x i8], ptr %i.aoh, i64 %.06225.i109 ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 32
  %i.aok = load i16, ptr %i.amu, align 2, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation11SamplingJob3RunEv:bb.a
  %i.aqz = and <4 x i32> %i.aqy, splat (i32 32767) ; 2 uses
  %i.ara = shl nuw nsw <4 x i32> %i.aqz, splat (i32 13)
  %i.arb = bitcast <4 x i32> %i.ara to <4 x float>
  %i.arc = fmul nnan <4 x float> %i.arb, splat (float f0x77800000)
  %i.ard = icmp samesign ugt <4 x i32> %i.aqz, splat (i32 31743)
  %i.are = and <4 x i32> %i.aqy, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.arf = shl nuw <4 x i32> %i.are, splat (i32 16)
  %i.arg = select <4 x i1> %i.ard, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.arh = or disjoint <4 x i32> %i.arg, %i.arf
  %i.ari = bitcast <4 x float> %i.arc to <4 x i32>
  %i.arj = or <4 x i32> %i.arh, %i.ari
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aoi, i64 64
  store <4 x i32> %i.arj, ptr %i.ark, align 16, !tbaa !56
  %i.arl = load i32, ptr %i.alr, align 4, !tbaa !58
  %i.arm = zext i32 %i.arl to i64                 ; 3 uses
  %i.arn = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.arm ; 3 uses
  %i.aro = load i32, ptr %i.aly, align 4, !tbaa !58
  %i.arp = zext i32 %i.aro to i64                 ; 3 uses
  %i.arq = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.arp ; 3 uses
  %i.arr = load i32, ptr %i.amf, align 4, !tbaa !58
  %i.ars = zext i32 %i.arr to i64                 ; 3 uses
  %i.art = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.ars ; 3 uses
  %i.aru = load i32, ptr %i.amm, align 4, !tbaa !58
  %i.arv = zext i32 %i.aru to i64                 ; 3 uses
  %i.arw = getelementptr inbounds nuw [6 x i8], ptr %i.ald, i64 %i.arv ; 3 uses
  br i1 %.not.i.i103, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.arm
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !56
  %i.arz = zext i8 %i.ary to i64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.arp
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !56
  %i.asc = zext i8 %i.asb to i64
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.ars
  %i.ase = load i8, ptr %i.asd, align 1, !tbaa !56
  %i.asf = zext i8 %i.ase to i64
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ajx, i64 %i.arv
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !56
  %i.asi = zext i8 %i.ash to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125

bb.y:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit.i113
  %i.asj = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.arm
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !60
  %i.asl = zext i16 %i.ask to i64
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.arp
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !60
  %i.aso = zext i16 %i.asn to i64
  %i.asp = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.ars
  %i.asq = load i16, ptr %i.asp, align 2, !tbaa !60
  %i.asr = zext i16 %i.asq to i64
  %i.ass = getelementptr inbounds nuw [2 x i8], ptr %i.ajx, i64 %i.arv
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !60
  %i.asu = zext i16 %i.ast to i64
  br label %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125

_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125: ; preds = %bb.y, %bb.x
  %.sink20.i77.i126 = phi i64 [ %i.asu, %bb.y ], [ %i.asi, %bb.x ]
  %.pn.i78.i127 = phi i64 [ %i.asl, %bb.y ], [ %i.arz, %bb.x ]
  %.pn21.i79.i128 = phi i64 [ %i.aso, %bb.y ], [ %i.asc, %bb.x ]
  %.pn22.i80.i129 = phi i64 [ %i.asr, %bb.y ], [ %i.asf, %bb.x ]
  %.sink17.in.i81.i130 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn22.i80.i129
  %.sink17.i82.i131 = load float, ptr %.sink17.in.i81.i130, align 4, !tbaa !61
  %.sink18.in.i83.i132 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn21.i79.i128
  %.sink18.i84.i133 = load float, ptr %.sink18.in.i83.i132, align 4, !tbaa !61
  %.sink19.in.i85.i134 = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.pn.i78.i127
  %.sink19.i86.i135 = load float, ptr %.sink19.in.i85.i134, align 4, !tbaa !61
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.alb, i64 %.sink20.i77.i126
  %i.asw = load float, ptr %i.asv, align 4, !tbaa !61
  %i.asx = insertelement <4 x float> poison, float %.sink19.i86.i135, i64 0
  %i.asy = insertelement <4 x float> %i.asx, float %.sink18.i84.i133, i64 1
  %i.asz = insertelement <4 x float> %i.asy, float %.sink17.i82.i131, i64 2
  %i.ata = insertelement <4 x float> %i.asz, float %i.asw, i64 3
  %i.atb = load ptr, ptr %i.alg, align 8, !tbaa !62
  %i.atc = getelementptr inbounds nuw [128 x i8], ptr %i.atb, i64 %.06225.i109
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  store <4 x float> %i.ata, ptr %i.atd, align 16, !tbaa !56
  %i.ate = load ptr, ptr %i.alg, align 8, !tbaa !62
  %i.atf = getelementptr inbounds nuw [128 x i8], ptr %i.ate, i64 %.06225.i109 ; 3 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 80
  %i.ath = load i16, ptr %i.arn, align 2, !tbaa !60
  %i.ati = zext i16 %i.ath to i32
  %i.atj = load i16, ptr %i.arq, align 2, !tbaa !60
  %i.atk = zext i16 %i.atj to i32
  %i.atl = load i16, ptr %i.art, align 2, !tbaa !60
  %i.atm = zext i16 %i.atl to i32
  %i.atn = load i16, ptr %i.arw, align 2, !tbaa !60
  %i.ato = zext i16 %i.atn to i32
  %i.atp = insertelement <4 x i32> poison, i32 %i.ati, i64 0
  %i.atq = insertelement <4 x i32> %i.atp, i32 %i.atk, i64 1
  %i.atr = insertelement <4 x i32> %i.atq, i32 %i.atm, i64 2
  %i.ats = insertelement <4 x i32> %i.atr, i32 %i.ato, i64 3 ; 2 uses
  %i.att = and <4 x i32> %i.ats, splat (i32 32767) ; 2 uses
  %i.atu = shl nuw nsw <4 x i32> %i.att, splat (i32 13)
  %i.atv = bitcast <4 x i32> %i.atu to <4 x float>
  %i.atw = fmul nnan <4 x float> %i.atv, splat (float f0x77800000)
  %i.atx = icmp samesign ugt <4 x i32> %i.att, splat (i32 31743)
  %i.aty = and <4 x i32> %i.ats, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.atz = shl nuw <4 x i32> %i.aty, splat (i32 16)
  %i.aua = select <4 x i1> %i.atx, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.aub = or disjoint <4 x i32> %i.aua, %i.atz
  %i.auc = bitcast <4 x float> %i.atw to <4 x i32>
  %i.aud = or <4 x i32> %i.aub, %i.auc
  store <4 x i32> %i.aud, ptr %i.atg, align 16, !tbaa !56
  %i.aue = getelementptr inbounds nuw i8, ptr %i.arn, i64 2
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !60
  %i.aug = zext i16 %i.auf to i32
  %i.auh = getelementptr inbounds nuw i8, ptr %i.arq, i64 2
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !60
  %i.auj = zext i16 %i.aui to i32
  %i.auk = getelementptr inbounds nuw i8, ptr %i.art, i64 2
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !60
  %i.aum = zext i16 %i.aul to i32
  %i.aun = getelementptr inbounds nuw i8, ptr %i.arw, i64 2
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !60
  %i.aup = zext i16 %i.auo to i32
  %i.auq = insertelement <4 x i32> poison, i32 %i.aug, i64 0
  %i.aur = insertelement <4 x i32> %i.auq, i32 %i.auj, i64 1
  %i.aus = insertelement <4 x i32> %i.aur, i32 %i.aum, i64 2
  %i.aut = insertelement <4 x i32> %i.aus, i32 %i.aup, i64 3 ; 2 uses
  %i.auu = and <4 x i32> %i.aut, splat (i32 32767) ; 2 uses
  %i.auv = shl nuw nsw <4 x i32> %i.auu, splat (i32 13)
  %i.auw = bitcast <4 x i32> %i.auv to <4 x float>
  %i.aux = fmul nnan <4 x float> %i.auw, splat (float f0x77800000)
  %i.auy = icmp samesign ugt <4 x i32> %i.auu, splat (i32 31743)
  %i.auz = and <4 x i32> %i.aut, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.ava = shl nuw <4 x i32> %i.auz, splat (i32 16)
  %i.avb = select <4 x i1> %i.auy, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.avc = or disjoint <4 x i32> %i.avb, %i.ava
  %i.avd = bitcast <4 x float> %i.aux to <4 x i32>
  %i.ave = or <4 x i32> %i.avc, %i.avd
  %i.avf = getelementptr inbounds nuw i8, ptr %i.atf, i64 96
  store <4 x i32> %i.ave, ptr %i.avf, align 16, !tbaa !56
  %i.avg = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !60
  %i.avi = zext i16 %i.avh to i32
  %i.avj = getelementptr inbounds nuw i8, ptr %i.arq, i64 4
  %i.avk = load i16, ptr %i.avj, align 2, !tbaa !60
  %i.avl = zext i16 %i.avk to i32
  %i.avm = getelementptr inbounds nuw i8, ptr %i.art, i64 4
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !60
  %i.avo = zext i16 %i.avn to i32
  %i.avp = getelementptr inbounds nuw i8, ptr %i.arw, i64 4
  %i.avq = load i16, ptr %i.avp, align 2, !tbaa !60
  %i.avr = zext i16 %i.avq to i32
  %i.avs = insertelement <4 x i32> poison, i32 %i.avi, i64 0
  %i.avt = insertelement <4 x i32> %i.avs, i32 %i.avl, i64 1
  %i.avu = insertelement <4 x i32> %i.avt, i32 %i.avo, i64 2
  %i.avv = insertelement <4 x i32> %i.avu, i32 %i.avr, i64 3 ; 2 uses
  %i.avw = and <4 x i32> %i.avv, splat (i32 32767) ; 2 uses
  %i.avx = shl nuw nsw <4 x i32> %i.avw, splat (i32 13)
  %i.avy = bitcast <4 x i32> %i.avx to <4 x float>
  %i.avz = fmul nnan <4 x float> %i.avy, splat (float f0x77800000)
  %i.awa = icmp samesign ugt <4 x i32> %i.avw, splat (i32 31743)
  %i.awb = and <4 x i32> %i.avv, <i32 -32768, i32 32768, i32 -32768, i32 32768>
  %i.awc = shl nuw <4 x i32> %i.awb, splat (i32 16)
  %i.awd = select <4 x i1> %i.awa, <4 x i32> splat (i32 2139095040), <4 x i32> zeroinitializer
  %i.awe = or disjoint <4 x i32> %i.awd, %i.awc
  %i.awf = bitcast <4 x float> %i.avz to <4 x i32>
  %i.awg = or <4 x i32> %i.awe, %i.awf
  %i.awh = getelementptr inbounds nuw i8, ptr %i.atf, i64 112
  store <4 x i32> %i.awg, ptr %i.awh, align 16, !tbaa !56
  br label %bb.z

bb.z:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_19KeysRatioERKNS_4spanIKfEERKNS2_IKhEERKNS2_IKjEE.exit87.i125, %.lr.ph.i107
  %i.awi = add nuw i64 %.06225.i109, 1
  %i.awj = lshr i8 %.06126.i108, 1                ; 2 uses
  %.not.i136 = icmp eq i8 %i.awj, 0
  br i1 %.not.i136, label %._crit_edge.i137, label %.lr.ph.i107, !llvm.loop !73

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit: ; preds = %._crit_edge.i137
  %.pre198 = load ptr, ptr %i.g, align 8, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139

_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139: ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit
  %i.awk = phi ptr [ %.pre198, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139.loopexit ], [ %i.ale, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal13QuaternionKeyENS3_19InterpSoaQuaternionEPFvRKS4_S7_S7_S7_PNS_4math13SoaQuaternionEEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit ] ; 3 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.awm = load i64, ptr %i.i, align 8, !tbaa !19
  %i.awn = tail call noundef i64 @llvm.umin.i64(i64 %i.awm, i64 %i.u) ; 2 uses
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awk, i64 144
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !62
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awk, i64 160
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !63
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awk, i64 176
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !62
  %i.awu = insertelement <4 x float> poison, float %i.z, i64 0
  %i.awv = shufflevector <4 x float> %i.awu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %.not.i144 = icmp eq i64 %i.awn, 0
  br i1 %.not.i144, label %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139, %.lr.ph.i145
  %.011.i = phi i64 [ %i.bau, %.lr.ph.i145 ], [ 0, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139 ] ; 7 uses
  %i.aww = getelementptr inbounds nuw [128 x i8], ptr %i.awp, i64 %.011.i ; 8 uses
  %i.awx = load <4 x float>, ptr %i.aww, align 16, !tbaa !56 ; 2 uses
  %i.awy = fsub <4 x float> %i.awv, %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  %i.axa = load <4 x float>, ptr %i.awz, align 16, !tbaa !56
  %i.axb = fsub <4 x float> %i.axa, %i.awx
  %i.axc = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.axb)
  %i.axd = fmul <4 x float> %i.awy, %i.axc        ; 2 uses
  %i.axe = getelementptr inbounds nuw [160 x i8], ptr %i.awr, i64 %.011.i ; 10 uses
  %i.axf = load <4 x float>, ptr %i.axe, align 16, !tbaa !56 ; 2 uses
  %i.axg = fsub <4 x float> %i.awv, %i.axf
  %i.axh = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.axi = load <4 x float>, ptr %i.axh, align 16, !tbaa !56
  %i.axj = fsub <4 x float> %i.axi, %i.axf
  %i.axk = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.axj)
  %i.axl = fmul <4 x float> %i.axg, %i.axk        ; 4 uses
  %i.axm = getelementptr inbounds nuw [128 x i8], ptr %i.awt, i64 %.011.i ; 8 uses
  %i.axn = load <4 x float>, ptr %i.axm, align 16, !tbaa !56 ; 2 uses
  %i.axo = fsub <4 x float> %i.awv, %i.axn
  %i.axp = getelementptr inbounds nuw i8, ptr %i.axm, i64 16
  %i.axq = load <4 x float>, ptr %i.axp, align 16, !tbaa !56
  %i.axr = fsub <4 x float> %i.axq, %i.axn
  %i.axs = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.axr)
  %i.axt = fmul <4 x float> %i.axo, %i.axs        ; 2 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.aww, i64 32
  %i.axv = getelementptr inbounds nuw i8, ptr %i.aww, i64 80
  %i.axw = load <4 x float>, ptr %i.axv, align 16, !tbaa !56, !noalias !108
  %i.axx = load <4 x float>, ptr %i.axu, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.axy = fsub <4 x float> %i.axw, %i.axx
  %i.axz = getelementptr inbounds nuw i8, ptr %i.aww, i64 96
  %i.aya = load <4 x float>, ptr %i.axz, align 16, !tbaa !56, !noalias !108
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aww, i64 48
  %i.ayc = load <4 x float>, ptr %i.ayb, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.ayd = fsub <4 x float> %i.aya, %i.ayc
  %i.aye = getelementptr inbounds nuw i8, ptr %i.aww, i64 112
  %i.ayf = load <4 x float>, ptr %i.aye, align 16, !tbaa !56, !noalias !108
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.aww, i64 64
  %i.ayh = load <4 x float>, ptr %i.ayg, align 16, !tbaa !56, !noalias !108 ; 2 uses
  %i.ayi = fsub <4 x float> %i.ayf, %i.ayh
  %i.ayj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayi, <4 x float> %i.axd, <4 x float> %i.ayh)
  %i.ayk = load ptr, ptr %i.awl, align 8, !tbaa !109
  %i.ayl = getelementptr inbounds nuw [160 x i8], ptr %i.ayk, i64 %.011.i ; 2 uses
  %8 = shufflevector <4 x float> %i.axy, <4 x float> %i.ayd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x float> %i.axd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x float> %i.axx, <4 x float> %i.ayc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %8, <8 x float> %9, <8 x float> %10)
  store <8 x float> %11, ptr %i.ayl, align 16, !tbaa !56
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ayl, i64 32
  store <4 x float> %i.ayj, ptr %.sroa.510.0..sroa_idx.i, align 16, !tbaa !56
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axe, i64 32
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axe, i64 96
  %i.ayo = load <4 x float>, ptr %i.ayn, align 16, !tbaa !56, !noalias !110
  %i.ayp = load <4 x float>, ptr %i.aym, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.ayq = fsub <4 x float> %i.ayo, %i.ayp
  %i.ayr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayq, <4 x float> %i.axl, <4 x float> %i.ayp) ; 3 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axe, i64 112
  %i.ayt = load <4 x float>, ptr %i.ays, align 16, !tbaa !56, !noalias !110
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axe, i64 48
  %i.ayv = load <4 x float>, ptr %i.ayu, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.ayw = fsub <4 x float> %i.ayt, %i.ayv
  %i.ayx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayw, <4 x float> %i.axl, <4 x float> %i.ayv) ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axe, i64 128
  %i.ayz = load <4 x float>, ptr %i.ayy, align 16, !tbaa !56, !noalias !110
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axe, i64 64
  %i.azb = load <4 x float>, ptr %i.aza, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.azc = fsub <4 x float> %i.ayz, %i.azb
  %i.azd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azc, <4 x float> %i.axl, <4 x float> %i.azb) ; 3 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axe, i64 144
  %i.azf = load <4 x float>, ptr %i.aze, align 16, !tbaa !56, !noalias !110
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axe, i64 80
  %i.azh = load <4 x float>, ptr %i.azg, align 16, !tbaa !56, !noalias !110 ; 2 uses
  %i.azi = fsub <4 x float> %i.azf, %i.azh
  %i.azj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azi, <4 x float> %i.axl, <4 x float> %i.azh) ; 3 uses
  %i.azk = fmul <4 x float> %i.ayx, %i.ayx
  %i.azl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ayr, <4 x float> %i.ayr, <4 x float> %i.azk)
  %i.azm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azd, <4 x float> %i.azd, <4 x float> %i.azl)
  %i.azn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.azj, <4 x float> %i.azj, <4 x float> %i.azm) ; 2 uses
  %i.azo = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.azn) ; 3 uses
  %i.azp = fmul <4 x float> %i.azo, splat (float 5.000000e-01)
  %i.azq = fmul <4 x float> %i.azo, %i.azn
  %i.azr = fmul <4 x float> %i.azo, %i.azq
  %i.azs = fsub <4 x float> splat (float 3.000000e+00), %i.azr
  %i.azt = fmul <4 x float> %i.azp, %i.azs        ; 4 uses
  %i.azu = fmul <4 x float> %i.ayr, %i.azt
  %i.azv = fmul <4 x float> %i.ayx, %i.azt
  %i.azw = fmul <4 x float> %i.azd, %i.azt
  %i.azx = fmul <4 x float> %i.azj, %i.azt
  %i.azy = load ptr, ptr %i.awl, align 8, !tbaa !109
  %i.azz = getelementptr inbounds nuw [160 x i8], ptr %i.azy, i64 %.011.i ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.azz, i64 48
  %12 = shufflevector <4 x float> %i.azu, <4 x float> %i.azv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %12, ptr %i.baa, align 16, !tbaa !56
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.azz, i64 80
  %13 = shufflevector <4 x float> %i.azw, <4 x float> %i.azx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %13, ptr %.sroa.57.0..sroa_idx.i, align 16, !tbaa !56
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axm, i64 32
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axm, i64 80
  %i.bad = load <4 x float>, ptr %i.bac, align 16, !tbaa !56, !noalias !111
  %i.bae = load <4 x float>, ptr %i.bab, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.baf = fsub <4 x float> %i.bad, %i.bae
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axm, i64 96
  %i.bah = load <4 x float>, ptr %i.bag, align 16, !tbaa !56, !noalias !111
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axm, i64 48
  %i.baj = load <4 x float>, ptr %i.bai, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bak = fsub <4 x float> %i.bah, %i.baj
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axm, i64 112
  %i.bam = load <4 x float>, ptr %i.bal, align 16, !tbaa !56, !noalias !111
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axm, i64 64
  %i.bao = load <4 x float>, ptr %i.ban, align 16, !tbaa !56, !noalias !111 ; 2 uses
  %i.bap = fsub <4 x float> %i.bam, %i.bao
  %i.baq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bap, <4 x float> %i.axt, <4 x float> %i.bao)
  %i.bar = load ptr, ptr %i.awl, align 8, !tbaa !109
  %i.bas = getelementptr inbounds nuw [160 x i8], ptr %i.bar, i64 %.011.i ; 2 uses
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bas, i64 112
  %14 = shufflevector <4 x float> %i.baf, <4 x float> %i.bak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <4 x float> %i.axt, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %16 = shufflevector <4 x float> %i.bae, <4 x float> %i.baj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %14, <8 x float> %15, <8 x float> %16)
  store <8 x float> %17, ptr %i.bat, align 16, !tbaa !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bas, i64 144
  store <4 x float> %i.baq, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !56
  %i.bau = add nuw i64 %.011.i, 1                 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %i.bau, %i.awn
  br i1 %exitcond.not.i146, label %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, label %.lr.ph.i145, !llvm.loop !90

_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit: ; preds = %.lr.ph.i145, %_ZN3ozz9animation12_GLOBAL__N_110DecompressINS0_8internal9Float3KeyENS3_15InterpSoaFloat3EPFvRKS4_S7_S7_S7_PNS_4math9SoaFloat3EEEEvmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERKNSD_IKT_EERKNS0_11SamplingJob7Context5CacheERKNSD_IT0_EERKT1_.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread

_ZNK3ozz9animation11SamplingJob8ValidateEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit, %bb.c, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit
  %.0.i191 = phi i1 [ false, %_ZNK3ozz9animation11SamplingJob8ValidateEv.exit ], [ true, %_ZN3ozz9animation12_GLOBAL__N_112InterpolatesEfmRKNS_4spanIKNS0_8internal15InterpSoaFloat3EEERKNS2_IKNS3_19InterpSoaQuaternionEEES8_RKNS2_INS_4math12SoaTransformEEE.exit ], [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN3ozz9animation11SamplingJob7Context4StepERKNS0_9AnimationEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !42
  %.not = icmp eq ptr %i.a, %1
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  store ptr %1, ptr %0, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.f, align 8, !tbaa !43
  ret float %i.e
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3ozz9animation12_GLOBAL__N_111UpdateCacheEffmRKNS_4spanIKfEERKNS0_9Animation14TKeyframesCtrlILb1EEERNS0_11SamplingJob7Context5CacheE(float noundef %0, float noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2, ptr nofree readonly captures(none) %.0.val, i64 %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(36) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"struct.ozz::span.9", align 8      ; 5 uses
  %6 = alloca %"struct.ozz::span.3", align 8      ; 6 uses
  %.tr = trunc nsw i64 %2 to i32                  ; 2 uses
  %i.a = shl i32 %.tr, 2                          ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !123  ; 2 uses
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !124  ; 4 uses
  %i.h = fsub float %0, %1                        ; 2 uses
  %i.i = icmp eq i32 %i.g, 0                      ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.l = load float, ptr %i.k, align 8, !tbaa !55
  %i.m = fmul float %i.l, 5.000000e-01
  %i.n = fcmp ogt float %i.j, %i.m
  br i1 %i.n, label %bb.c, label %.thread3

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fcmp olt float %i.h, 0.000000e+00
  %or.cond = or i1 %i.s, %i.i
  br i1 %or.cond, label %.thread5, label %.thread3

.thread5:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.t = zext i32 %i.a to i64
  %i.u = load ptr, ptr %4, align 8, !tbaa !49
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !55
  %i.x = fdiv float %0, %i.w
  %i.y = fadd float %i.x, 5.000000e-01
  %i.z = fptosi float %i.y to i32                 ; 3 uses
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.f, label %.thread3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.ab = zext i32 %i.a to i64                    ; 2 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  store ptr %i.ac, ptr %6, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  %.not.i = icmp eq i32 %i.z, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = shl nuw i32 %i.z, 1
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.af
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !58
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !127
  %i.ao = sub i64 %i.an, %i.ak
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ak
  store ptr %i.aq, ptr %5, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ar, align 8
  %i.as = call { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.at = load ptr, ptr %i.o, align 8, !tbaa !126
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %i.af
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !58
  %i.ax = add i32 %i.aw, 1
  br label %_ZN3ozz9animation12_GLOBAL__N_115InitializeCacheERKNS0_9Animation14TKeyframesCtrlILb1EEEmRKNS_4spanIjEE.exit

bb.h:                                             ; preds = %.thread5, %bb.f
  %i.ay = phi ptr [ %i.u, %.thread5 ], [ %i.ac, %bb.f ] ; 3 uses
  %i.az = phi i64 [ %i.t, %.thread5 ], [ %i.ab, %bb.f ] ; 8 uses
  %.not24.i = icmp eq i32 %i.a, 0
  br i1 %.not24.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp samesign ult i64 %i.az, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp samesign ult i64 %i.az, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.az, 24
  %n.vec = and i64 %i.az, 4294967264              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op = add <8 x i32> splat (i32 8), %broadcast.splat
  %invariant.op57 = add <8 x i32> splat (i32 16), %broadcast.splat
  %invariant.op59 = add <8 x i32> splat (i32 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.bb = add <8 x i32> %broadcast.splat, %vec.ind
  %.reass = add <8 x i32> %vec.ind, %invariant.op
  %.reass58 = add <8 x i32> %vec.ind, %invariant.op57
  %.reass60 = add <8 x i32> %vec.ind, %invariant.op59
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  store <8 x i32> %i.bb, ptr %i.bc, align 4, !tbaa !58
  store <8 x i32> %.reass, ptr %i.bd, align 4, !tbaa !58
  store <8 x i32> %.reass58, ptr %i.be, align 4, !tbaa !58
  store <8 x i32> %.reass60, ptr %i.bf, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.az, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !131

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec37 = and i64 %i.az, 4294967288            ; 3 uses
  %broadcast.splatinsert38 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat39 = shufflevector <8 x i32> %broadcast.splatinsert38, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bh = trunc nuw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert40 = insertelement <8 x i32> poison, i32 %i.bh, i64 0
  %broadcast.splat41 = shufflevector <8 x i32> %broadcast.splatinsert40, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat41, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next44, %vec.epilog.vector.body ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3ozz9animation11SamplingJob7ContextC2Ei:bb.a
  tail call void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context6ResizeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((0, 16), (24, 60), (64, 100), (104, 140), (144, 192)) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 0, ptr %i.d, align 8, !tbaa !46
  %i.e = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.g), !inline_history !67
  store ptr null, ptr %i.f, align 8, !tbaa !64
  %i.k = tail call noundef i32 @llvm.smax.i32(i32 %1, i32 0)
  %i.l = add nuw nsw i32 %i.k, 3
  %i.m = lshr i32 %i.l, 2                         ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.m, ptr %i.n, align 4, !tbaa !41
  %i.o = zext nneg i32 %i.m to i64                ; 10 uses
  %i.p = add nuw nsw i64 %i.o, 7
  %i.q = lshr i64 %i.p, 3                         ; 7 uses
  %i.r = mul nuw nsw i64 %i.o, 464
  %i.s = mul nuw nsw i64 %i.q, 3
  %i.t = add nuw nsw i64 %i.s, %i.r
  %i.u = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i64 noundef %i.t, i64 noundef 16) ; 4 uses
  store ptr %i.y, ptr %i.f, align 8, !tbaa !64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, label %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32

_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32: ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %i.o, 7               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.ab, align 8, !tbaa !134
  %.idx.i21 = mul nuw nsw i64 %i.o, 160
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i21 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i ; 2 uses
  %.idx.i34 = shl nuw nsw i64 %i.o, 4             ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i34 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx.i34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i34
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit: ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr null, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.o, ptr %i.aj, align 8, !tbaa !134
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.ak, align 8, !tbaa !63
  br label %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52

_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit52: ; preds = %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32
  %.sink153 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ac, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink152 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ae, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sink = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.af, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %.sroa.086.5 = phi ptr [ %i.y, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ah, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ] ; 2 uses
  %.sroa.04.0.i49 = phi ptr [ null, %_ZN3ozz9fill_spanIjEENS_4spanIT_EERNS1_IhEEm.exit ], [ %i.ag, %_ZN3ozz9fill_spanINS_9animation8internal15InterpSoaFloat3EEENS_4spanIT_EERNS4_IhEEm.exit32 ]
  %i.al = shl nuw nsw i64 %i.o, 2                 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.o, ptr %i.am, align 8, !tbaa !135
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %.sink153, ptr %i.an, align 8, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.o, ptr %i.ao, align 8, !tbaa !134
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sink152, ptr %i.ap, align 8, !tbaa !49
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.al, ptr %i.aq, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.sink, ptr %i.ar, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.al, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.04.0.i49, ptr %i.at, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.al, ptr %i.au, align 8, !tbaa !50
  %.not.i53 = icmp eq i64 %i.q, 0                 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.086.5, i64 %i.q ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.q
  %.sroa.086.5.sink = select i1 %.not.i53, ptr null, ptr %.sroa.086.5
  %.sink154 = select i1 %.not.i53, ptr null, ptr %i.av
  %.sroa.04.0.i66 = select i1 %.not.i53, ptr null, ptr %i.aw
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.086.5.sink, ptr %i.ax, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.q, ptr %i.ay, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink154, ptr %i.az, align 8, !tbaa !47
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.q, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.04.0.i66, ptr %i.bb, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.q, ptr %i.bc, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7ContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef ptr @_ZN3ozz6memory17default_allocatorEv()
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  invoke void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c)
          to label %bb.b unwind label %bb.c, !inline_history !67

bb.b:                                             ; preds = %.noexc
  ret void

bb.c:                                             ; preds = %.noexc, %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #16
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3ozz9animation11SamplingJob7Context10DeallocateEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN3ozz6memory17default_allocatorEv() ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.c)
  store ptr null, ptr %i.b, align 8, !tbaa !64
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

declare noundef ptr @_ZN3ozz6memory17default_allocatorEv() local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare { ptr, i64 } @_ZN3ozz15DecodeGV4StreamERKNS_4spanIKhEERKNS0_IjEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN3ozz9animation9AnimationE", !10, i64 0}
!12 = !{!"p1 _ZTSN3ozz9animation11SamplingJob7ContextE", !10, i64 0}
!13 = !{!"p1 _ZTSN3ozz4math12SoaTransformE", !10, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"_ZTSN3ozz4spanINS_4math12SoaTransformEEE", !13, i64 0, !14, i64 8}
!16 = !{!"_ZTSN3ozz9animation11SamplingJobE", !9, i64 0, !11, i64 8, !12, i64 16, !15, i64 24}
!17 = !{!16, !11, i64 8}
!18 = !{!16, !12, i64 16}
!19 = !{!15, !14, i64 8}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"p1 float", !10, i64 0}
!22 = !{!"_ZTSN3ozz4spanIfEE", !21, i64 0, !14, i64 8}
!23 = !{!"_ZTSN3ozz4spanIhEE", !20, i64 0, !14, i64 8}
!24 = !{!"p1 short", !10, i64 0}
!25 = !{!"_ZTSN3ozz4spanItEE", !24, i64 0, !14, i64 8}
!26 = !{!"p1 int", !10, i64 0}
!27 = !{!"_ZTSN3ozz4spanIjEE", !26, i64 0, !14, i64 8}
!28 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb0EEE", !23, i64 0, !25, i64 16, !23, i64 32, !27, i64 48, !9, i64 64}
!29 = !{!"p1 _ZTSN3ozz9animation8internal9Float3KeyE", !10, i64 0}
!30 = !{!"_ZTSN3ozz4spanINS_9animation8internal9Float3KeyEEE", !29, i64 0, !14, i64 8}
!31 = !{!"p1 _ZTSN3ozz9animation8internal13QuaternionKeyE", !10, i64 0}
!32 = !{!"_ZTSN3ozz4spanINS_9animation8internal13QuaternionKeyEEE", !31, i64 0, !14, i64 8}
!33 = !{!"_ZTSN3ozz9animation9AnimationE", !9, i64 0, !6, i64 4, !10, i64 8, !20, i64 16, !22, i64 24, !28, i64 40, !28, i64 112, !28, i64 184, !30, i64 256, !32, i64 272, !30, i64 288}
!34 = !{!33, !6, i64 4}
!35 = !{!"_ZTSN3ozz9animation11SamplingJob7Context5CacheE", !27, i64 0, !23, i64 16, !6, i64 32}
!36 = !{!"p1 _ZTSN3ozz9animation8internal15InterpSoaFloat3E", !10, i64 0}
!37 = !{!"_ZTSN3ozz4spanINS_9animation8internal15InterpSoaFloat3EEE", !36, i64 0, !14, i64 8}
!38 = !{!"p1 _ZTSN3ozz9animation8internal19InterpSoaQuaternionE", !10, i64 0}
!39 = !{!"_ZTSN3ozz4spanINS_9animation8internal19InterpSoaQuaternionEEE", !38, i64 0, !14, i64 8}
!40 = !{!"_ZTSN3ozz9animation11SamplingJob7ContextE", !11, i64 0, !9, i64 8, !6, i64 12, !10, i64 16, !35, i64 24, !35, i64 64, !35, i64 104, !37, i64 144, !39, i64 160, !37, i64 176}
!41 = !{!40, !6, i64 12}
!42 = !{!40, !11, i64 0}
!43 = !{!40, !9, i64 8}
!44 = !{!40, !6, i64 56}
!45 = !{!40, !6, i64 96}
!46 = !{!40, !6, i64 136}
!47 = !{!23, !20, i64 0}
!48 = !{!23, !14, i64 8}
!49 = !{!27, !26, i64 0}
!50 = !{!27, !14, i64 8}
!51 = !{!"_ZTSN3ozz4spanIKhEE", !20, i64 0, !14, i64 8}
!52 = !{!"_ZTSN3ozz4spanIKtEE", !24, i64 0, !14, i64 8}
!53 = !{!"_ZTSN3ozz4spanIKjEE", !26, i64 0, !14, i64 8}
!54 = !{!"_ZTSN3ozz9animation9Animation14TKeyframesCtrlILb1EEE", !51, i64 0, !52, i64 16, !51, i64 32, !53, i64 48, !9, i64 64}
!55 = !{!54, !9, i64 64}
!56 = !{!5, !5, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!6, !6, i64 0}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!9, !9, i64 0}
!62 = !{!37, !36, i64 0}
!63 = !{!39, !38, i64 0}
!64 = !{!40, !10, i64 16}
!65 = !{!"vtable pointer", !4, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{ptr @_ZN3ozz9animation11SamplingJob7Context10DeallocateEv}
!68 = distinct !{!68, i1 true, !"_ZNK3ozz9animation9Animation17translations_ctrlEv"}
!69 = distinct !{!69, !68, !"_ZNK3ozz9animation9Animation17translations_ctrlEv: argument 0"}
!70 = distinct !{!70, i1 true, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!71 = distinct !{!71, !70, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, i1 true, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv"}
!75 = distinct !{!75, !74, !"_ZNK3ozz9animation9Animation14rotations_ctrlEv: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!77 = distinct !{!77, !76, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!78 = distinct !{!78, !57}
!79 = distinct !{!79, !57}
!80 = distinct !{!80, i1 true, !"_ZNK3ozz9animation9Animation11scales_ctrlEv"}
!81 = distinct !{!81, !80, !"_ZNK3ozz9animation9Animation11scales_ctrlEv: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv"}
!83 = distinct !{!83, !82, !"_ZNK3ozz9animation9Animation14TKeyframesCtrlILb0EEcvNS2_ILb1EEEEv: argument 0"}
!84 = distinct !{!84, i1 true, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!85 = distinct !{!85, !84, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!86 = distinct !{!86, i1 true, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f"}
!87 = distinct !{!87, !86, !"_ZN3ozz4math8NLerpEstERKNS0_13SoaQuaternionES3_Dv4_f: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f"}
!89 = distinct !{!89, !88, !"_ZN3ozz4math4LerpERKNS0_9SoaFloat3ES3_Dv4_f: argument 0"}
!90 = distinct !{!90, !57}
!91 = !{!16, !9, i64 0}
!92 = !{!69}
!93 = !{!71}
!94 = !{!71, !69}
!95 = !{!25, !24, i64 0}
!96 = !{!25, !14, i64 8}
!97 = !{!28, !9, i64 64}
!98 = !{!22, !21, i64 0}
!99 = !{!22, !14, i64 8}
!100 = !{!30, !29, i64 0}
!101 = !{!75}
!102 = !{!77}
!103 = !{!77, !75}
!104 = !{!32, !31, i64 0}
!105 = !{!81}
!106 = !{!83}
!107 = !{!83, !81}
!108 = !{!85}
!109 = !{!15, !13, i64 0}
!110 = !{!87}
!111 = !{!89}
!112 = distinct !{!112, !57, !129, !130}
!113 = distinct !{!113, !57, !129, !130}
!114 = distinct !{!114, !57, !130, !129}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, !132}
!117 = distinct !{!117, !57}
!118 = distinct !{!118, !57}
!119 = distinct !{!119, !57}
!120 = distinct !{!120, !57}
!121 = distinct !{!121, !57}
!122 = distinct !{!122, !57}
!123 = !{!52, !14, i64 8}
!124 = !{!35, !6, i64 32}
!125 = !{!53, !14, i64 8}
!126 = !{!53, !26, i64 0}
!127 = !{!51, !14, i64 8}
!128 = !{!51, !20, i64 0}
!129 = !{!"llvm.loop.isvectorized", i32 1}
!130 = !{!"llvm.loop.unroll.runtime.disable"}
!131 = !{!"branch_weights", i32 8, i32 24}
!132 = !{!"llvm.loop.unroll.disable"}
!133 = !{!52, !24, i64 0}
!134 = !{!37, !14, i64 8}
!135 = !{!39, !14, i64 8}
end_hunk_2
