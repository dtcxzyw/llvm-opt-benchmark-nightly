inline.NumInlined: 14
inline.NumDeleted: 2
begin_hunk_0_@fast_mode_intra_decision:bb.a
  %i.rn = shufflevector <4 x i16> %i.rj, <4 x i16> %i.rl, <16 x i32> <i32 0, i32 poison, i32 4, i32 poison, i32 1, i32 poison, i32 5, i32 poison, i32 2, i32 poison, i32 6, i32 poison, i32 3, i32 poison, i32 7, i32 poison>
  %i.ro = insertelement <16 x i16> %i.rn, i16 %i.ou, i64 1
  %i.rp = insertelement <16 x i16> %i.ro, i16 %i.pa, i64 3
  %i.rq = insertelement <16 x i16> %i.rp, i16 %i.pf, i64 5
  %i.rr = insertelement <16 x i16> %i.rq, i16 %i.pp, i64 7
  %i.rs = insertelement <16 x i16> %i.rr, i16 %i.pz, i64 9
  %i.rt = insertelement <16 x i16> %i.rs, i16 %i.qj, i64 11
  %i.ru = insertelement <16 x i16> %i.rt, i16 %i.qt, i64 13
  %i.rv = insertelement <16 x i16> %i.ru, i16 %i.rd, i64 15
  %i.rw = zext <16 x i16> %i.rv to <16 x i32>
  %i.rx = shufflevector <4 x i16> %i.rk, <4 x i16> %i.rm, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 6, i32 poison, i32 3, i32 poison, i32 7, i32 poison>
  %i.ry = shufflevector <4 x i16> %i.rj, <4 x i16> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rz = shufflevector <16 x i16> %i.rx, <16 x i16> %i.ry, <16 x i32> <i32 0, i32 16, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison, i32 8, i32 poison, i32 10, i32 poison, i32 12, i32 poison, i32 14, i32 poison>
  %i.sa = shufflevector <4 x i16> %i.rm, <4 x i16> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sb = shufflevector <16 x i16> %i.rz, <16 x i16> %i.sa, <16 x i32> <i32 0, i32 1, i32 16, i32 poison, i32 4, i32 poison, i32 17, i32 poison, i32 8, i32 poison, i32 10, i32 poison, i32 12, i32 poison, i32 14, i32 poison>
  %i.sc = shufflevector <4 x i16> %i.rl, <4 x i16> poison, <16 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sd = shufflevector <16 x i16> %i.sb, <16 x i16> %i.sc, <16 x i32> <i32 0, i32 1, i32 2, i32 16, i32 4, i32 poison, i32 6, i32 poison, i32 8, i32 poison, i32 10, i32 poison, i32 12, i32 poison, i32 14, i32 poison>
  %i.se = insertelement <16 x i16> %i.sd, i16 %i.pl, i64 5
  %i.sf = insertelement <16 x i16> %i.se, i16 %i.pu, i64 7
  %i.sg = insertelement <16 x i16> %i.sf, i16 %i.qf, i64 9
  %i.sh = insertelement <16 x i16> %i.sg, i16 %i.qo, i64 11
  %i.si = insertelement <16 x i16> %i.sh, i16 %i.qz, i64 13
  %i.sj = insertelement <16 x i16> %i.si, i16 %i.ri, i64 15
  %i.sk = zext <16 x i16> %i.sj to <16 x i32>
  %i.sl = sub nsw <16 x i32> %i.rw, %i.sk
  %i.sm = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.sl, i1 true)
  %i.sn = add nsw i64 %i.oe, 4                    ; 2 uses
  %i.so = getelementptr inbounds [2 x i8], ptr %i.nq, i64 %i.sn
  %i.sp = add nsw i64 %i.of, 4                    ; 2 uses
  %i.sq = getelementptr inbounds [2 x i8], ptr %i.ob, i64 %i.sp
  %i.sr = add nsw i64 %i.no, 4                    ; 2 uses
  %i.ss = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.sr
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !12
  %i.su = getelementptr inbounds [2 x i8], ptr %i.st, i64 %i.oe
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !14
  %i.sw = add nsw i64 %i.ny, 4                    ; 2 uses
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.sw
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !12
  %i.sz = getelementptr [2 x i8], ptr %i.sy, i64 %i.of
  %i.ta = getelementptr i8, ptr %i.sz, i64 -2
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !14
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.oj, i64 %i.sn
  %i.td = getelementptr inbounds [2 x i8], ptr %i.oo, i64 %i.sp
  %i.te = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.sr
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !12
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.tf, i64 %i.oe
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !14
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.sw
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !12
  %i.tk = getelementptr [2 x i8], ptr %i.tj, i64 %i.of
  %i.tl = getelementptr i8, ptr %i.tk, i64 -2
  %i.tm = load i16, ptr %i.tl, align 2, !tbaa !14
  %i.tn = add nsw i64 %i.no, 5                    ; 2 uses
  %i.to = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.tn
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !12
  %i.tq = getelementptr inbounds [2 x i8], ptr %i.tp, i64 %i.oe
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !14
  %i.ts = add nsw i64 %i.ny, 5                    ; 2 uses
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.ts
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !12
  %i.tv = getelementptr [2 x i8], ptr %i.tu, i64 %i.of
  %i.tw = getelementptr i8, ptr %i.tv, i64 -2
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !14
  %i.ty = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.tn
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !12
  %i.ua = getelementptr inbounds [2 x i8], ptr %i.tz, i64 %i.oe
  %i.ub = load i16, ptr %i.ua, align 2, !tbaa !14
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.ts
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !12
  %i.ue = getelementptr [2 x i8], ptr %i.ud, i64 %i.of
  %i.uf = getelementptr i8, ptr %i.ue, i64 -2
  %i.ug = load i16, ptr %i.uf, align 2, !tbaa !14
  %i.uh = add nsw i64 %i.no, 6                    ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.uh
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !12
  %i.uk = getelementptr inbounds [2 x i8], ptr %i.uj, i64 %i.oe
  %i.ul = load i16, ptr %i.uk, align 2, !tbaa !14
  %i.um = add nsw i64 %i.ny, 6                    ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.um
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !12
  %i.up = getelementptr [2 x i8], ptr %i.uo, i64 %i.of
  %i.uq = getelementptr i8, ptr %i.up, i64 -2
  %i.ur = load i16, ptr %i.uq, align 2, !tbaa !14
  %i.us = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.uh
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !12
  %i.uu = getelementptr inbounds [2 x i8], ptr %i.ut, i64 %i.oe
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !14
  %i.uw = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.um
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !12
  %i.uy = getelementptr [2 x i8], ptr %i.ux, i64 %i.of
  %i.uz = getelementptr i8, ptr %i.uy, i64 -2
  %i.va = load i16, ptr %i.uz, align 2, !tbaa !14
  %i.vb = add nsw i64 %i.no, 7                    ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.nl, i64 %i.vb
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !12
  %i.ve = getelementptr inbounds [2 x i8], ptr %i.vd, i64 %i.oe
  %i.vf = load i16, ptr %i.ve, align 2, !tbaa !14
  %i.vg = add nsw i64 %i.ny, 7                    ; 2 uses
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %i.vg
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !12
  %i.vj = getelementptr [2 x i8], ptr %i.vi, i64 %i.of
  %i.vk = getelementptr i8, ptr %i.vj, i64 -2
  %i.vl = load i16, ptr %i.vk, align 2, !tbaa !14
  %i.vm = getelementptr inbounds [8 x i8], ptr %i.oh, i64 %i.vb
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !12
  %i.vo = getelementptr inbounds [2 x i8], ptr %i.vn, i64 %i.oe
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !14
  %i.vq = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.vg
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !12
  %i.vs = getelementptr [2 x i8], ptr %i.vr, i64 %i.of
  %i.vt = getelementptr i8, ptr %i.vs, i64 -2
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !14
  %i.vv = load <4 x i16>, ptr %i.so, align 2, !tbaa !14
  %i.vw = load <4 x i16>, ptr %i.sq, align 2, !tbaa !14
  %i.vx = load <4 x i16>, ptr %i.tc, align 2, !tbaa !14
  %i.vy = load <4 x i16>, ptr %i.td, align 2, !tbaa !14
  %i.vz = shufflevector <4 x i16> %i.vv, <4 x i16> %i.vx, <16 x i32> <i32 0, i32 poison, i32 4, i32 poison, i32 1, i32 poison, i32 5, i32 poison, i32 2, i32 poison, i32 6, i32 poison, i32 3, i32 poison, i32 7, i32 poison>
  %i.wa = insertelement <16 x i16> %i.vz, i16 %i.sv, i64 1
  %i.wb = insertelement <16 x i16> %i.wa, i16 %i.th, i64 3
  %i.wc = insertelement <16 x i16> %i.wb, i16 %i.tr, i64 5
  %i.wd = insertelement <16 x i16> %i.wc, i16 %i.ub, i64 7
  %i.we = insertelement <16 x i16> %i.wd, i16 %i.ul, i64 9
  %i.wf = insertelement <16 x i16> %i.we, i16 %i.uv, i64 11
  %i.wg = insertelement <16 x i16> %i.wf, i16 %i.vf, i64 13
  %i.wh = insertelement <16 x i16> %i.wg, i16 %i.vp, i64 15
  %i.wi = zext <16 x i16> %i.wh to <16 x i32>
  %i.wj = shufflevector <4 x i16> %i.vw, <4 x i16> %i.vy, <16 x i32> <i32 0, i32 poison, i32 4, i32 poison, i32 1, i32 poison, i32 5, i32 poison, i32 2, i32 poison, i32 6, i32 poison, i32 3, i32 poison, i32 7, i32 poison>
  %i.wk = insertelement <16 x i16> %i.wj, i16 %i.tb, i64 1
  %i.wl = insertelement <16 x i16> %i.wk, i16 %i.tm, i64 3
  %i.wm = insertelement <16 x i16> %i.wl, i16 %i.tx, i64 5
  %i.wn = insertelement <16 x i16> %i.wm, i16 %i.ug, i64 7
  %i.wo = insertelement <16 x i16> %i.wn, i16 %i.ur, i64 9
  %i.wp = insertelement <16 x i16> %i.wo, i16 %i.va, i64 11
  %i.wq = insertelement <16 x i16> %i.wp, i16 %i.vl, i64 13
  %i.wr = insertelement <16 x i16> %i.wq, i16 %i.vu, i64 15
  %i.ws = zext <16 x i16> %i.wr to <16 x i32>
  %i.wt = sub nsw <16 x i32> %i.wi, %i.ws
  %i.wu = call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.wt, i1 true)
  %narrow = add nuw nsw <16 x i32> %i.sm, %i.wu
  %rdx.op = zext nneg <16 x i32> %narrow to <16 x i64>
  %i.wv = call i64 @llvm.vector.reduce.add.v16i64(<16 x i64> %rdx.op)
  %op.rdx = add i64 %i.wv, %i.nj
  %i.ww = sitofp i64 %op.rdx to double
  %i.wx = fmul nnan double %i.ww, 1.562500e-02
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b, %.preheader
  %.0 = phi double [ %i.wx, %.preheader ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.wy = fcmp ugt double %i.n, %.0
  br i1 %i.wy, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i16 1, ptr %0, align 2, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_enc_mb_params(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef initializes((44, 60), (62, 66), (70, 84)) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %i.c = trunc i32 %i.b to i16                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 2 uses
  store i16 %i.c, ptr %i.d, align 2, !tbaa !14
  %i.e = add i16 %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  store i16 %i.e, ptr %i.f, align 2, !tbaa !14
  %i.g = load ptr, ptr @img, align 8, !tbaa !18   ; 18 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 15268 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !65
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.k = load i32, ptr %i.j, align 8, !tbaa !66
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i16 [ 0, %bb.a ], [ %i.m, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 78 ; 2 uses
  store i16 %i.n, ptr %i.o, align 2, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i16 0, ptr %i.p, align 8, !tbaa !14
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i16 -1, ptr %i.q, align 2, !tbaa !14
  %i.r = load ptr, ptr @input, align 8, !tbaa !18 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5100
  %i.t = load i32, ptr %i.s, align 4, !tbaa !69   ; 2 uses
  %i.u = trunc i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 4 uses
  store i16 %i.u, ptr %i.w, align 2, !tbaa !14
  %i.x = icmp ne i32 %i.t, 2
  %i.y = zext i1 %i.x to i16                      ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 62 ; 3 uses
  store i16 %i.y, ptr %i.z, align 2, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i16 1, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 4076
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !71
  %i.ad = trunc i32 %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  store i16 %i.ad, ptr %i.ae, align 8, !tbaa !14
  %.not136 = icmp eq i32 %2, 0                    ; 2 uses
  %i.af = zext i1 %.not136 to i16
  store i16 %i.af, ptr %i.v, align 4, !tbaa !14
  br i1 %.not136, label %bb.d, label %.thread171

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 4020
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 46 ; 3 uses
  %i.ai = load <4 x i32>, ptr %i.ag, align 4, !tbaa !4
  %i.aj = icmp ne <4 x i32> %i.ai, zeroinitializer ; 2 uses
  %i.ak = zext <4 x i1> %i.aj to <4 x i16>
  store <4 x i16> %i.ak, ptr %i.ah, align 2, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 4036
  %i.am = load i32, ptr %i.al, align 4, !tbaa !72
  %.not137 = icmp eq i32 %i.am, 0
  %spec.select = select i1 %.not137, i16 0, i16 %i.y ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  store i16 %spec.select, ptr %i.an, align 2, !tbaa !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4040
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !73
  %.not138 = icmp eq i32 %i.ap, 0
  %.ph165 = select i1 %.not138, i16 0, i16 %i.y
  %.ph165.fr = freeze i16 %.ph165                 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  store i16 %.ph165.fr, ptr %i.aq, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 4044
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74
  %.not139 = icmp eq i32 %i.as, 0
  %i.at = select i1 %.not139, i16 0, i16 %i.y     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 58 ; 3 uses
  store i16 %i.at, ptr %i.au, align 2, !tbaa !14
  %.not141 = trunc nuw i16 %spec.select to i1
  %i.av = extractelement <4 x i1> %i.aj, i64 3
  %or.cond180.not = select i1 %i.av, i1 true, i1 %.not141
  br i1 %or.cond180.not, label %bb.f, label %bb.e

.thread171:                                       ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 46 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.aw, i8 0, i64 14, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not142 = icmp eq i16 %.ph165.fr, 0
  %spec.select181 = select i1 %.not142, i16 %i.at, i16 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread171, %bb.d
  %i.ba = phi ptr [ %i.au, %bb.d ], [ %i.az, %.thread171 ], [ %i.au, %bb.e ] ; 2 uses
  %i.bb = phi ptr [ %i.an, %bb.d ], [ %i.ax, %.thread171 ], [ %i.an, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %i.ah, %bb.d ], [ %i.aw, %.thread171 ], [ %i.ah, %bb.e ] ; 2 uses
  %i.bd = phi ptr [ %i.aq, %bb.d ], [ %i.ay, %.thread171 ], [ %i.aq, %bb.e ] ; 2 uses
  %i.be = phi i16 [ 1, %bb.d ], [ 0, %.thread171 ], [ %spec.select181, %bb.e ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 50 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  store i16 %i.be, ptr %i.bi, align 4, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !75 ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 4
  %i.bm = zext i1 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  store i16 %i.bm, ptr %i.bn, align 4, !tbaa !14
  %i.bo = icmp eq i32 %i.bk, 3                    ; 2 uses
  %i.bp = load i32, ptr @si_frame_indicator, align 4
  %i.bq = icmp ne i32 %i.bp, 0
  %or.cond = select i1 %i.bo, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  store i16 0, ptr %i.w, align 2, !tbaa !14
  store i16 0, ptr %i.ae, align 8, !tbaa !14
  store i16 0, ptr %i.v, align 4, !tbaa !14
  store i16 0, ptr %i.bc, align 2, !tbaa !14
  store i16 0, ptr %i.bg, align 8, !tbaa !14
  store i16 0, ptr %i.bh, align 2, !tbaa !14
  store i16 0, ptr %i.bf, align 4, !tbaa !14
  store i16 0, ptr %i.bb, align 2, !tbaa !14
  store i16 0, ptr %i.bd, align 4, !tbaa !14
  store i16 0, ptr %i.ba, align 2, !tbaa !14
  store i16 0, ptr %i.bi, align 4, !tbaa !14
  store i16 0, ptr %i.bn, align 4, !tbaa !14
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !52 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !54 ; 3 uses
  %i.bv = load ptr, ptr @lrec, align 8, !tbaa !76
  %i.bw = sext i32 %i.bu to i64
  %i.bx = sext i32 %i.bs to i64
  %i.by = add i32 %i.bu, 15
  %i.bz = add i32 %i.bs, 15
  %i.ca = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %i.by)
  %smax = sext i32 %i.ca to i64
  %i.cb = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 %i.bz)
  %smax216 = sext i32 %i.cb to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.g
  %indvars.iv14.i = phi i64 [ %i.bx, %bb.g ], [ %indvars.iv.next15.i, %bb.k ] ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %indvars.iv14.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !78
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.i, %smax
  br i1 %exitcond.not, label %bb.k, label %bb.j, !llvm.loop !79

bb.j:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %i.bw, %bb.h ], [ %indvars.iv.next.i, %bb.i ] ; 3 uses
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !4
  %.not.i = icmp eq i32 %i.cf, -16
  br i1 %.not.i, label %bb.i, label %.sink.split

bb.k:                                             ; preds = %bb.i
  %indvars.iv.next15.i = add nsw i64 %indvars.iv14.i, 1
  %exitcond217.not = icmp eq i64 %indvars.iv14.i, %smax216
  br i1 %exitcond217.not, label %.sink.split, label %bb.h, !llvm.loop !80

.sink.split:                                      ; preds = %bb.k, %bb.j
  %i.cg = phi <2 x i16> [ <i16 1, i16 0>, %bb.j ], [ <i16 0, i16 1>, %bb.k ]
  store <2 x i16> %i.cg, ptr %i.z, align 2, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.f
  %i.ch = load i32, ptr @sp2_frame_indicator, align 4
  %i.ci = icmp ne i32 %i.ch, 0
  %or.cond3 = select i1 %i.bo, i1 %i.ci, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 180
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !52 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !54 ; 3 uses
  %i.cn = load ptr, ptr @lrec, align 8, !tbaa !76
  %i.co = sext i32 %i.cm to i64
  %i.cp = sext i32 %i.ck to i64
  %i.cq = add i32 %i.cm, 15
  %i.cr = add i32 %i.ck, 15
  %i.cs = tail call i32 @llvm.smax.i32(i32 %i.cm, i32 %i.cq)
  %smax218 = sext i32 %i.cs to i64
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cr)
  %smax220 = sext i32 %i.ct to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.m
  %indvars.iv14.i153 = phi i64 [ %i.cp, %bb.m ], [ %indvars.iv.next15.i158, %bb.q ] ; 3 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %indvars.iv14.i153
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %indvars.iv.next.i157 = add nsw i64 %indvars.iv.i154, 1
  %exitcond219.not = icmp eq i64 %indvars.iv.i154, %smax218
  br i1 %exitcond219.not, label %bb.q, label %bb.p, !llvm.loop !79

bb.p:                                             ; preds = %bb.o, %bb.n
  %indvars.iv.i154 = phi i64 [ %i.co, %bb.n ], [ %indvars.iv.next.i157, %bb.o ] ; 3 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv.i154
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %.not.i155 = icmp eq i32 %i.cx, -16
  br i1 %.not.i155, label %bb.o, label %bb.r

bb.q:                                             ; preds = %bb.o
  %indvars.iv.next15.i158 = add nsw i64 %indvars.iv14.i153, 1
  %exitcond221.not = icmp eq i64 %indvars.iv14.i153, %smax220
  br i1 %exitcond221.not, label %check_for_SI16.exit159, label %bb.n, !llvm.loop !80

check_for_SI16.exit159:                           ; preds = %bb.q
  store i16 0, ptr %i.w, align 2, !tbaa !14
  store i16 0, ptr %i.ae, align 8, !tbaa !14
  store i16 0, ptr %i.v, align 4, !tbaa !14
  store i16 0, ptr %i.bc, align 2, !tbaa !14
  store i16 0, ptr %i.bg, align 8, !tbaa !14
  store i16 0, ptr %i.bh, align 2, !tbaa !14
  store i16 0, ptr %i.bf, align 4, !tbaa !14
  store i16 0, ptr %i.bb, align 2, !tbaa !14
  store i16 0, ptr %i.bd, align 4, !tbaa !14
  store i16 0, ptr %i.ba, align 2, !tbaa !14
  store i16 0, ptr %i.bi, align 4, !tbaa !14
  store i16 0, ptr %i.bn, align 4, !tbaa !14
  store i16 0, ptr %i.z, align 2, !tbaa !14
  br label %.sink.split272

bb.r:                                             ; preds = %bb.p
  store i16 0, ptr %i.w, align 2, !tbaa !14
  store i16 0, ptr %i.ae, align 8, !tbaa !14
  store i16 0, ptr %i.v, align 4, !tbaa !14
  br label %.sink.split272

.sink.split272:                                   ; preds = %check_for_SI16.exit159, %bb.r
  %.sink273 = phi i16 [ 0, %bb.r ], [ 1, %check_for_SI16.exit159 ]
  store i16 %.sink273, ptr %i.aa, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %.sink.split272, %bb.l
  %.not145 = icmp eq i32 %3, 0
  br i1 %.not145, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 15360
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !81
  %.not146 = icmp eq i32 %i.cz, 0
  br i1 %.not146, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 15480
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !82
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 36 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !85
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !86
  store double %i.di, ptr %1, align 8, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 15488
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !88
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !89
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.dg
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !83 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !86
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.dp, ptr %i.dq, align 8, !tbaa !86
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !86
end_hunk_0
