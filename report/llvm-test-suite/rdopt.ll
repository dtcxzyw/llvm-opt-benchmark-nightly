inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 171
loop-unroll.NumUnrolled: 171
begin_hunk_0_@set_mbaff_parameters:bb.a
  br label %.lr.ph78.preheader

.preheader.preheader:                             ; preds = %.preheader63
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rh, i64 1696
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !44
  %i.tp = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.to, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !45
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.se
  %i.tu = load i32, ptr %i.tt, align 1
  store i32 %i.tu, ptr %i.tm, align 4
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rh, i64 1684
  %i.tw = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !44
  %i.ty = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !45
  %i.ud = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr %i.uc, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 1
  store i32 %i.ug, ptr %i.tv, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rh, i64 1700
  %i.ui = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !44
  %i.ul = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [8 x i8], ptr %i.uk, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !45
  %i.uq = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.up, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 1
  store i32 %i.ut, ptr %i.uh, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.rh, i64 1688
  %i.uv = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !44
  %i.ux = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [8 x i8], ptr %i.uw, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !45
  %i.vc = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.vb, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 1
  store i32 %i.vf, ptr %i.uu, align 4
  %i.vg = getelementptr inbounds nuw i8, ptr %i.rh, i64 1704
  %i.vh = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !44
  %i.vk = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr [8 x i8], ptr %i.vj, i64 %i.vl
  %i.vn = getelementptr i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !45
  %i.vp = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %i.vo, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 1
  store i32 %i.vs, ptr %i.vg, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %i.rh, i64 1692
  %i.vu = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !44
  %i.vw = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [8 x i8], ptr %i.vv, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !45
  %i.wb = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.wa, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 1
  store i32 %i.we, ptr %i.vt, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rh, i64 1708
  %i.wg = load ptr, ptr %i.ro, align 8, !tbaa !135
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !44
  %i.wj = load i32, ptr %i.rs, align 4, !tbaa !56
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [8 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = getelementptr i8, ptr %i.wl, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !45
  %i.wo = load i32, ptr %i.rx, align 8, !tbaa !57
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds i8, ptr %i.wn, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 1
  store i32 %i.wr, ptr %i.wf, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.fz, i64 480
  %i.wt = load i16, ptr %i.ws, align 8, !tbaa !119
  %i.wu = load ptr, ptr @rdopt, align 8, !tbaa !16 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 1564
  store i16 %i.wt, ptr %i.wv, align 4, !tbaa !280
  %.pre107 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.lr.ph78.preheader

.lr.ph78.preheader:                               ; preds = %.preheader.preheader, %.preheader61.preheader
  %i.ww = phi ptr [ %i.rr, %.preheader61.preheader ], [ %.pre107, %.preheader.preheader ] ; 2 uses
  %i.wx = phi ptr [ %i.rh, %.preheader61.preheader ], [ %i.wu, %.preheader.preheader ] ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 1608
  %i.wz = getelementptr inbounds nuw i8, ptr %i.fz, i64 332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wy, ptr noundef nonnull align 4 dereferenceable(16) %i.wz, i64 16, i1 false)
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 1624
  %i.xb = getelementptr inbounds nuw i8, ptr %i.fz, i64 348
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xa, ptr noundef nonnull align 4 dereferenceable(16) %i.xb, i64 16, i1 false)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 172
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !56
  %i.xe = sext i32 %i.xd to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %indvars.iv102 = phi i64 [ %i.xe, %.lr.ph78.preheader ], [ %indvars.iv.next103, %.lr.ph78 ] ; 4 uses
  %i.xf = phi ptr [ %i.ww, %.lr.ph78.preheader ], [ %i.xt, %.lr.ph78 ]
  %i.xg = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 1600
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !261
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.xi, i64 %indvars.iv102
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !45
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 168
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !57
  %i.xn = sext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds i8, ptr %i.xk, i64 %i.xn
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv102
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !45
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 %i.xn
  %i.xs = load i32, ptr %i.xr, align 1
  store i32 %i.xs, ptr %i.xo, align 1
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1
  %i.xt = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 172
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !56
  %i.xw = add nsw i32 %i.xv, 3
  %i.xx = sext i32 %i.xw to i64
  %i.xy = icmp slt i64 %indvars.iv102, %i.xx
  br i1 %i.xy, label %.lr.ph78, label %._crit_edge, !llvm.loop !281

._crit_edge:                                      ; preds = %.lr.ph78
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @store_coding_state_cs_cm() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cs_cm, align 8, !tbaa !16
  tail call void @store_coding_state(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reset_coding_state_cs_cm() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @cs_cm, align 8, !tbaa !16
  tail call void @reset_coding_state(ptr noundef %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @assign_enc_picture_params(i32 noundef %0, i8 noundef signext %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  switch i32 %0, label %.preheader [
    i32 1, label %bb.d
    i32 2, label %.preheader307
  ]

.preheader307:                                    ; preds = %bb.a
  %i.a = shl nsw i32 %2, 1                        ; 2 uses
  %i.b = icmp eq i8 %1, 1
  %i.c = sext i32 %4 to i64                       ; 8 uses
  %i.d = trunc i32 %4 to i8                       ; 4 uses
  %i.e = sext i32 %3 to i64                       ; 12 uses
  %.not285 = icmp eq i32 %6, 0                    ; 8 uses
  %i.f = icmp eq i8 %1, 0                         ; 4 uses
  %i.g = trunc i32 %5 to i8                       ; 8 uses
  %i.h = icmp sgt i32 %5, -1                      ; 8 uses
  %i.i = zext nneg i32 %5 to i64                  ; 16 uses
  %i.j = sext i32 %i.a to i64
  br label %bb.o

.preheader:                                       ; preds = %bb.a
  %i.k = shl nsw i32 %2, 1                        ; 11 uses
  %i.l = icmp eq i8 %1, 1
  %i.m = sext i32 %4 to i64                       ; 4 uses
  %i.n = sext i32 %0 to i64                       ; 6 uses
  %i.o = trunc i32 %4 to i8                       ; 2 uses
  %i.p = sext i32 %3 to i64                       ; 6 uses
  %.not = icmp eq i32 %6, 0                       ; 3 uses
  %i.q = icmp eq i8 %1, 0                         ; 2 uses
  %i.r = trunc i32 %5 to i8                       ; 4 uses
  %i.s = icmp sgt i32 %5, -1                      ; 4 uses
  %i.t = zext nneg i32 %5 to i64                  ; 8 uses
  br i1 %i.l, label %.preheader.split.us, label %.split330.preheader

.split330.preheader:                              ; preds = %.preheader
  %i.u = sext i32 %i.k to i64                     ; 3 uses
  %.pre435 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.v = or disjoint i32 %i.k, 1
  %i.w = or disjoint i64 %i.u, 1                  ; 2 uses
  br label %.split330

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not, label %.split330.us.us.us.preheader, label %.split330.us.us.preheader

.split330.us.us.preheader:                        ; preds = %.preheader.split.us
  %i.x = sext i32 %i.k to i64                     ; 2 uses
  %i.y = or disjoint i32 %i.k, 1
  br label %.split330.us.us

.split330.us.us.us.preheader:                     ; preds = %.preheader.split.us
  %i.z = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 172
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  %i.ac = sext i32 %i.ab to i64                   ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 168
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !57
  %i.af = add i32 %i.k, %i.ae
  %i.ag = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 6488
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ac
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.am = sext i32 %i.af to i64                   ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 %i.am
  store i8 -1, ptr %i.an, align 1, !tbaa !46
  %i.ao = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 6496
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !141
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !142
  %i.as = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ac
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !144
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.am
  store i64 -1, ptr %i.au, align 8, !tbaa !147
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 6512
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !163
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !62
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.ac
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.am
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bb, align 2, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  store i16 0, ptr %i.bc, align 2, !tbaa !68
  %i.bd = load ptr, ptr @img, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !57
  %i.bg = or disjoint i32 %i.k, 1                 ; 4 uses
  %i.bh = add i32 %i.bg, %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 6488
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !135
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !44
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ac
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45
  %i.bn = sext i32 %i.bh to i64                   ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  store i8 -1, ptr %i.bo, align 1, !tbaa !46
  %i.bp = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 6496
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !141
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !142
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.ac
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !144
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bn
  store i64 -1, ptr %i.bv, align 8, !tbaa !147
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 6512
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !163
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.ac
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bn
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.cc, align 2, !tbaa !68
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  store i16 0, ptr %i.cd, align 2, !tbaa !68
  %i.ce = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 172
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !56
  %i.ch = add nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64                   ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 168
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !57
  %i.cl = add i32 %i.k, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 6488
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !135
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.ci
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cr = sext i32 %i.cl to i64                   ; 3 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 %i.cr
  store i8 -1, ptr %i.cs, align 1, !tbaa !46
  %i.ct = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 6496
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !141
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !142
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.ci
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !144
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.cr
  store i64 -1, ptr %i.cz, align 8, !tbaa !147
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 6512
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !163
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !62
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.ci
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.cr
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.dg, align 2, !tbaa !68
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  store i16 0, ptr %i.dh, align 2, !tbaa !68
  %i.di = load ptr, ptr @img, align 8, !tbaa !16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 168
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !57
  %i.dl = add i32 %i.bg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ct, i64 6488
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !135
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.ci
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45
  %i.dr = sext i32 %i.dl to i64                   ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.dr
  store i8 -1, ptr %i.ds, align 1, !tbaa !46
  %i.dt = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 6496
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !141
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !142
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.ci
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !144
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.dr
  store i64 -1, ptr %i.dz, align 8, !tbaa !147
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 6512
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !163
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !62
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ci
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.dr
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.eg, align 2, !tbaa !68
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store i16 0, ptr %i.eh, align 2, !tbaa !68
  %i.ei = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 172
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !56
  %i.el = add nsw i32 %i.ek, 2
  %i.em = sext i32 %i.el to i64                   ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 168
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !57
  %i.ep = add i32 %i.k, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 6488
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !135
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !44
  %i.et = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.em
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  %i.ev = sext i32 %i.ep to i64                   ; 3 uses
  %i.ew = getelementptr inbounds i8, ptr %i.eu, i64 %i.ev
  store i8 -1, ptr %i.ew, align 1, !tbaa !46
  %i.ex = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 6496
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !141
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !142
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.em
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !144
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ev
  store i64 -1, ptr %i.fd, align 8, !tbaa !147
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 6512
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !163
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !62
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.em
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.ev
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.fk, align 2, !tbaa !68
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  store i16 0, ptr %i.fl, align 2, !tbaa !68
  %i.fm = load ptr, ptr @img, align 8, !tbaa !16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 168
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !57
  %i.fp = add i32 %i.bg, %i.fo
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ex, i64 6488
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !135
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !44
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fs, i64 %i.em
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !45
  %i.fv = sext i32 %i.fp to i64                   ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 %i.fv
  store i8 -1, ptr %i.fw, align 1, !tbaa !46
  %i.fx = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 6496
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !141
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !142
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.em
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !144
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.fv
  store i64 -1, ptr %i.gd, align 8, !tbaa !147
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fx, i64 6512
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !163
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.em
end_hunk_0
begin_hunk_1_@assign_enc_picture_params:bb.a
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !144
  %i.axr = getelementptr inbounds [8 x i8], ptr %i.axq, i64 %i.avx
  store i64 %i.axk, ptr %i.axr, align 8, !tbaa !147
  %i.axs = load i16, ptr %i.axg, align 2, !tbaa !68
  %i.axt = getelementptr inbounds nuw i8, ptr %.pre425.a, i64 6512
  %i.axu = load ptr, ptr %i.axt, align 8, !tbaa !163
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !62
  %i.axx = getelementptr inbounds [8 x i8], ptr %i.axw, i64 %i.asy
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !64
  %i.axz = getelementptr inbounds [8 x i8], ptr %i.axy, i64 %i.avx
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !66 ; 2 uses
  store i16 %i.axs, ptr %i.aya, align 2, !tbaa !68
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axg, i64 2
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !68
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.aya, i64 2
  store i16 %i.ayc, ptr %i.ayd, align 2, !tbaa !68
  br label %.thread.us.2

.thread.us.2:                                     ; preds = %.thread.us.1..thread.us.2_crit_edge, %bb.q, %.thread293.us.1
  %i.aye = phi ptr [ %i.avz, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre425.a, %bb.q ], [ %.pre425.a, %.thread293.us.1 ]
  %i.ayf = phi ptr [ %.pre423.a, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre424.a, %bb.q ], [ %.pre424.a, %.thread293.us.1 ]
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 168
  %i.ayh = load i32, ptr %i.ayg, align 8, !tbaa !57
  %i.ayi = add nsw i32 %i.ayh, 2
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.aye, i64 6488
  %i.ayk = load ptr, ptr %i.ayj, align 8, !tbaa !135
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !44
  %i.aym = getelementptr inbounds [8 x i8], ptr %i.ayl, i64 %i.asy
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !45
  %i.ayo = sext i32 %i.ayi to i64                 ; 6 uses
  %i.ayp = getelementptr inbounds i8, ptr %i.ayn, i64 %i.ayo
  store i8 -1, ptr %i.ayp, align 1, !tbaa !46
  %i.ayq = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 6496
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !141
  %i.ayt = load ptr, ptr %i.ays, align 8, !tbaa !142
  %i.ayu = getelementptr inbounds [8 x i8], ptr %i.ayt, i64 %i.asy
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !144
  %i.ayw = getelementptr inbounds [8 x i8], ptr %i.ayv, i64 %i.ayo
  store i64 -1, ptr %i.ayw, align 8, !tbaa !147
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayq, i64 6512
  %i.ayy = load ptr, ptr %i.ayx, align 8, !tbaa !163
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !62
  %i.aza = getelementptr inbounds [8 x i8], ptr %i.ayz, i64 %i.asy
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !64
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.azb, i64 %i.ayo
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.azd, align 2, !tbaa !68
  %i.aze = getelementptr inbounds nuw i8, ptr %i.azd, i64 2
  store i16 0, ptr %i.aze, align 2, !tbaa !68
  br i1 %.not285, label %.thread.us.2..thread.us.3_crit_edge, label %.thread293.us.2

.thread.us.2..thread.us.3_crit_edge:              ; preds = %.thread.us.2
  %.pre426.a = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.3

.thread293.us.2:                                  ; preds = %.thread.us.2
  %i.azf = getelementptr inbounds nuw i8, ptr %i.ayq, i64 6488
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !135
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 8
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !44
  %i.azj = getelementptr inbounds [8 x i8], ptr %i.azi, i64 %i.asy
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !45
  %i.azl = getelementptr inbounds i8, ptr %i.azk, i64 %i.ayo
  store i8 %i.g, ptr %i.azl, align 1, !tbaa !46
  %.pre427 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre428 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.r, label %.thread.us.3

bb.r:                                             ; preds = %.thread293.us.2
  %i.azm = getelementptr inbounds nuw i8, ptr %.pre427, i64 14384
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !55
  %i.azo = getelementptr inbounds [8 x i8], ptr %i.azn, i64 %i.asx
  %i.azp = load ptr, ptr %i.azo, align 8, !tbaa !58
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 16
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !60
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 8
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !62
  %i.azu = getelementptr inbounds nuw [8 x i8], ptr %i.azt, i64 %i.i
  %i.azv = load ptr, ptr %i.azu, align 8, !tbaa !64
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !66 ; 2 uses
  %i.azy = getelementptr [264 x i8], ptr %.pre428, i64 %i.e
  %i.azz = getelementptr i8, ptr %i.azy, i64 288
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.azz, i64 %i.i
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !147
  %i.bac = getelementptr inbounds nuw i8, ptr %.pre428, i64 6496
  %i.bad = load ptr, ptr %i.bac, align 8, !tbaa !141
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 8
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !142
  %i.bag = getelementptr inbounds [8 x i8], ptr %i.baf, i64 %i.asy
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !144
  %i.bai = getelementptr inbounds [8 x i8], ptr %i.bah, i64 %i.ayo
  store i64 %i.bab, ptr %i.bai, align 8, !tbaa !147
  %i.baj = load i16, ptr %i.azx, align 2, !tbaa !68
  %i.bak = getelementptr inbounds nuw i8, ptr %.pre428, i64 6512
  %i.bal = load ptr, ptr %i.bak, align 8, !tbaa !163
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 8
  %i.ban = load ptr, ptr %i.bam, align 8, !tbaa !62
  %i.bao = getelementptr inbounds [8 x i8], ptr %i.ban, i64 %i.asy
  %i.bap = load ptr, ptr %i.bao, align 8, !tbaa !64
  %i.baq = getelementptr inbounds [8 x i8], ptr %i.bap, i64 %i.ayo
  %i.bar = load ptr, ptr %i.baq, align 8, !tbaa !66 ; 2 uses
  store i16 %i.baj, ptr %i.bar, align 2, !tbaa !68
  %i.bas = getelementptr inbounds nuw i8, ptr %i.azx, i64 2
  %i.bat = load i16, ptr %i.bas, align 2, !tbaa !68
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bar, i64 2
  store i16 %i.bat, ptr %i.bau, align 2, !tbaa !68
  br label %.thread.us.3

.thread.us.3:                                     ; preds = %.thread.us.2..thread.us.3_crit_edge, %bb.r, %.thread293.us.2
  %i.bav = phi ptr [ %i.ayq, %.thread.us.2..thread.us.3_crit_edge ], [ %.pre428, %bb.r ], [ %.pre428, %.thread293.us.2 ]
  %i.baw = phi ptr [ %.pre426.a, %.thread.us.2..thread.us.3_crit_edge ], [ %.pre427, %bb.r ], [ %.pre427, %.thread293.us.2 ]
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 168
  %i.bay = load i32, ptr %i.bax, align 8, !tbaa !57
  %i.baz = add nsw i32 %i.bay, 3
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bav, i64 6488
  %i.bbb = load ptr, ptr %i.bba, align 8, !tbaa !135
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !44
  %i.bbd = getelementptr inbounds [8 x i8], ptr %i.bbc, i64 %i.asy
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !45
  %i.bbf = sext i32 %i.baz to i64                 ; 6 uses
  %i.bbg = getelementptr inbounds i8, ptr %i.bbe, i64 %i.bbf
  store i8 -1, ptr %i.bbg, align 1, !tbaa !46
  %i.bbh = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbh, i64 6496
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !141
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !142
  %i.bbl = getelementptr inbounds [8 x i8], ptr %i.bbk, i64 %i.asy
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !144
  %i.bbn = getelementptr inbounds [8 x i8], ptr %i.bbm, i64 %i.bbf
  store i64 -1, ptr %i.bbn, align 8, !tbaa !147
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbh, i64 6512
  %i.bbp = load ptr, ptr %i.bbo, align 8, !tbaa !163
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !62
  %i.bbr = getelementptr inbounds [8 x i8], ptr %i.bbq, i64 %i.asy
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !64
  %i.bbt = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bbf
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bbu, align 2, !tbaa !68
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 2
  store i16 0, ptr %i.bbv, align 2, !tbaa !68
  br i1 %.not285, label %.split311.us, label %.thread293.us.3

.thread293.us.3:                                  ; preds = %.thread.us.3
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbh, i64 6488
  %i.bbx = load ptr, ptr %i.bbw, align 8, !tbaa !135
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbx, i64 8
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !44
  %i.bca = getelementptr inbounds [8 x i8], ptr %i.bbz, i64 %i.asy
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !45
  %i.bcc = getelementptr inbounds i8, ptr %i.bcb, i64 %i.bbf
  store i8 %i.g, ptr %i.bcc, align 1, !tbaa !46
  br i1 %i.h, label %bb.s, label %.split311.us

bb.s:                                             ; preds = %.thread293.us.3
  %i.bcd = load ptr, ptr @img, align 8, !tbaa !16
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 14384
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !55
  %i.bcg = getelementptr inbounds [8 x i8], ptr %i.bcf, i64 %i.asx
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !58
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bch, i64 24
  %i.bcj = load ptr, ptr %i.bci, align 8, !tbaa !60
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcj, i64 8
  %i.bcl = load ptr, ptr %i.bck, align 8, !tbaa !62
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %i.bcl, i64 %i.i
  %i.bcn = load ptr, ptr %i.bcm, align 8, !tbaa !64
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 16
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !66 ; 2 uses
  %i.bcq = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bcr = getelementptr [264 x i8], ptr %i.bcq, i64 %i.e
  %i.bcs = getelementptr i8, ptr %i.bcr, i64 288
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %i.bcs, i64 %i.i
  %i.bcu = load i64, ptr %i.bct, align 8, !tbaa !147
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcq, i64 6496
  %i.bcw = load ptr, ptr %i.bcv, align 8, !tbaa !141
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 8
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !142
  %i.bcz = getelementptr inbounds [8 x i8], ptr %i.bcy, i64 %i.asy
  %i.bda = load ptr, ptr %i.bcz, align 8, !tbaa !144
  %i.bdb = getelementptr inbounds [8 x i8], ptr %i.bda, i64 %i.bbf
  store i64 %i.bcu, ptr %i.bdb, align 8, !tbaa !147
  %i.bdc = load i16, ptr %i.bcp, align 2, !tbaa !68
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bcq, i64 6512
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !163
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 8
  %i.bdg = load ptr, ptr %i.bdf, align 8, !tbaa !62
  %i.bdh = getelementptr inbounds [8 x i8], ptr %i.bdg, i64 %i.asy
  %i.bdi = load ptr, ptr %i.bdh, align 8, !tbaa !64
  %i.bdj = getelementptr inbounds [8 x i8], ptr %i.bdi, i64 %i.bbf
  %i.bdk = load ptr, ptr %i.bdj, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bdc, ptr %i.bdk, align 2, !tbaa !68
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bcp, i64 2
  %i.bdm = load i16, ptr %i.bdl, align 2, !tbaa !68
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdk, i64 2
  store i16 %i.bdm, ptr %i.bdn, align 2, !tbaa !68
  br label %.split311.us

.split:                                           ; preds = %bb.o
  %.pre419 = load ptr, ptr @enc_picture, align 8, !tbaa !81
  %i.bdo = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bdo, i64 168
  %i.bdq = load i32, ptr %i.bdp, align 8, !tbaa !57
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdo, i64 14384
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !55
  %i.bdt = getelementptr inbounds [8 x i8], ptr %i.bds, i64 %i.asx
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !58
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !60
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !62
  %i.bdx = getelementptr inbounds [8 x i8], ptr %i.bdw, i64 %i.c
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !64
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdy, i64 16
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !66 ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %.pre419, i64 6488
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !135
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !44
  %i.bee = getelementptr inbounds [8 x i8], ptr %i.bed, i64 %i.asy
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !45
  %i.beg = sext i32 %i.bdq to i64                 ; 8 uses
  %i.beh = getelementptr inbounds i8, ptr %i.bef, i64 %i.beg
  store i8 %i.d, ptr %i.beh, align 1, !tbaa !46
  %i.bei = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bei, i64 24
  %i.bek = getelementptr inbounds [264 x i8], ptr %i.bej, i64 %i.e
  %i.bel = getelementptr inbounds [8 x i8], ptr %i.bek, i64 %i.c
  %i.bem = load i64, ptr %i.bel, align 8, !tbaa !147
  %i.ben = getelementptr inbounds nuw i8, ptr %i.bei, i64 6496
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !141
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !142
  %i.beq = getelementptr inbounds [8 x i8], ptr %i.bep, i64 %i.asy
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !144
  %i.bes = getelementptr inbounds [8 x i8], ptr %i.ber, i64 %i.beg
  store i64 %i.bem, ptr %i.bes, align 8, !tbaa !147
  %i.bet = load i16, ptr %i.bea, align 2, !tbaa !68
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bei, i64 6512
  %i.bev = load ptr, ptr %i.beu, align 8, !tbaa !163
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !62
  %i.bex = getelementptr inbounds [8 x i8], ptr %i.bew, i64 %i.asy
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !64
  %i.bez = getelementptr inbounds [8 x i8], ptr %i.bey, i64 %i.beg
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bet, ptr %i.bfa, align 2, !tbaa !68
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bea, i64 2
  %i.bfc = load i16, ptr %i.bfb, align 2, !tbaa !68
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bfa, i64 2
  store i16 %i.bfc, ptr %i.bfd, align 2, !tbaa !68
  br i1 %.not285, label %.split.1, label %bb.t

bb.t:                                             ; preds = %.split
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.bei, i64 6488
  %i.bff = load ptr, ptr %i.bfe, align 8, !tbaa !135
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8
  %i.bfh = load ptr, ptr %i.bfg, align 8, !tbaa !44
  %i.bfi = getelementptr inbounds [8 x i8], ptr %i.bfh, i64 %i.asy
  %i.bfj = load ptr, ptr %i.bfi, align 8, !tbaa !45
  %i.bfk = getelementptr inbounds i8, ptr %i.bfj, i64 %i.beg ; 2 uses
  br i1 %i.f, label %bb.u, label %.thread293

bb.u:                                             ; preds = %bb.t
  store i8 -1, ptr %i.bfk, align 1, !tbaa !46
  %i.bfl = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 6496
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !141
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !142
  %i.bfq = getelementptr inbounds [8 x i8], ptr %i.bfp, i64 %i.asy
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !144
  %i.bfs = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.beg
  store i64 -1, ptr %i.bfs, align 8, !tbaa !147
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfl, i64 6512
  %i.bfu = load ptr, ptr %i.bft, align 8, !tbaa !163
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 8
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !62
  %i.bfx = getelementptr inbounds [8 x i8], ptr %i.bfw, i64 %i.asy
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !64
  %i.bfz = getelementptr inbounds [8 x i8], ptr %i.bfy, i64 %i.beg
  %i.bga = load ptr, ptr %i.bfz, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bga, align 2, !tbaa !68
  br label %.sink.split

.thread293:                                       ; preds = %bb.t
  store i8 %i.g, ptr %i.bfk, align 1, !tbaa !46
  %.pre = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.v, label %.split.1

bb.v:                                             ; preds = %.thread293
  %i.bgb = load ptr, ptr @img, align 8, !tbaa !16
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bgb, i64 14384
  %i.bgd = load ptr, ptr %i.bgc, align 8, !tbaa !55
  %i.bge = getelementptr inbounds [8 x i8], ptr %i.bgd, i64 %i.asx
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !58
  %i.bgg = load ptr, ptr %i.bgf, align 8, !tbaa !60
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bgg, i64 8
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !62
  %i.bgj = getelementptr inbounds nuw [8 x i8], ptr %i.bgi, i64 %i.i
  %i.bgk = load ptr, ptr %i.bgj, align 8, !tbaa !64
  %i.bgl = getelementptr inbounds nuw i8, ptr %i.bgk, i64 16
  %i.bgm = load ptr, ptr %i.bgl, align 8, !tbaa !66 ; 2 uses
  %i.bgn = getelementptr [264 x i8], ptr %.pre, i64 %i.e
  %i.bgo = getelementptr i8, ptr %i.bgn, i64 288
  %i.bgp = getelementptr inbounds nuw [8 x i8], ptr %i.bgo, i64 %i.i
  %i.bgq = load i64, ptr %i.bgp, align 8, !tbaa !147
  %i.bgr = getelementptr inbounds nuw i8, ptr %.pre, i64 6496
  %i.bgs = load ptr, ptr %i.bgr, align 8, !tbaa !141
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bgs, i64 8
  %i.bgu = load ptr, ptr %i.bgt, align 8, !tbaa !142
  %i.bgv = getelementptr inbounds [8 x i8], ptr %i.bgu, i64 %i.asy
  %i.bgw = load ptr, ptr %i.bgv, align 8, !tbaa !144
  %i.bgx = getelementptr inbounds [8 x i8], ptr %i.bgw, i64 %i.beg
  store i64 %i.bgq, ptr %i.bgx, align 8, !tbaa !147
  %i.bgy = load i16, ptr %i.bgm, align 2, !tbaa !68
  %i.bgz = getelementptr inbounds nuw i8, ptr %.pre, i64 6512
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !163
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 8
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !62
  %i.bhd = getelementptr inbounds [8 x i8], ptr %i.bhc, i64 %i.asy
  %i.bhe = load ptr, ptr %i.bhd, align 8, !tbaa !64
  %i.bhf = getelementptr inbounds [8 x i8], ptr %i.bhe, i64 %i.beg
  %i.bhg = load ptr, ptr %i.bhf, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bgy, ptr %i.bhg, align 2, !tbaa !68
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bgm, i64 2
  %i.bhi = load i16, ptr %i.bhh, align 2, !tbaa !68
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.v
  %.sink463.a = phi ptr [ %i.bhg, %bb.v ], [ %i.bga, %bb.u ]
  %.sink = phi i16 [ %i.bhi, %bb.v ], [ 0, %bb.u ]
  %.ph = phi ptr [ %.pre, %bb.v ], [ %i.bfl, %bb.u ]
  %i.bhj = getelementptr inbounds nuw i8, ptr %.sink463.a, i64 2
  store i16 %.sink, ptr %i.bhj, align 2, !tbaa !68
  br label %.split.1

.split.1:                                         ; preds = %.sink.split, %.split, %.thread293
  %7 = phi ptr [ %i.bei, %.split ], [ %.pre, %.thread293 ], [ %.ph, %.sink.split ]
  %i.bhk = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 168
  %i.bhm = load i32, ptr %i.bhl, align 8, !tbaa !57
  %i.bhn = add nsw i32 %i.bhm, 1
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhk, i64 14384
  %i.bhp = load ptr, ptr %i.bho, align 8, !tbaa !55
  %i.bhq = getelementptr inbounds [8 x i8], ptr %i.bhp, i64 %i.asx
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !58
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !60
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !62
  %i.bhv = getelementptr inbounds [8 x i8], ptr %i.bhu, i64 %i.c
  %i.bhw = load ptr, ptr %i.bhv, align 8, !tbaa !64
  %i.bhx = getelementptr inbounds nuw i8, ptr %i.bhw, i64 16
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !66 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %7, i64 6488
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !135
  %i.bib = load ptr, ptr %i.bia, align 8, !tbaa !44
  %i.bic = getelementptr inbounds [8 x i8], ptr %i.bib, i64 %i.asy
  %i.bid = load ptr, ptr %i.bic, align 8, !tbaa !45
  %i.bie = sext i32 %i.bhn to i64                 ; 8 uses
  %i.bif = getelementptr inbounds i8, ptr %i.bid, i64 %i.bie
  store i8 %i.d, ptr %i.bif, align 1, !tbaa !46
  %i.big = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.big, i64 24
  %i.bii = getelementptr inbounds [264 x i8], ptr %i.bih, i64 %i.e
  %i.bij = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.c
  %i.bik = load i64, ptr %i.bij, align 8, !tbaa !147
  %i.bil = getelementptr inbounds nuw i8, ptr %i.big, i64 6496
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !141
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !142
  %i.bio = getelementptr inbounds [8 x i8], ptr %i.bin, i64 %i.asy
  %i.bip = load ptr, ptr %i.bio, align 8, !tbaa !144
  %i.biq = getelementptr inbounds [8 x i8], ptr %i.bip, i64 %i.bie
  store i64 %i.bik, ptr %i.biq, align 8, !tbaa !147
  %i.bir = load i16, ptr %i.bhy, align 2, !tbaa !68
  %i.bis = getelementptr inbounds nuw i8, ptr %i.big, i64 6512
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !163
  %i.biu = load ptr, ptr %i.bit, align 8, !tbaa !62
  %i.biv = getelementptr inbounds [8 x i8], ptr %i.biu, i64 %i.asy
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !64
  %i.bix = getelementptr inbounds [8 x i8], ptr %i.biw, i64 %i.bie
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bir, ptr %i.biy, align 2, !tbaa !68
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 2
  %i.bja = load i16, ptr %i.biz, align 2, !tbaa !68
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.biy, i64 2
  store i16 %i.bja, ptr %i.bjb, align 2, !tbaa !68
  br i1 %.not285, label %.split.2, label %bb.w

bb.w:                                             ; preds = %.split.1
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.big, i64 6488
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !135
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 8
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !44
  %i.bjg = getelementptr inbounds [8 x i8], ptr %i.bjf, i64 %i.asy
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !45
  %i.bji = getelementptr inbounds i8, ptr %i.bjh, i64 %i.bie ; 2 uses
  br i1 %i.f, label %bb.y, label %.thread293.1

.thread293.1:                                     ; preds = %bb.w
  store i8 %i.g, ptr %i.bji, align 1, !tbaa !46
  %.pre.1 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.x, label %.split.2

bb.x:                                             ; preds = %.thread293.1
  %i.bjj = load ptr, ptr @img, align 8, !tbaa !16
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 14384
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !55
  %i.bjm = getelementptr inbounds [8 x i8], ptr %i.bjl, i64 %i.asx
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !58
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !60
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 8
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !62
  %i.bjs = getelementptr inbounds nuw [8 x i8], ptr %i.bjr, i64 %i.i
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !64
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 16
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !66 ; 2 uses
  %i.bjw = getelementptr [264 x i8], ptr %.pre.1, i64 %i.e
  %i.bjx = getelementptr i8, ptr %i.bjw, i64 288
  %i.bjy = getelementptr inbounds nuw [8 x i8], ptr %i.bjx, i64 %i.i
  %i.bjz = load i64, ptr %i.bjy, align 8, !tbaa !147
  %i.bka = getelementptr inbounds nuw i8, ptr %.pre.1, i64 6496
  %i.bkb = load ptr, ptr %i.bka, align 8, !tbaa !141
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bkb, i64 8
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !142
  %i.bke = getelementptr inbounds [8 x i8], ptr %i.bkd, i64 %i.asy
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !144
  %i.bkg = getelementptr inbounds [8 x i8], ptr %i.bkf, i64 %i.bie
  store i64 %i.bjz, ptr %i.bkg, align 8, !tbaa !147
  %i.bkh = load i16, ptr %i.bjv, align 2, !tbaa !68
  %i.bki = getelementptr inbounds nuw i8, ptr %.pre.1, i64 6512
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !163
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bkj, i64 8
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !62
  %i.bkm = getelementptr inbounds [8 x i8], ptr %i.bkl, i64 %i.asy
  %i.bkn = load ptr, ptr %i.bkm, align 8, !tbaa !64
  %i.bko = getelementptr inbounds [8 x i8], ptr %i.bkn, i64 %i.bie
  %i.bkp = load ptr, ptr %i.bko, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bkh, ptr %i.bkp, align 2, !tbaa !68
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bjv, i64 2
  %i.bkr = load i16, ptr %i.bkq, align 2, !tbaa !68
  br label %.sink.split.1

bb.y:                                             ; preds = %bb.w
  store i8 -1, ptr %i.bji, align 1, !tbaa !46
  %i.bks = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bks, i64 6496
  %i.bku = load ptr, ptr %i.bkt, align 8, !tbaa !141
  %i.bkv = getelementptr inbounds nuw i8, ptr %i.bku, i64 8
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !142
  %i.bkx = getelementptr inbounds [8 x i8], ptr %i.bkw, i64 %i.asy
  %i.bky = load ptr, ptr %i.bkx, align 8, !tbaa !144
  %i.bkz = getelementptr inbounds [8 x i8], ptr %i.bky, i64 %i.bie
  store i64 -1, ptr %i.bkz, align 8, !tbaa !147
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bks, i64 6512
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !163
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 8
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !62
  %i.ble = getelementptr inbounds [8 x i8], ptr %i.bld, i64 %i.asy
  %i.blf = load ptr, ptr %i.ble, align 8, !tbaa !64
  %i.blg = getelementptr inbounds [8 x i8], ptr %i.blf, i64 %i.bie
  %i.blh = load ptr, ptr %i.blg, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.blh, align 2, !tbaa !68
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.y, %bb.x
  %.sink463.1 = phi ptr [ %i.bkp, %bb.x ], [ %i.blh, %bb.y ]
  %.sink.1 = phi i16 [ %i.bkr, %bb.x ], [ 0, %bb.y ]
  %.ph.1 = phi ptr [ %.pre.1, %bb.x ], [ %i.bks, %bb.y ]
  %i.bli = getelementptr inbounds nuw i8, ptr %.sink463.1, i64 2
  store i16 %.sink.1, ptr %i.bli, align 2, !tbaa !68
  br label %.split.2

.split.2:                                         ; preds = %.sink.split.1, %.thread293.1, %.split.1
  %8 = phi ptr [ %i.big, %.split.1 ], [ %.pre.1, %.thread293.1 ], [ %.ph.1, %.sink.split.1 ]
  %i.blj = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 168
  %i.bll = load i32, ptr %i.blk, align 8, !tbaa !57
  %i.blm = add nsw i32 %i.bll, 2
  %i.bln = getelementptr inbounds nuw i8, ptr %i.blj, i64 14384
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !55
  %i.blp = getelementptr inbounds [8 x i8], ptr %i.blo, i64 %i.asx
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !58
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 16
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !60
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !62
  %i.blu = getelementptr inbounds [8 x i8], ptr %i.blt, i64 %i.c
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !64
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !66 ; 2 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %8, i64 6488
  %i.blz = load ptr, ptr %i.bly, align 8, !tbaa !135
  %i.bma = load ptr, ptr %i.blz, align 8, !tbaa !44
  %i.bmb = getelementptr inbounds [8 x i8], ptr %i.bma, i64 %i.asy
  %i.bmc = load ptr, ptr %i.bmb, align 8, !tbaa !45
  %i.bmd = sext i32 %i.blm to i64                 ; 8 uses
  %i.bme = getelementptr inbounds i8, ptr %i.bmc, i64 %i.bmd
  store i8 %i.d, ptr %i.bme, align 1, !tbaa !46
  %i.bmf = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.bmf, i64 24
  %i.bmh = getelementptr inbounds [264 x i8], ptr %i.bmg, i64 %i.e
  %i.bmi = getelementptr inbounds [8 x i8], ptr %i.bmh, i64 %i.c
  %i.bmj = load i64, ptr %i.bmi, align 8, !tbaa !147
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmf, i64 6496
  %i.bml = load ptr, ptr %i.bmk, align 8, !tbaa !141
  %i.bmm = load ptr, ptr %i.bml, align 8, !tbaa !142
  %i.bmn = getelementptr inbounds [8 x i8], ptr %i.bmm, i64 %i.asy
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !144
  %i.bmp = getelementptr inbounds [8 x i8], ptr %i.bmo, i64 %i.bmd
  store i64 %i.bmj, ptr %i.bmp, align 8, !tbaa !147
  %i.bmq = load i16, ptr %i.blx, align 2, !tbaa !68
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmf, i64 6512
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !163
  %i.bmt = load ptr, ptr %i.bms, align 8, !tbaa !62
  %i.bmu = getelementptr inbounds [8 x i8], ptr %i.bmt, i64 %i.asy
  %i.bmv = load ptr, ptr %i.bmu, align 8, !tbaa !64
  %i.bmw = getelementptr inbounds [8 x i8], ptr %i.bmv, i64 %i.bmd
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bmq, ptr %i.bmx, align 2, !tbaa !68
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.blx, i64 2
  %i.bmz = load i16, ptr %i.bmy, align 2, !tbaa !68
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmx, i64 2
  store i16 %i.bmz, ptr %i.bna, align 2, !tbaa !68
  br i1 %.not285, label %.split.3, label %bb.z

bb.z:                                             ; preds = %.split.2
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmf, i64 6488
  %i.bnc = load ptr, ptr %i.bnb, align 8, !tbaa !135
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bnc, i64 8
  %i.bne = load ptr, ptr %i.bnd, align 8, !tbaa !44
  %i.bnf = getelementptr inbounds [8 x i8], ptr %i.bne, i64 %i.asy
  %i.bng = load ptr, ptr %i.bnf, align 8, !tbaa !45
  %i.bnh = getelementptr inbounds i8, ptr %i.bng, i64 %i.bmd ; 2 uses
  br i1 %i.f, label %bb.ab, label %.thread293.2

.thread293.2:                                     ; preds = %bb.z
  store i8 %i.g, ptr %i.bnh, align 1, !tbaa !46
  %.pre.2 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.h, label %bb.aa, label %.split.3

bb.aa:                                            ; preds = %.thread293.2
  %i.bni = load ptr, ptr @img, align 8, !tbaa !16
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bni, i64 14384
  %i.bnk = load ptr, ptr %i.bnj, align 8, !tbaa !55
  %i.bnl = getelementptr inbounds [8 x i8], ptr %i.bnk, i64 %i.asx
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !58
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 16
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !60
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.bno, i64 8
  %i.bnq = load ptr, ptr %i.bnp, align 8, !tbaa !62
  %i.bnr = getelementptr inbounds nuw [8 x i8], ptr %i.bnq, i64 %i.i
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !64
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
  %i.bnu = load ptr, ptr %i.bnt, align 8, !tbaa !66 ; 2 uses
  %i.bnv = getelementptr [264 x i8], ptr %.pre.2, i64 %i.e
  %i.bnw = getelementptr i8, ptr %i.bnv, i64 288
  %i.bnx = getelementptr inbounds nuw [8 x i8], ptr %i.bnw, i64 %i.i
  %i.bny = load i64, ptr %i.bnx, align 8, !tbaa !147
  %i.bnz = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6496
  %i.boa = load ptr, ptr %i.bnz, align 8, !tbaa !141
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 8
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !142
  %i.bod = getelementptr inbounds [8 x i8], ptr %i.boc, i64 %i.asy
  %i.boe = load ptr, ptr %i.bod, align 8, !tbaa !144
  %i.bof = getelementptr inbounds [8 x i8], ptr %i.boe, i64 %i.bmd
  store i64 %i.bny, ptr %i.bof, align 8, !tbaa !147
  %i.bog = load i16, ptr %i.bnu, align 2, !tbaa !68
  %i.boh = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6512
  %i.boi = load ptr, ptr %i.boh, align 8, !tbaa !163
  %i.boj = getelementptr inbounds nuw i8, ptr %i.boi, i64 8
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !62
  %i.bol = getelementptr inbounds [8 x i8], ptr %i.bok, i64 %i.asy
  %i.bom = load ptr, ptr %i.bol, align 8, !tbaa !64
  %i.bon = getelementptr inbounds [8 x i8], ptr %i.bom, i64 %i.bmd
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bog, ptr %i.boo, align 2, !tbaa !68
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bnu, i64 2
  %i.boq = load i16, ptr %i.bop, align 2, !tbaa !68
  br label %.sink.split.2

bb.ab:                                            ; preds = %bb.z
  store i8 -1, ptr %i.bnh, align 1, !tbaa !46
  %i.bor = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.bor, i64 6496
  %i.bot = load ptr, ptr %i.bos, align 8, !tbaa !141
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 8
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !142
  %i.bow = getelementptr inbounds [8 x i8], ptr %i.bov, i64 %i.asy
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !144
  %i.boy = getelementptr inbounds [8 x i8], ptr %i.box, i64 %i.bmd
  store i64 -1, ptr %i.boy, align 8, !tbaa !147
  %i.boz = getelementptr inbounds nuw i8, ptr %i.bor, i64 6512
  %i.bpa = load ptr, ptr %i.boz, align 8, !tbaa !163
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.bpa, i64 8
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !62
  %i.bpd = getelementptr inbounds [8 x i8], ptr %i.bpc, i64 %i.asy
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !64
  %i.bpf = getelementptr inbounds [8 x i8], ptr %i.bpe, i64 %i.bmd
  %i.bpg = load ptr, ptr %i.bpf, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bpg, align 2, !tbaa !68
  br label %.sink.split.2

.sink.split.2:                                    ; preds = %bb.ab, %bb.aa
  %.sink463.2 = phi ptr [ %i.boo, %bb.aa ], [ %i.bpg, %bb.ab ]
  %.sink.2 = phi i16 [ %i.boq, %bb.aa ], [ 0, %bb.ab ]
  %.ph.2 = phi ptr [ %.pre.2, %bb.aa ], [ %i.bor, %bb.ab ]
  %i.bph = getelementptr inbounds nuw i8, ptr %.sink463.2, i64 2
  store i16 %.sink.2, ptr %i.bph, align 2, !tbaa !68
  br label %.split.3

.split.3:                                         ; preds = %.sink.split.2, %.thread293.2, %.split.2
  %9 = phi ptr [ %i.bmf, %.split.2 ], [ %.pre.2, %.thread293.2 ], [ %.ph.2, %.sink.split.2 ]
  %i.bpi = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 168
  %i.bpk = load i32, ptr %i.bpj, align 8, !tbaa !57
  %i.bpl = add nsw i32 %i.bpk, 3
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpi, i64 14384
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !55
  %i.bpo = getelementptr inbounds [8 x i8], ptr %i.bpn, i64 %i.asx
  %i.bpp = load ptr, ptr %i.bpo, align 8, !tbaa !58
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpp, i64 24
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !60
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !62
  %i.bpt = getelementptr inbounds [8 x i8], ptr %i.bps, i64 %i.c
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !64
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpu, i64 16
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !66 ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %9, i64 6488
  %i.bpy = load ptr, ptr %i.bpx, align 8, !tbaa !135
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !44
  %i.bqa = getelementptr inbounds [8 x i8], ptr %i.bpz, i64 %i.asy
  %i.bqb = load ptr, ptr %i.bqa, align 8, !tbaa !45
  %i.bqc = sext i32 %i.bpl to i64                 ; 8 uses
  %i.bqd = getelementptr inbounds i8, ptr %i.bqb, i64 %i.bqc
  store i8 %i.d, ptr %i.bqd, align 1, !tbaa !46
  %i.bqe = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 4 uses
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqe, i64 24
  %i.bqg = getelementptr inbounds [264 x i8], ptr %i.bqf, i64 %i.e
  %i.bqh = getelementptr inbounds [8 x i8], ptr %i.bqg, i64 %i.c
  %i.bqi = load i64, ptr %i.bqh, align 8, !tbaa !147
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqe, i64 6496
  %i.bqk = load ptr, ptr %i.bqj, align 8, !tbaa !141
  %i.bql = load ptr, ptr %i.bqk, align 8, !tbaa !142
  %i.bqm = getelementptr inbounds [8 x i8], ptr %i.bql, i64 %i.asy
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !144
  %i.bqo = getelementptr inbounds [8 x i8], ptr %i.bqn, i64 %i.bqc
  store i64 %i.bqi, ptr %i.bqo, align 8, !tbaa !147
  %i.bqp = load i16, ptr %i.bpw, align 2, !tbaa !68
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.bqe, i64 6512
  %i.bqr = load ptr, ptr %i.bqq, align 8, !tbaa !163
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !62
  %i.bqt = getelementptr inbounds [8 x i8], ptr %i.bqs, i64 %i.asy
  %i.bqu = load ptr, ptr %i.bqt, align 8, !tbaa !64
  %i.bqv = getelementptr inbounds [8 x i8], ptr %i.bqu, i64 %i.bqc
  %i.bqw = load ptr, ptr %i.bqv, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bqp, ptr %i.bqw, align 2, !tbaa !68
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.bpw, i64 2
  %i.bqy = load i16, ptr %i.bqx, align 2, !tbaa !68
  %i.bqz = getelementptr inbounds nuw i8, ptr %i.bqw, i64 2
  store i16 %i.bqy, ptr %i.bqz, align 2, !tbaa !68
  br i1 %.not285, label %.split311.us, label %bb.ac

bb.ac:                                            ; preds = %.split.3
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bqe, i64 6488
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !135
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 8
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !44
  %i.bre = getelementptr inbounds [8 x i8], ptr %i.brd, i64 %i.asy
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !45
  %i.brg = getelementptr inbounds i8, ptr %i.brf, i64 %i.bqc ; 2 uses
  br i1 %i.f, label %bb.ae, label %.thread293.3

.thread293.3:                                     ; preds = %bb.ac
  store i8 %i.g, ptr %i.brg, align 1, !tbaa !46
  br i1 %i.h, label %bb.ad, label %.split311.us

bb.ad:                                            ; preds = %.thread293.3
  %.pre.3 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.brh = load ptr, ptr @img, align 8, !tbaa !16
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 14384
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !55
  %i.brk = getelementptr inbounds [8 x i8], ptr %i.brj, i64 %i.asx
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !58
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brl, i64 24
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !60
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 8
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !62
  %i.brq = getelementptr inbounds nuw [8 x i8], ptr %i.brp, i64 %i.i
  %i.brr = load ptr, ptr %i.brq, align 8, !tbaa !64
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 16
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !66 ; 2 uses
  %i.bru = getelementptr [264 x i8], ptr %.pre.3, i64 %i.e
  %i.brv = getelementptr i8, ptr %i.bru, i64 288
  %i.brw = getelementptr inbounds nuw [8 x i8], ptr %i.brv, i64 %i.i
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !147
  %i.bry = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6496
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !141
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.brz, i64 8
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !142
  %i.bsc = getelementptr inbounds [8 x i8], ptr %i.bsb, i64 %i.asy
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !144
  %i.bse = getelementptr inbounds [8 x i8], ptr %i.bsd, i64 %i.bqc
  store i64 %i.brx, ptr %i.bse, align 8, !tbaa !147
  %i.bsf = load i16, ptr %i.brt, align 2, !tbaa !68
  %i.bsg = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6512
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !163
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 8
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !62
  %i.bsk = getelementptr inbounds [8 x i8], ptr %i.bsj, i64 %i.asy
  %i.bsl = load ptr, ptr %i.bsk, align 8, !tbaa !64
  %i.bsm = getelementptr inbounds [8 x i8], ptr %i.bsl, i64 %i.bqc
  %i.bsn = load ptr, ptr %i.bsm, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bsf, ptr %i.bsn, align 2, !tbaa !68
  %i.bso = getelementptr inbounds nuw i8, ptr %i.brt, i64 2
  %i.bsp = load i16, ptr %i.bso, align 2, !tbaa !68
  br label %.sink.split.3

bb.ae:                                            ; preds = %bb.ac
  store i8 -1, ptr %i.brg, align 1, !tbaa !46
  %i.bsq = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 2 uses
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsq, i64 6496
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !141
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bss, i64 8
  %i.bsu = load ptr, ptr %i.bst, align 8, !tbaa !142
  %i.bsv = getelementptr inbounds [8 x i8], ptr %i.bsu, i64 %i.asy
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !144
  %i.bsx = getelementptr inbounds [8 x i8], ptr %i.bsw, i64 %i.bqc
  store i64 -1, ptr %i.bsx, align 8, !tbaa !147
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsq, i64 6512
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !163
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !62
  %i.btc = getelementptr inbounds [8 x i8], ptr %i.btb, i64 %i.asy
  %i.btd = load ptr, ptr %i.btc, align 8, !tbaa !64
  %i.bte = getelementptr inbounds [8 x i8], ptr %i.btd, i64 %i.bqc
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.btf, align 2, !tbaa !68
  br label %.sink.split.3

.sink.split.3:                                    ; preds = %bb.ae, %bb.ad
  %.sink463.3 = phi ptr [ %i.bsn, %bb.ad ], [ %i.btf, %bb.ae ]
  %.sink.3 = phi i16 [ %i.bsp, %bb.ad ], [ 0, %bb.ae ]
  %i.btg = getelementptr inbounds nuw i8, ptr %.sink463.3, i64 2
  store i16 %.sink.3, ptr %i.btg, align 2, !tbaa !68
  br label %.split311.us

.split311.us:                                     ; preds = %.split.3, %.thread293.3, %.sink.split.3, %.thread.us.3, %.thread293.us.3, %bb.s
  br i1 %i.asq, label %bb.o, label %.loopexit, !llvm.loop !288

.split330:                                        ; preds = %.split330.preheader, %.split332
  %10 = phi ptr [ %.pre435, %.split330.preheader ], [ %11, %.split332 ]
  %indvars.iv407 = phi i64 [ 0, %.split330.preheader ], [ %indvars.iv.next408, %.split332 ] ; 6 uses
  %i.bth = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bth, i64 172
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !56
  %i.btk = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.btl = add nsw i32 %i.btj, %i.btk
  %i.btm = sext i32 %i.btl to i64                 ; 16 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bth, i64 168
  %i.bto = load i32, ptr %i.btn, align 8, !tbaa !57
  %i.btp = add i32 %i.k, %i.bto
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bth, i64 14384
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !55
  %i.bts = getelementptr inbounds nuw [8 x i8], ptr %i.btr, i64 %indvars.iv407
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !58
  %i.btu = getelementptr inbounds [8 x i8], ptr %i.btt, i64 %i.u
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !60
  %i.btw = load ptr, ptr %i.btv, align 8, !tbaa !62
  %i.btx = getelementptr inbounds [8 x i8], ptr %i.btw, i64 %i.m
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !64
  %i.btz = getelementptr inbounds [8 x i8], ptr %i.bty, i64 %i.n
  %i.bua = load ptr, ptr %i.btz, align 8, !tbaa !66 ; 2 uses
  %i.bub = getelementptr inbounds nuw i8, ptr %10, i64 6488
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !135
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !44
  %i.bue = getelementptr inbounds [8 x i8], ptr %i.bud, i64 %i.btm
  %i.buf = load ptr, ptr %i.bue, align 8, !tbaa !45
  %i.bug = sext i32 %i.btp to i64                 ; 8 uses
  %i.buh = getelementptr inbounds i8, ptr %i.buf, i64 %i.bug
  store i8 %i.o, ptr %i.buh, align 1, !tbaa !46
  %i.bui = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.buj = getelementptr inbounds nuw i8, ptr %i.bui, i64 24
  %i.buk = getelementptr inbounds [264 x i8], ptr %i.buj, i64 %i.p
  %i.bul = getelementptr inbounds [8 x i8], ptr %i.buk, i64 %i.m
  %i.bum = load i64, ptr %i.bul, align 8, !tbaa !147
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bui, i64 6496
  %i.buo = load ptr, ptr %i.bun, align 8, !tbaa !141
  %i.bup = load ptr, ptr %i.buo, align 8, !tbaa !142
  %i.buq = getelementptr inbounds [8 x i8], ptr %i.bup, i64 %i.btm
  %i.bur = load ptr, ptr %i.buq, align 8, !tbaa !144
  %i.bus = getelementptr inbounds [8 x i8], ptr %i.bur, i64 %i.bug
  store i64 %i.bum, ptr %i.bus, align 8, !tbaa !147
  %i.but = load i16, ptr %i.bua, align 2, !tbaa !68
  %i.buu = getelementptr inbounds nuw i8, ptr %i.bui, i64 6512
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !163
  %i.buw = load ptr, ptr %i.buv, align 8, !tbaa !62
  %i.bux = getelementptr inbounds [8 x i8], ptr %i.buw, i64 %i.btm
  %i.buy = load ptr, ptr %i.bux, align 8, !tbaa !64
  %i.buz = getelementptr inbounds [8 x i8], ptr %i.buy, i64 %i.bug
  %i.bva = load ptr, ptr %i.buz, align 8, !tbaa !66 ; 2 uses
  store i16 %i.but, ptr %i.bva, align 2, !tbaa !68
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bua, i64 2
  %i.bvc = load i16, ptr %i.bvb, align 2, !tbaa !68
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bva, i64 2
  store i16 %i.bvc, ptr %i.bvd, align 2, !tbaa !68
  br i1 %.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.split330
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bui, i64 6488
  %i.bvf = load ptr, ptr %i.bve, align 8, !tbaa !135
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.bvf, i64 8
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !44
  %i.bvi = getelementptr inbounds [8 x i8], ptr %i.bvh, i64 %i.btm
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !45
  %i.bvk = getelementptr inbounds i8, ptr %i.bvj, i64 %i.bug ; 2 uses
  br i1 %i.q, label %bb.ag, label %.thread296

bb.ag:                                            ; preds = %bb.af
  store i8 -1, ptr %i.bvk, align 1, !tbaa !46
  %i.bvl = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bvl, i64 6496
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !141
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.bvn, i64 8
  %i.bvp = load ptr, ptr %i.bvo, align 8, !tbaa !142
  %i.bvq = getelementptr inbounds [8 x i8], ptr %i.bvp, i64 %i.btm
  %i.bvr = load ptr, ptr %i.bvq, align 8, !tbaa !144
  %i.bvs = getelementptr inbounds [8 x i8], ptr %i.bvr, i64 %i.bug
  store i64 -1, ptr %i.bvs, align 8, !tbaa !147
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvl, i64 6512
  %i.bvu = load ptr, ptr %i.bvt, align 8, !tbaa !163
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvu, i64 8
  %i.bvw = load ptr, ptr %i.bvv, align 8, !tbaa !62
  %i.bvx = getelementptr inbounds [8 x i8], ptr %i.bvw, i64 %i.btm
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !64
  %i.bvz = getelementptr inbounds [8 x i8], ptr %i.bvy, i64 %i.bug
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.bwa, align 2, !tbaa !68
  br label %.sink.split464

.thread296:                                       ; preds = %bb.af
  store i8 %i.r, ptr %i.bvk, align 1, !tbaa !46
  %.pre436 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.s, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread296
  %i.bwb = load ptr, ptr @img, align 8, !tbaa !16
  %i.bwc = getelementptr inbounds nuw i8, ptr %i.bwb, i64 14384
  %i.bwd = load ptr, ptr %i.bwc, align 8, !tbaa !55
  %i.bwe = getelementptr inbounds nuw [8 x i8], ptr %i.bwd, i64 %indvars.iv407
  %i.bwf = load ptr, ptr %i.bwe, align 8, !tbaa !58
  %i.bwg = getelementptr inbounds [8 x i8], ptr %i.bwf, i64 %i.u
  %i.bwh = load ptr, ptr %i.bwg, align 8, !tbaa !60
  %i.bwi = getelementptr inbounds nuw i8, ptr %i.bwh, i64 8
  %i.bwj = load ptr, ptr %i.bwi, align 8, !tbaa !62
  %i.bwk = getelementptr inbounds nuw [8 x i8], ptr %i.bwj, i64 %i.t
  %i.bwl = load ptr, ptr %i.bwk, align 8, !tbaa !64
  %i.bwm = getelementptr inbounds [8 x i8], ptr %i.bwl, i64 %i.n
  %i.bwn = load ptr, ptr %i.bwm, align 8, !tbaa !66 ; 2 uses
  %i.bwo = getelementptr [264 x i8], ptr %.pre436, i64 %i.p
  %i.bwp = getelementptr i8, ptr %i.bwo, i64 288
  %i.bwq = getelementptr inbounds nuw [8 x i8], ptr %i.bwp, i64 %i.t
  %i.bwr = load i64, ptr %i.bwq, align 8, !tbaa !147
  %i.bws = getelementptr inbounds nuw i8, ptr %.pre436, i64 6496
  %i.bwt = load ptr, ptr %i.bws, align 8, !tbaa !141
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwt, i64 8
  %i.bwv = load ptr, ptr %i.bwu, align 8, !tbaa !142
  %i.bww = getelementptr inbounds [8 x i8], ptr %i.bwv, i64 %i.btm
  %i.bwx = load ptr, ptr %i.bww, align 8, !tbaa !144
  %i.bwy = getelementptr inbounds [8 x i8], ptr %i.bwx, i64 %i.bug
  store i64 %i.bwr, ptr %i.bwy, align 8, !tbaa !147
  %i.bwz = load i16, ptr %i.bwn, align 2, !tbaa !68
  %i.bxa = getelementptr inbounds nuw i8, ptr %.pre436, i64 6512
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !163
  %i.bxc = getelementptr inbounds nuw i8, ptr %i.bxb, i64 8
  %i.bxd = load ptr, ptr %i.bxc, align 8, !tbaa !62
  %i.bxe = getelementptr inbounds [8 x i8], ptr %i.bxd, i64 %i.btm
  %i.bxf = load ptr, ptr %i.bxe, align 8, !tbaa !64
  %i.bxg = getelementptr inbounds [8 x i8], ptr %i.bxf, i64 %i.bug
  %i.bxh = load ptr, ptr %i.bxg, align 8, !tbaa !66 ; 2 uses
  store i16 %i.bwz, ptr %i.bxh, align 2, !tbaa !68
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bwn, i64 2
  %i.bxj = load i16, ptr %i.bxi, align 2, !tbaa !68
  br label %.sink.split464

.sink.split464:                                   ; preds = %bb.ag, %bb.ah
  %.sink468 = phi ptr [ %i.bxh, %bb.ah ], [ %i.bwa, %bb.ag ]
  %.sink466.a = phi i16 [ %i.bxj, %bb.ah ], [ 0, %bb.ag ]
  %.ph465 = phi ptr [ %.pre436, %bb.ah ], [ %i.bvl, %bb.ag ]
  %i.bxk = getelementptr inbounds nuw i8, ptr %.sink468, i64 2
  store i16 %.sink466.a, ptr %i.bxk, align 2, !tbaa !68
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split464, %.split330, %.thread296
  %i.bxl = phi ptr [ %i.bui, %.split330 ], [ %.pre436, %.thread296 ], [ %.ph465, %.sink.split464 ]
  %i.bxm = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxm, i64 168
  %i.bxo = load i32, ptr %i.bxn, align 8, !tbaa !57
  %i.bxp = add i32 %i.v, %i.bxo
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxm, i64 14384
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !55
  %i.bxs = getelementptr inbounds nuw [8 x i8], ptr %i.bxr, i64 %indvars.iv407
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !58
  %i.bxu = getelementptr inbounds [8 x i8], ptr %i.bxt, i64 %i.w
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !60
  %i.bxw = load ptr, ptr %i.bxv, align 8, !tbaa !62
  %i.bxx = getelementptr inbounds [8 x i8], ptr %i.bxw, i64 %i.m
  %i.bxy = load ptr, ptr %i.bxx, align 8, !tbaa !64
  %i.bxz = getelementptr inbounds [8 x i8], ptr %i.bxy, i64 %i.n
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !66 ; 2 uses
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxl, i64 6488
  %i.byc = load ptr, ptr %i.byb, align 8, !tbaa !135
  %i.byd = load ptr, ptr %i.byc, align 8, !tbaa !44
  %i.bye = getelementptr inbounds [8 x i8], ptr %i.byd, i64 %i.btm
  %i.byf = load ptr, ptr %i.bye, align 8, !tbaa !45
  %i.byg = sext i32 %i.bxp to i64                 ; 8 uses
  %i.byh = getelementptr inbounds i8, ptr %i.byf, i64 %i.byg
  store i8 %i.o, ptr %i.byh, align 1, !tbaa !46
  %i.byi = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %i.byi, i64 24
  %i.byk = getelementptr inbounds [264 x i8], ptr %i.byj, i64 %i.p
  %i.byl = getelementptr inbounds [8 x i8], ptr %i.byk, i64 %i.m
  %i.bym = load i64, ptr %i.byl, align 8, !tbaa !147
  %i.byn = getelementptr inbounds nuw i8, ptr %i.byi, i64 6496
  %i.byo = load ptr, ptr %i.byn, align 8, !tbaa !141
  %i.byp = load ptr, ptr %i.byo, align 8, !tbaa !142
  %i.byq = getelementptr inbounds [8 x i8], ptr %i.byp, i64 %i.btm
  %i.byr = load ptr, ptr %i.byq, align 8, !tbaa !144
  %i.bys = getelementptr inbounds [8 x i8], ptr %i.byr, i64 %i.byg
  store i64 %i.bym, ptr %i.bys, align 8, !tbaa !147
  %i.byt = load i16, ptr %i.bya, align 2, !tbaa !68
  %i.byu = getelementptr inbounds nuw i8, ptr %i.byi, i64 6512
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !163
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !62
  %i.byx = getelementptr inbounds [8 x i8], ptr %i.byw, i64 %i.btm
  %i.byy = load ptr, ptr %i.byx, align 8, !tbaa !64
  %i.byz = getelementptr inbounds [8 x i8], ptr %i.byy, i64 %i.byg
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !66 ; 2 uses
  store i16 %i.byt, ptr %i.bza, align 2, !tbaa !68
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.bya, i64 2
  %i.bzc = load i16, ptr %i.bzb, align 2, !tbaa !68
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bza, i64 2
  store i16 %i.bzc, ptr %i.bzd, align 2, !tbaa !68
  br i1 %.not, label %.split332, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bze = getelementptr inbounds nuw i8, ptr %i.byi, i64 6488
  %i.bzf = load ptr, ptr %i.bze, align 8, !tbaa !135
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.bzf, i64 8
  %i.bzh = load ptr, ptr %i.bzg, align 8, !tbaa !44
  %i.bzi = getelementptr inbounds [8 x i8], ptr %i.bzh, i64 %i.btm
  %i.bzj = load ptr, ptr %i.bzi, align 8, !tbaa !45
  %i.bzk = getelementptr inbounds i8, ptr %i.bzj, i64 %i.byg ; 2 uses
  br i1 %i.q, label %bb.al, label %.thread296.1

.thread296.1:                                     ; preds = %bb.aj
  store i8 %i.r, ptr %i.bzk, align 1, !tbaa !46
  %.pre434 = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 5 uses
  br i1 %i.s, label %bb.ak, label %.split332

bb.ak:                                            ; preds = %.thread296.1
  %i.bzl = load ptr, ptr @img, align 8, !tbaa !16
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 14384
  %i.bzn = load ptr, ptr %i.bzm, align 8, !tbaa !55
  %i.bzo = getelementptr inbounds nuw [8 x i8], ptr %i.bzn, i64 %indvars.iv407
  %i.bzp = load ptr, ptr %i.bzo, align 8, !tbaa !58
  %i.bzq = getelementptr inbounds [8 x i8], ptr %i.bzp, i64 %i.w
  %i.bzr = load ptr, ptr %i.bzq, align 8, !tbaa !60
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.bzr, i64 8
  %i.bzt = load ptr, ptr %i.bzs, align 8, !tbaa !62
  %i.bzu = getelementptr inbounds nuw [8 x i8], ptr %i.bzt, i64 %i.t
  %i.bzv = load ptr, ptr %i.bzu, align 8, !tbaa !64
  %i.bzw = getelementptr inbounds [8 x i8], ptr %i.bzv, i64 %i.n
  %i.bzx = load ptr, ptr %i.bzw, align 8, !tbaa !66 ; 2 uses
  %i.bzy = getelementptr [264 x i8], ptr %.pre434, i64 %i.p
  %i.bzz = getelementptr i8, ptr %i.bzy, i64 288
  %i.caa = getelementptr inbounds nuw [8 x i8], ptr %i.bzz, i64 %i.t
  %i.cab = load i64, ptr %i.caa, align 8, !tbaa !147
  %i.cac = getelementptr inbounds nuw i8, ptr %.pre434, i64 6496
  %i.cad = load ptr, ptr %i.cac, align 8, !tbaa !141
  %i.cae = getelementptr inbounds nuw i8, ptr %i.cad, i64 8
  %i.caf = load ptr, ptr %i.cae, align 8, !tbaa !142
  %i.cag = getelementptr inbounds [8 x i8], ptr %i.caf, i64 %i.btm
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !144
  %i.cai = getelementptr inbounds [8 x i8], ptr %i.cah, i64 %i.byg
  store i64 %i.cab, ptr %i.cai, align 8, !tbaa !147
  %i.caj = load i16, ptr %i.bzx, align 2, !tbaa !68
  %i.cak = getelementptr inbounds nuw i8, ptr %.pre434, i64 6512
  %i.cal = load ptr, ptr %i.cak, align 8, !tbaa !163
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  %i.can = load ptr, ptr %i.cam, align 8, !tbaa !62
  %i.cao = getelementptr inbounds [8 x i8], ptr %i.can, i64 %i.btm
  %i.cap = load ptr, ptr %i.cao, align 8, !tbaa !64
  %i.caq = getelementptr inbounds [8 x i8], ptr %i.cap, i64 %i.byg
  %i.car = load ptr, ptr %i.caq, align 8, !tbaa !66 ; 2 uses
  store i16 %i.caj, ptr %i.car, align 2, !tbaa !68
  %i.cas = getelementptr inbounds nuw i8, ptr %i.bzx, i64 2
  %i.cat = load i16, ptr %i.cas, align 2, !tbaa !68
  br label %.split332.sink.split

bb.al:                                            ; preds = %bb.aj
  store i8 -1, ptr %i.bzk, align 1, !tbaa !46
  %i.cau = load ptr, ptr @enc_picture, align 8, !tbaa !81 ; 3 uses
  %i.cav = getelementptr inbounds nuw i8, ptr %i.cau, i64 6496
  %i.caw = load ptr, ptr %i.cav, align 8, !tbaa !141
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 8
  %i.cay = load ptr, ptr %i.cax, align 8, !tbaa !142
  %i.caz = getelementptr inbounds [8 x i8], ptr %i.cay, i64 %i.btm
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !144
  %i.cbb = getelementptr inbounds [8 x i8], ptr %i.cba, i64 %i.byg
  store i64 -1, ptr %i.cbb, align 8, !tbaa !147
  %i.cbc = getelementptr inbounds nuw i8, ptr %i.cau, i64 6512
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !163
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbd, i64 8
  %i.cbf = load ptr, ptr %i.cbe, align 8, !tbaa !62
  %i.cbg = getelementptr inbounds [8 x i8], ptr %i.cbf, i64 %i.btm
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !64
  %i.cbi = getelementptr inbounds [8 x i8], ptr %i.cbh, i64 %i.byg
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !66 ; 2 uses
  store i16 0, ptr %i.cbj, align 2, !tbaa !68
  br label %.split332.sink.split

.split332.sink.split:                             ; preds = %bb.ak, %bb.al
  %.sink472 = phi ptr [ %i.cbj, %bb.al ], [ %i.car, %bb.ak ]
  %.sink470 = phi i16 [ 0, %bb.al ], [ %i.cat, %bb.ak ]
  %.ph469 = phi ptr [ %i.cau, %bb.al ], [ %.pre434, %bb.ak ]
  %i.cbk = getelementptr inbounds nuw i8, ptr %.sink472, i64 2
  store i16 %.sink470, ptr %i.cbk, align 2, !tbaa !68
  br label %.split332

.split332:                                        ; preds = %.split332.sink.split, %.thread296.1, %bb.ai
  %11 = phi ptr [ %.pre434, %.thread296.1 ], [ %i.byi, %bb.ai ], [ %.ph469, %.split332.sink.split ]
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next408, 4
  br i1 %exitcond410.not, label %.loopexit, label %.split330, !llvm.loop !282

.loopexit:                                        ; preds = %.split311.us, %bb.m, %.split324.us, %bb.k, %.split332, %.split332.us.us.split, %.split330.us.us.us.preheader, %bb.j, %.loopexit302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_refresh_map(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4732
  %i.c = load i32, ptr %i.b, align 4, !tbaa !289
  switch i32 %i.c, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4168
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not = icmp ne i32 %0, 0
  %i.g = zext i1 %.not to i8                      ; 4 uses
  %i.h = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.i = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  %i.k = load i32, ptr %i.j, align 4, !tbaa !253
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !254
  %i.r = shl nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store i8 %i.g, ptr %i.t, align 1, !tbaa !46
  %i.u = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.v = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !253
  %i.y = shl nsw i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !254
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  store i8 %i.g, ptr %i.ah, align 1, !tbaa !46
  %i.ai = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.aj = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !253
  %i.am = shl nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !254
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  store i8 %i.g, ptr %i.av, align 1, !tbaa !46
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.aw = icmp eq i32 %i.e, 3
  br i1 %i.aw, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i32 %1, 0                       ; 4 uses
  br i1 %i.ax, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !134 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 10
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp eq i32 %i.az, 9
  %i.bc = zext i1 %i.bb to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.bd = phi i8 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.bc, %bb.g ]
  %i.be = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.bf = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 164
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !253
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !254
  %i.bo = shl nsw i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store i8 %i.bd, ptr %i.bq, align 1, !tbaa !46
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !134 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 10
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %i.bs, 9
  %i.bv = zext i1 %i.bu to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bw = phi i8 [ 0, %bb.h ], [ 1, %bb.i ], [ %i.bv, %bb.j ]
  %i.bx = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.by = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !253
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !254
  %i.ch = shl nsw i32 %i.cg, 1
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr %i.ce, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 1
  store i8 %i.bw, ptr %i.ck, align 1, !tbaa !46
  br i1 %i.ax, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !134 ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 10
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = icmp eq i32 %i.cm, 9
  %i.cp = zext i1 %i.co to i8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.cq = phi i8 [ 0, %bb.k ], [ 1, %bb.l ], [ %i.cp, %bb.m ]
  %i.cr = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.cs = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 164
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !253
  %i.cv = shl nsw i32 %i.cu, 1
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 160
  %i.db = load i32, ptr %i.da, align 8, !tbaa !254
  %i.dc = shl nsw i32 %i.db, 1
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.cz, i64 %i.dd
  store i8 %i.cq, ptr %i.de, align 1, !tbaa !46
  br i1 %i.ax, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !134 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 10
  br i1 %i.dh, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.di = icmp eq i32 %i.dg, 9
  %i.dj = zext i1 %i.di to i8
  br label %.sink.split

bb.q:                                             ; preds = %bb.a
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 4 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !134
  %i.dm = add i32 %i.dl, -9
  %narrow = icmp ult i32 %i.dm, 2
  %i.dn = zext i1 %narrow to i8
  %i.do = load ptr, ptr @refresh_map, align 8, !tbaa !44
  %i.dp = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 164
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !253
  %i.ds = shl nsw i32 %i.dr, 1
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dp, i64 160
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !254
  %i.dy = shl nsw i32 %i.dx, 1
  %i.dz = sext i32 %i.dy to i64
end_hunk_1
