Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/rdopt?download=true
inline.NumInlined: 29
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 172
loop-unroll.NumUnrolled: 172
begin_hunk_0_@set_mbaff_parameters:bb.a
  %i.sm = getelementptr inbounds i8, ptr %i.sl, i64 %i.se
  %i.sn = load i32, ptr %i.sm, align 1
  store i32 %i.sn, ptr %i.sf, align 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.rh, i64 1688
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !43
  %i.sr = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr [8 x i8], ptr %i.sq, i64 %i.ss
  %i.su = getelementptr i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !44
  %i.sw = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds i8, ptr %i.sv, i64 %i.sx
  %i.sz = load i32, ptr %i.sy, align 1
  store i32 %i.sz, ptr %i.so, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rh, i64 1692
  %i.tb = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !43
  %i.td = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.te = sext i32 %i.td to i64
  %i.tf = getelementptr [8 x i8], ptr %i.tc, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.tf, i64 24
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !44
  %i.ti = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds i8, ptr %i.th, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 1
  store i32 %i.tl, ptr %i.ta, align 4
  br label %.lr.ph78.preheader

.preheader.preheader:                             ; preds = %.preheader63
  %i.tm = getelementptr inbounds nuw i8, ptr %i.rh, i64 1696
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !43
  %i.tp = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.to, i64 %i.tq
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !44
  %i.tt = getelementptr inbounds i8, ptr %i.ts, i64 %i.se
  %i.tu = load i32, ptr %i.tt, align 1
  store i32 %i.tu, ptr %i.tm, align 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rh, i64 1684
  %i.tw = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !43
  %i.ty = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.tz = sext i32 %i.ty to i64
  %i.ua = getelementptr [8 x i8], ptr %i.tx, i64 %i.tz
  %i.ub = getelementptr i8, ptr %i.ua, i64 8
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !44
  %i.ud = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.ue = sext i32 %i.ud to i64
  %i.uf = getelementptr inbounds i8, ptr %i.uc, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 1
  store i32 %i.ug, ptr %i.tv, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.rh, i64 1700
  %i.ui = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !43
  %i.ul = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.um = sext i32 %i.ul to i64
  %i.un = getelementptr [8 x i8], ptr %i.uk, i64 %i.um
  %i.uo = getelementptr i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !44
  %i.uq = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.up, i64 %i.ur
  %i.ut = load i32, ptr %i.us, align 1
  store i32 %i.ut, ptr %i.uh, align 4
  %i.uu = getelementptr inbounds nuw i8, ptr %i.rh, i64 1688
  %i.uv = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !43
  %i.ux = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.uy = sext i32 %i.ux to i64
  %i.uz = getelementptr [8 x i8], ptr %i.uw, i64 %i.uy
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !44
  %i.vc = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds i8, ptr %i.vb, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 1
  store i32 %i.vf, ptr %i.uu, align 8
  %i.vg = getelementptr inbounds nuw i8, ptr %i.rh, i64 1704
  %i.vh = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !tbaa !43
  %i.vk = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr [8 x i8], ptr %i.vj, i64 %i.vl
  %i.vn = getelementptr i8, ptr %i.vm, i64 16
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !44
  %i.vp = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %i.vo, i64 %i.vq
  %i.vs = load i32, ptr %i.vr, align 1
  store i32 %i.vs, ptr %i.vg, align 8
  %i.vt = getelementptr inbounds nuw i8, ptr %i.rh, i64 1692
  %i.vu = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !43
  %i.vw = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [8 x i8], ptr %i.vv, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 24
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !44
  %i.wb = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds i8, ptr %i.wa, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 1
  store i32 %i.we, ptr %i.vt, align 4
  %i.wf = getelementptr inbounds nuw i8, ptr %i.rh, i64 1708
  %i.wg = load ptr, ptr %i.ro, align 8, !tbaa !98
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !43
  %i.wj = load i32, ptr %i.rs, align 4, !tbaa !48
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr [8 x i8], ptr %i.wi, i64 %i.wk
  %i.wm = getelementptr i8, ptr %i.wl, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !44
  %i.wo = load i32, ptr %i.rx, align 8, !tbaa !49
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds i8, ptr %i.wn, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 1
  store i32 %i.wr, ptr %i.wf, align 4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.fz, i64 480
  %i.wt = load i16, ptr %i.ws, align 8, !tbaa !91
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
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !48
  %i.xe = sext i32 %i.xd to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %indvars.iv102 = phi i64 [ %i.xe, %.lr.ph78.preheader ], [ %indvars.iv.next103, %.lr.ph78 ] ; 4 uses
  %i.xf = phi ptr [ %i.ww, %.lr.ph78.preheader ], [ %i.xt, %.lr.ph78 ]
  %i.xg = load ptr, ptr @rdopt, align 8, !tbaa !16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 1600
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !142
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.xi, i64 %indvars.iv102
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !44
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xf, i64 168
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !49
  %i.xn = sext i32 %i.xm to i64                   ; 2 uses
  %i.xo = getelementptr inbounds i8, ptr %i.xk, i64 %i.xn
  %i.xp = getelementptr inbounds [8 x i8], ptr %i.j, i64 %indvars.iv102
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !44
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 %i.xn
  %i.xs = load i32, ptr %i.xr, align 1
  store i32 %i.xs, ptr %i.xo, align 1
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, 1
  %i.xt = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 172
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !48
  %i.xw = add nsw i32 %i.xv, 3
  %i.xx = sext i32 %i.xw to i64
  %i.xy = icmp slt i64 %indvars.iv102, %i.xx
  br i1 %i.xy, label %.lr.ph78, label %._crit_edge, !llvm.loop !279

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
  %.pre435 = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %7 = or disjoint i32 %i.k, 1
  %8 = or disjoint i64 %i.u, 1                    ; 2 uses
  br label %.split330

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not, label %.split330.us.us.us.preheader, label %.split330.us.us.preheader

.split330.us.us.preheader:                        ; preds = %.preheader.split.us
  %i.v = sext i32 %i.k to i64                     ; 2 uses
  %9 = or disjoint i32 %i.k, 1
  br label %.split330.us.us

.split330.us.us.us.preheader:                     ; preds = %.preheader.split.us
  %i.w = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 172
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48
  %i.z = sext i32 %i.y to i64                     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !49
  %i.ac = add i32 %i.k, %i.ab
  %i.ad = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 6488
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !98
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.z
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = sext i32 %i.ac to i64                   ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 %i.aj
  store i8 -1, ptr %i.ak, align 1, !tbaa !45
  %i.al = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 6496
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !99
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.z
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.aj
  store i64 -1, ptr %i.ar, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 6512
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !113
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !55
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.z
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.aj
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.ay, align 2, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 0, ptr %i.az, align 2, !tbaa !60
  %i.ba = load ptr, ptr @img, align 8, !tbaa !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 168
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !49
  %i.bd = or disjoint i32 %i.k, 1                 ; 4 uses
  %i.be = add i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 6488
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !98
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !43
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.z
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = sext i32 %i.be to i64                   ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 %i.bk
  store i8 -1, ptr %i.bl, align 1, !tbaa !45
  %i.bm = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 6496
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !99
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.z
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !103
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bk
  store i64 -1, ptr %i.bs, align 8, !tbaa !105
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 6512
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !113
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !55
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.z
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !57
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bk
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.bz, align 2, !tbaa !60
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i16 0, ptr %i.ca, align 2, !tbaa !60
  %i.cb = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 172
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !48
  %i.ce = add nsw i32 %i.cd, 1
  %i.cf = sext i32 %i.ce to i64                   ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 168
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !49
  %i.ci = add i32 %i.k, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 6488
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !98
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !43
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cf
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !44
  %i.co = sext i32 %i.ci to i64                   ; 3 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store i8 -1, ptr %i.cp, align 1, !tbaa !45
  %i.cq = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6496
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !101
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cf
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !103
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.co
  store i64 -1, ptr %i.cw, align 8, !tbaa !105
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 6512
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !113
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !55
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.cf
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !57
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.co
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.dd, align 2, !tbaa !60
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store i16 0, ptr %i.de, align 2, !tbaa !60
  %i.df = load ptr, ptr @img, align 8, !tbaa !16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 168
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !49
  %i.di = add i32 %i.bd, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 6488
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !98
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !43
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.cf
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !44
  %i.do = sext i32 %i.di to i64                   ; 3 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dn, i64 %i.do
  store i8 -1, ptr %i.dp, align 1, !tbaa !45
  %i.dq = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 6496
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !99
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !101
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.cf
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.do
  store i64 -1, ptr %i.dw, align 8, !tbaa !105
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 6512
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !113
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !55
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.cf
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.do
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.ed, align 2, !tbaa !60
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i16 0, ptr %i.ee, align 2, !tbaa !60
  %i.ef = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 172
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !48
  %i.ei = add nsw i32 %i.eh, 2
  %i.ej = sext i32 %i.ei to i64                   ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 168
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !49
  %i.em = add i32 %i.k, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.dq, i64 6488
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !43
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ej
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !44
  %i.es = sext i32 %i.em to i64                   ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  store i8 -1, ptr %i.et, align 1, !tbaa !45
  %i.eu = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 6496
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !99
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !101
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ej
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !103
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.es
  store i64 -1, ptr %i.fa, align 8, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 6512
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !113
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ej
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !57
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.es
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.fh, align 2, !tbaa !60
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 2
  store i16 0, ptr %i.fi, align 2, !tbaa !60
  %i.fj = load ptr, ptr @img, align 8, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 168
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !49
  %i.fm = add i32 %i.bd, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 6488
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !98
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !43
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ej
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.fs = sext i32 %i.fm to i64                   ; 3 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fr, i64 %i.fs
  store i8 -1, ptr %i.ft, align 1, !tbaa !45
  %i.fu = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 6496
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !99
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !101
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ej
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !103
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.fs
  store i64 -1, ptr %i.ga, align 8, !tbaa !105
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fu, i64 6512
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !113
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !55
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.gd, i64 %i.ej
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !57
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %i.fs
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.gh, align 2, !tbaa !60
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 2
  store i16 0, ptr %i.gi, align 2, !tbaa !60
  %i.gj = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 172
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !48
  %i.gm = add nsw i32 %i.gl, 3
  %i.gn = sext i32 %i.gm to i64                   ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 168
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !49
  %i.gq = add i32 %i.k, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fu, i64 6488
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !98
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !43
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gn
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !44
  %i.gw = sext i32 %i.gq to i64                   ; 3 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %i.gw
  store i8 -1, ptr %i.gx, align 1, !tbaa !45
  %i.gy = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 6496
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !99
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !101
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %i.gn
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !103
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.gw
  store i64 -1, ptr %i.he, align 8, !tbaa !105
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gy, i64 6512
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !113
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !55
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.gn
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !57
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.gw
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.hl, align 2, !tbaa !60
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  store i16 0, ptr %i.hm, align 2, !tbaa !60
  %i.hn = load ptr, ptr @img, align 8, !tbaa !16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 168
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !49
  %i.hq = add i32 %i.bd, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gy, i64 6488
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !98
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !43
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.gn
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !44
  %i.hw = sext i32 %i.hq to i64                   ; 3 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hv, i64 %i.hw
  store i8 -1, ptr %i.hx, align 1, !tbaa !45
  %i.hy = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 6496
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !99
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !101
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.gn
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !103
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.hw
  store i64 -1, ptr %i.ie, align 8, !tbaa !105
  %i.if = getelementptr inbounds nuw i8, ptr %i.hy, i64 6512
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !113
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !55
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.gn
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !57
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.hw
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.il, align 2, !tbaa !60
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  store i16 0, ptr %i.im, align 2, !tbaa !60
  br label %.loopexit

.split330.us.us:                                  ; preds = %.split330.us.us.preheader, %.split332.us.us.split
  %indvars.iv414 = phi i64 [ 0, %.split330.us.us.preheader ], [ %indvars.iv.next415, %.split332.us.us.split ] ; 4 uses
  %i.in = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 172
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !48
  %i.iq = trunc nuw nsw i64 %indvars.iv414 to i32
  %i.ir = add nsw i32 %i.ip, %i.iq
  %i.is = sext i32 %i.ir to i64                   ; 12 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 168
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !49
  %i.iv = add i32 %i.k, %i.iu
  %i.iw = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 6488
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !98
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !43
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.is
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !44
  %i.jc = sext i32 %i.iv to i64                   ; 6 uses
  %i.jd = getelementptr inbounds i8, ptr %i.jb, i64 %i.jc
  store i8 -1, ptr %i.jd, align 1, !tbaa !45
  %i.je = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 6496
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !99
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !101
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.is
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !103
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.jj, i64 %i.jc
  store i64 -1, ptr %i.jk, align 8, !tbaa !105
  %i.jl = getelementptr inbounds nuw i8, ptr %i.je, i64 6512
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !113
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !55
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jn, i64 %i.is
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !57
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.jc
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.jr, align 2, !tbaa !60
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  store i16 0, ptr %i.js, align 2, !tbaa !60
  %i.jt = getelementptr inbounds nuw i8, ptr %i.je, i64 6488
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !98
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !43
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.is
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !44
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jc
  store i8 %i.r, ptr %i.jz, align 1, !tbaa !45
  %.pre437 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  br i1 %i.s, label %bb.b, label %.thread294.us.us.1

bb.b:                                             ; preds = %.split330.us.us
  %i.ka = load ptr, ptr @img, align 8, !tbaa !16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 14384
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !47
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %indvars.iv414
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !51
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.v
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !53
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !55
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.t
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !57
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kk, i64 %i.n
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !59 ; 2 uses
  %i.kn = getelementptr [264 x i8], ptr %.pre437, i64 %i.p
  %i.ko = getelementptr i8, ptr %i.kn, i64 288
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.t
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !105
  %i.kr = getelementptr inbounds nuw i8, ptr %.pre437, i64 6496
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !99
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !101
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.is
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !103
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kw, i64 %i.jc
  store i64 %i.kq, ptr %i.kx, align 8, !tbaa !105
  %i.ky = load i16, ptr %i.km, align 2, !tbaa !60
  %i.kz = getelementptr inbounds nuw i8, ptr %.pre437, i64 6512
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !113
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !55
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.is
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !57
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.jc
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !59 ; 2 uses
  store i16 %i.ky, ptr %i.lg, align 2, !tbaa !60
  %i.lh = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !60
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 2
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !60
  br label %.thread294.us.us.1

.thread294.us.us.1:                               ; preds = %bb.b, %.split330.us.us
  %i.lk = load ptr, ptr @img, align 8, !tbaa !16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 168
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !49
  %i.ln = add i32 %9, %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.pre437, i64 6488
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !98
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !43
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.lq, i64 %i.is
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !44
  %i.lt = sext i32 %i.ln to i64                   ; 6 uses
  %i.lu = getelementptr inbounds i8, ptr %i.ls, i64 %i.lt
  store i8 -1, ptr %i.lu, align 1, !tbaa !45
  %i.lv = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 6496
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !99
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !101
  %i.lz = getelementptr inbounds [8 x i8], ptr %i.ly, i64 %i.is
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !103
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.lt
  store i64 -1, ptr %i.mb, align 8, !tbaa !105
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lv, i64 6512
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !113
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !55
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.is
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !57
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.mg, i64 %i.lt
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.mi, align 2, !tbaa !60
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  store i16 0, ptr %i.mj, align 2, !tbaa !60
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lv, i64 6488
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !98
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !43
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.mn, i64 %i.is
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !44
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %i.lt
  store i8 %i.r, ptr %i.mq, align 1, !tbaa !45
  br i1 %i.s, label %bb.c, label %.split332.us.us.split

bb.c:                                             ; preds = %.thread294.us.us.1
  %i.mr = load ptr, ptr @img, align 8, !tbaa !16
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 14384
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !47
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv414
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !51
  %i.mw = getelementptr [8 x i8], ptr %i.mv, i64 %i.v
  %10 = getelementptr i8, ptr %i.mw, i64 8
  %i.mx = load ptr, ptr %10, align 8, !tbaa !53
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !55
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.t
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !57
  %i.nc = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.n
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !59 ; 2 uses
  %i.ne = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.nf = getelementptr [264 x i8], ptr %i.ne, i64 %i.p
  %i.ng = getelementptr i8, ptr %i.nf, i64 288
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.t
  %i.ni = load i64, ptr %i.nh, align 8, !tbaa !105
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 6496
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !99
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !101
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.nm, i64 %i.is
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !103
  %i.np = getelementptr inbounds [8 x i8], ptr %i.no, i64 %i.lt
  store i64 %i.ni, ptr %i.np, align 8, !tbaa !105
  %i.nq = load i16, ptr %i.nd, align 2, !tbaa !60
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ne, i64 6512
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !113
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !55
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nu, i64 %i.is
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !57
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.nw, i64 %i.lt
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !59 ; 2 uses
  store i16 %i.nq, ptr %i.ny, align 2, !tbaa !60
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nd, i64 2
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !60
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  store i16 %i.oa, ptr %i.ob, align 2, !tbaa !60
  br label %.split332.us.us.split

.split332.us.us.split:                            ; preds = %bb.c, %.thread294.us.us.1
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %exitcond417.not = icmp eq i64 %indvars.iv.next415, 4
  br i1 %exitcond417.not, label %.loopexit, label %.split330.us.us, !llvm.loop !281

bb.d:                                             ; preds = %bb.a
  %i.oc = icmp eq i8 %1, 1
  %i.od = load ptr, ptr @img, align 8, !tbaa !16  ; 7 uses
  br i1 %i.oc, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 172
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !48 ; 3 uses
  %i.og = and i32 %2, 2                           ; 2 uses
  %i.oh = add nsw i32 %i.of, %i.og
  %i.oi = or disjoint i32 %i.og, 4                ; 2 uses
  %i.oj = add i32 %i.oi, %i.of
  %i.ok = icmp slt i32 %i.oh, %i.oj
  br i1 %i.ok, label %.lr.ph, label %.loopexit302

.lr.ph:                                           ; preds = %bb.e
  %i.ol = shl i32 %2, 1
  %i.om = and i32 %i.ol, 2                        ; 2 uses
  %.mask = shl i32 %2, 4
  %i.on = and i32 %.mask, 16
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = trunc i32 %2 to i1
  %i.oq = select i1 %i.op, i32 -2, i32 0
  %i.or = add nuw nsw i32 %i.om, 3
  %.lobit = and i32 %2, 2
  %i.os = zext nneg i32 %.lobit to i64
  %i.ot = sext i32 %i.of to i64
  %i.ou = add nsw i64 %i.os, %i.ot
  %.pre430 = load ptr, ptr @enc_picture, align 8, !tbaa !65
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.ov = phi ptr [ %.pre430, %.lr.ph ], [ %i.pp, %bb.f ]
  %indvars.iv372 = phi i64 [ %i.ou, %.lr.ph ], [ %indvars.iv.next373, %bb.f ] ; 4 uses
  %i.ow = phi ptr [ %i.od, %.lr.ph ], [ %i.qd, %bb.f ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 168
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !49 ; 4 uses
  %i.oz = add nsw i32 %i.oy, %i.om                ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ov, i64 6488
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !98
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !43
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %indvars.iv372
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !44
  %i.pf = sext i32 %i.oz to i64                   ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pe, i64 %i.pf
  store i32 -1, ptr %i.pg, align 1
  %i.ph = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 6512
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !113
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !55
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %indvars.iv372
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !57
  %i.pn = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %i.pf
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.po, i8 0, i64 16, i1 false)
  %i.pp = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 6496
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !99
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !101
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %indvars.iv372
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !103
  %scevgep = getelementptr i8, ptr %i.pu, i64 %i.oo
  %i.pv = sext i32 %i.oy to i64
  %i.pw = shl nsw i64 %i.pv, 3
  %scevgep368 = getelementptr i8, ptr %scevgep, i64 %i.pw
  %i.px = add i32 %i.or, %i.oy
  %smax = tail call i32 @llvm.smax.i32(i32 %i.px, i32 %i.oz)
  %i.py = add i32 %i.oq, %smax
  %i.pz = sub i32 %i.py, %i.oy
  %i.qa = zext i32 %i.pz to i64
  %i.qb = shl nuw nsw i64 %i.qa, 3
  %i.qc = add nuw nsw i64 %i.qb, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep368, i8 -1, i64 %i.qc, i1 false), !tbaa !105
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, 1 ; 2 uses
  %i.qd = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 172
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !48
  %i.qg = add i32 %i.oi, %i.qf
  %i.qh = sext i32 %i.qg to i64
  %i.qi = icmp slt i64 %indvars.iv.next373, %i.qh
  br i1 %i.qi, label %bb.f, label %.loopexit302, !llvm.loop !282

bb.g:                                             ; preds = %bb.d
  %i.qj = getelementptr inbounds nuw i8, ptr %i.od, i64 14410
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !60
  %.not286 = icmp eq i16 %i.qk, 0
  %i.ql = and i32 %2, 2                           ; 5 uses
  %i.qm = shl i32 %2, 1
  %i.qn = and i32 %i.qm, 2                        ; 5 uses
  br i1 %.not286, label %.preheader303, label %.preheader305

.preheader305:                                    ; preds = %bb.g
  %i.qo = sext i32 %3 to i64
  %.pre429 = load ptr, ptr @enc_picture, align 8, !tbaa !65
  br label %bb.h

.preheader303:                                    ; preds = %bb.g
  %i.qp = trunc i32 %4 to i8                      ; 4 uses
  %i.qq = sext i32 %4 to i64                      ; 20 uses
  %i.qr = sext i32 %3 to i64                      ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.od, i64 172
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !48
  %i.qu = add i32 %i.ql, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.od, i64 168
  %i.qw = load i32, ptr %i.qv, align 8, !tbaa !49
  %i.qx = add nsw i32 %i.qw, %i.qn
  %i.qy = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 6488
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !98
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !43
  %i.rc = sext i32 %i.qu to i64                   ; 3 uses
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rc
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !44
  %i.rf = sext i32 %i.qx to i64                   ; 6 uses
  %i.rg = getelementptr inbounds i8, ptr %i.re, i64 %i.rf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.rg, i8 %i.qp, i64 4, i1 false)
  %i.rh = load ptr, ptr @img, align 8, !tbaa !16  ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 14384
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !47
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !51 ; 4 uses
  %i.rl = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 24
  %i.rn = getelementptr inbounds [264 x i8], ptr %i.rm, i64 %i.qr
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.rn, i64 %i.qq ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 6496
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !99
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !101
  %i.rs = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.rc
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !103 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 6512
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !113
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !55
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.rc
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !57 ; 4 uses
  %i.rz = load ptr, ptr %i.rk, align 8, !tbaa !53
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !55
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.sa, i64 %i.qq
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !57
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !59 ; 2 uses
  %i.sf = load i64, ptr %i.ro, align 8, !tbaa !105 ; 2 uses
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %i.rf
  store i64 %i.sf, ptr %i.sg, align 8, !tbaa !105
  %i.sh = load i16, ptr %i.se, align 2, !tbaa !60
  %i.si = getelementptr inbounds [8 x i8], ptr %i.ry, i64 %i.rf
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !59 ; 2 uses
  store i16 %i.sh, ptr %i.sj, align 2, !tbaa !60
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 2
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !60
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  store i16 %i.sl, ptr %i.sm, align 2, !tbaa !60
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !53
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !55
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %i.qq
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !57
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !59 ; 2 uses
  %i.su = add nsw i64 %i.rf, 1                    ; 2 uses
  %i.sv = getelementptr inbounds [8 x i8], ptr %i.rt, i64 %i.su
end_hunk_0
begin_hunk_1_@assign_enc_picture_params:bb.a
  %i.ang = load i16, ptr %i.als, align 2, !tbaa !60
  %i.anh = icmp eq i16 %i.ang, 1
  %.pn449.in = select i1 %i.anh, ptr %i.amj, ptr %i.ami
  %.pn449 = load ptr, ptr %.pn449.in, align 8, !tbaa !114
  %.pn448.in = getelementptr inbounds nuw i8, ptr %.pn449, i64 16
  %.pn448 = load ptr, ptr %.pn448.in, align 8, !tbaa !51
  %.pn291.in.2 = getelementptr inbounds nuw [8 x i8], ptr %.pn448, i64 %indvars.iv379
  %.pn291.2 = load ptr, ptr %.pn291.in.2, align 8, !tbaa !53
  %.pn290.in.in.2 = getelementptr inbounds nuw i8, ptr %.pn291.2, i64 8
  %.pn290.in.2 = load ptr, ptr %.pn290.in.in.2, align 8, !tbaa !55
  %.pn290.2 = load ptr, ptr %.pn290.in.2, align 8, !tbaa !57
  %.in289.2 = getelementptr inbounds nuw i8, ptr %.pn290.2, i64 8
  %i.ani = load ptr, ptr %.in289.2, align 8, !tbaa !59 ; 2 uses
  %i.anj = load i64, ptr %i.alv, align 8, !tbaa !105 ; 2 uses
  %i.ank = add nsw i64 %i.alp, 2                  ; 2 uses
  %i.anl = getelementptr inbounds [8 x i8], ptr %i.amb, i64 %i.ank
  store i64 %i.anj, ptr %i.anl, align 8, !tbaa !105
  %i.anm = load i16, ptr %i.ani, align 2, !tbaa !60
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.amh, i64 %i.ank
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !59 ; 2 uses
  store i16 %i.anm, ptr %i.ano, align 2, !tbaa !60
  %i.anp = getelementptr inbounds nuw i8, ptr %i.ani, i64 2
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !60
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 2
  store i16 %i.anq, ptr %i.anr, align 2, !tbaa !60
  %i.ans = load i16, ptr %i.als, align 2, !tbaa !60
  %i.ant = icmp eq i16 %i.ans, 1
  %.pn451.in = select i1 %i.ant, ptr %i.amj, ptr %i.ami
  %.pn451 = load ptr, ptr %.pn451.in, align 8, !tbaa !114
  %.pn450.in = getelementptr inbounds nuw i8, ptr %.pn451, i64 24
  %.pn450 = load ptr, ptr %.pn450.in, align 8, !tbaa !51
  %.pn291.in.3 = getelementptr inbounds nuw [8 x i8], ptr %.pn450, i64 %indvars.iv379
  %.pn291.3 = load ptr, ptr %.pn291.in.3, align 8, !tbaa !53
  %.pn290.in.in.3 = getelementptr inbounds nuw i8, ptr %.pn291.3, i64 8
  %.pn290.in.3 = load ptr, ptr %.pn290.in.in.3, align 8, !tbaa !55
  %.pn290.3 = load ptr, ptr %.pn290.in.3, align 8, !tbaa !57
  %.in289.3 = getelementptr inbounds nuw i8, ptr %.pn290.3, i64 8
  %i.anu = load ptr, ptr %.in289.3, align 8, !tbaa !59 ; 2 uses
  %i.anv = add nsw i64 %i.alp, 3                  ; 2 uses
  %i.anw = getelementptr inbounds [8 x i8], ptr %i.amb, i64 %i.anv
  store i64 %i.anj, ptr %i.anw, align 8, !tbaa !105
  %i.anx = load i16, ptr %i.anu, align 2, !tbaa !60
  %i.any = getelementptr inbounds [8 x i8], ptr %i.amh, i64 %i.anv
  %i.anz = load ptr, ptr %i.any, align 8, !tbaa !59 ; 2 uses
  store i16 %i.anx, ptr %i.anz, align 2, !tbaa !60
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anu, i64 2
  %i.aob = load i16, ptr %i.aoa, align 2, !tbaa !60
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anz, i64 2
  store i16 %i.aob, ptr %i.aoc, align 2, !tbaa !60
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next380, 4
  br i1 %exitcond382.not, label %.loopexit, label %bb.m, !llvm.loop !285

bb.n:                                             ; preds = %.preheader298, %.split324.us
  %i.aod = phi ptr [ %.pre432, %.preheader298 ], [ %i.aow, %.split324.us ]
  %indvars.iv391 = phi i64 [ 0, %.preheader298 ], [ %indvars.iv.next392, %.split324.us ] ; 3 uses
  %i.aoe = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 172
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !48
  %i.aoh = trunc i64 %indvars.iv391 to i32
  %i.aoi = add i32 %i.aig, %i.aoh
  %i.aoj = add i32 %i.aoi, %i.aog
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoe, i64 168
  %i.aol = load i32, ptr %i.aok, align 8, !tbaa !49
  %i.aom = add nsw i32 %i.aol, %i.aks
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aod, i64 6488
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !98
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 8
  %i.aoq = load ptr, ptr %i.aop, align 8, !tbaa !43
  %i.aor = sext i32 %i.aoj to i64                 ; 3 uses
  %i.aos = getelementptr inbounds [8 x i8], ptr %i.aoq, i64 %i.aor
  %i.aot = load ptr, ptr %i.aos, align 8, !tbaa !44
  %i.aou = sext i32 %i.aom to i64                 ; 10 uses
  %i.aov = getelementptr inbounds i8, ptr %i.aot, i64 %i.aou
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.aov, i8 %i.aku, i64 4, i1 false)
  %i.aow = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.aox = getelementptr [264 x i8], ptr %i.aow, i64 %i.akv
  %i.aoy = getelementptr i8, ptr %i.aox, i64 288
  %i.aoz = getelementptr inbounds [8 x i8], ptr %i.aoy, i64 %i.akw ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 6496
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !99
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !101
  %i.ape = getelementptr inbounds [8 x i8], ptr %i.apd, i64 %i.aor
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !103 ; 8 uses
  br i1 %i.akx, label %.split322.us, label %.split322.preheader

.split322.preheader:                              ; preds = %bb.n
  %i.apg = load i64, ptr %i.aoz, align 8, !tbaa !105 ; 2 uses
  %i.aph = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aou
  store i64 %i.apg, ptr %i.aph, align 8, !tbaa !105
  %i.api = getelementptr [8 x i8], ptr %i.apf, i64 %i.aou
  %i.apj = getelementptr i8, ptr %i.api, i64 8
  store i64 %i.apg, ptr %i.apj, align 8, !tbaa !105
  %i.apk = load i64, ptr %i.aoz, align 8, !tbaa !105 ; 2 uses
  %i.apl = getelementptr [8 x i8], ptr %i.apf, i64 %i.aou
  %i.apm = getelementptr i8, ptr %i.apl, i64 16
  store i64 %i.apk, ptr %i.apm, align 8, !tbaa !105
  %i.apn = getelementptr [8 x i8], ptr %i.apf, i64 %i.aou
  %i.apo = getelementptr i8, ptr %i.apn, i64 24
  store i64 %i.apk, ptr %i.apo, align 8, !tbaa !105
  br label %.split324.us

.split322.us:                                     ; preds = %bb.n
  %i.app = getelementptr inbounds nuw i8, ptr %i.aow, i64 6512
  %i.apq = load ptr, ptr @img, align 8
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 14384
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !47
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.aps, i64 %indvars.iv391
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !51 ; 4 uses
  %i.apv = load ptr, ptr %i.app, align 8, !tbaa !113
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 8
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !55
  %i.apy = getelementptr inbounds [8 x i8], ptr %i.apx, i64 %i.aor
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !57 ; 4 uses
  %i.aqa = load i64, ptr %i.aoz, align 8, !tbaa !105 ; 2 uses
  %i.aqb = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aou
  store i64 %i.aqa, ptr %i.aqb, align 8, !tbaa !105
  %i.aqc = load ptr, ptr %i.apu, align 8, !tbaa !53
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !55
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.aqe, i64 %i.akw
  %i.aqg = load ptr, ptr %i.aqf, align 8, !tbaa !57
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !59 ; 2 uses
  %i.aqj = load i16, ptr %i.aqi, align 2, !tbaa !60
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.apz, i64 %i.aou
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !59 ; 2 uses
  store i16 %i.aqj, ptr %i.aql, align 2, !tbaa !60
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqi, i64 2
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !60
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aql, i64 2
  store i16 %i.aqn, ptr %i.aqo, align 2, !tbaa !60
  %i.aqp = add nsw i64 %i.aou, 1                  ; 2 uses
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.aqp
  store i64 %i.aqa, ptr %i.aqq, align 8, !tbaa !105
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.apu, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !53
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !55
  %i.aqv = getelementptr inbounds nuw [8 x i8], ptr %i.aqu, i64 %i.akw
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !57
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqw, i64 8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !59 ; 2 uses
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !60
  %i.ara = getelementptr inbounds [8 x i8], ptr %i.apz, i64 %i.aqp
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !59 ; 2 uses
  store i16 %i.aqz, ptr %i.arb, align 2, !tbaa !60
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 2
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !60
  %i.are = getelementptr inbounds nuw i8, ptr %i.arb, i64 2
  store i16 %i.ard, ptr %i.are, align 2, !tbaa !60
  %i.arf = load i64, ptr %i.aoz, align 8, !tbaa !105 ; 2 uses
  %i.arg = add nsw i64 %i.aou, 2                  ; 2 uses
  %i.arh = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.arg
  store i64 %i.arf, ptr %i.arh, align 8, !tbaa !105
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !53
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !55
  %i.arm = getelementptr inbounds nuw [8 x i8], ptr %i.arl, i64 %i.akw
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !57
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !59 ; 2 uses
  %i.arq = load i16, ptr %i.arp, align 2, !tbaa !60
  %i.arr = getelementptr inbounds [8 x i8], ptr %i.apz, i64 %i.arg
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !59 ; 2 uses
  store i16 %i.arq, ptr %i.ars, align 2, !tbaa !60
  %i.art = getelementptr inbounds nuw i8, ptr %i.arp, i64 2
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !60
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ars, i64 2
  store i16 %i.aru, ptr %i.arv, align 2, !tbaa !60
  %i.arw = add nsw i64 %i.aou, 3                  ; 2 uses
  %i.arx = getelementptr inbounds [8 x i8], ptr %i.apf, i64 %i.arw
  store i64 %i.arf, ptr %i.arx, align 8, !tbaa !105
  %i.ary = getelementptr inbounds nuw i8, ptr %i.apu, i64 24
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !53
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arz, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !55
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.akw
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !57
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 8
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !59 ; 2 uses
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !60
  %i.ash = getelementptr inbounds [8 x i8], ptr %i.apz, i64 %i.arw
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !59 ; 2 uses
  store i16 %i.asg, ptr %i.asi, align 2, !tbaa !60
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asf, i64 2
  %i.ask = load i16, ptr %i.asj, align 2, !tbaa !60
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asi, i64 2
  store i16 %i.ask, ptr %i.asl, align 2, !tbaa !60
  br label %.split324.us

.split324.us:                                     ; preds = %.split322.preheader, %.split322.us
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond394.not = icmp eq i64 %indvars.iv.next392, 4
  br i1 %exitcond394.not, label %.loopexit, label %bb.n, !llvm.loop !286

bb.o:                                             ; preds = %.preheader307, %.split311.us
  %i.asm = phi i1 [ true, %.preheader307 ], [ false, %.split311.us ]
  %indvars.iv349 = phi i64 [ 0, %.preheader307 ], [ 1, %.split311.us ] ; 2 uses
  %i.asn = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 172
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !48
  %11 = trunc nuw nsw i64 %indvars.iv349 to i32
  %12 = or disjoint i32 %i.a, %11
  %i.asq = add i32 %12, %i.asp
  %13 = or disjoint i64 %indvars.iv349, %i.j      ; 12 uses
  %i.asr = sext i32 %i.asq to i64                 ; 56 uses
  br i1 %i.b, label %.thread.us.preheader, label %.split

.thread.us.preheader:                             ; preds = %bb.o
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asn, i64 168
  %i.ast = load i32, ptr %i.ass, align 8, !tbaa !49
  %i.asu = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 6488
  %i.asw = load ptr, ptr %i.asv, align 8, !tbaa !98
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !43
  %i.asy = getelementptr inbounds [8 x i8], ptr %i.asx, i64 %i.asr
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !44
  %i.ata = sext i32 %i.ast to i64                 ; 6 uses
  %i.atb = getelementptr inbounds i8, ptr %i.asz, i64 %i.ata
  store i8 -1, ptr %i.atb, align 1, !tbaa !45
  %i.atc = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %i.atc, i64 6496
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !99
  %i.atf = load ptr, ptr %i.ate, align 8, !tbaa !101
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.atf, i64 %i.asr
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !103
  %i.ati = getelementptr inbounds [8 x i8], ptr %i.ath, i64 %i.ata
  store i64 -1, ptr %i.ati, align 8, !tbaa !105
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atc, i64 6512
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !113
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !55
  %i.atm = getelementptr inbounds [8 x i8], ptr %i.atl, i64 %i.asr
  %i.atn = load ptr, ptr %i.atm, align 8, !tbaa !57
  %i.ato = getelementptr inbounds [8 x i8], ptr %i.atn, i64 %i.ata
  %i.atp = load ptr, ptr %i.ato, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.atp, align 2, !tbaa !60
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 2
  store i16 0, ptr %i.atq, align 2, !tbaa !60
  br i1 %.not285, label %.thread.us.preheader..thread.us.1_crit_edge, label %.thread293.us

.thread.us.preheader..thread.us.1_crit_edge:      ; preds = %.thread.us.preheader
  %.pre420 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.1

.thread293.us:                                    ; preds = %.thread.us.preheader
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atc, i64 6488
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !98
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !43
  %i.atv = getelementptr inbounds [8 x i8], ptr %i.atu, i64 %i.asr
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !44
  %i.atx = getelementptr inbounds i8, ptr %i.atw, i64 %i.ata
  store i8 %i.g, ptr %i.atx, align 1, !tbaa !45
  %.pre421 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre422 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.p, label %.thread.us.1

bb.p:                                             ; preds = %.thread293.us
  %i.aty = getelementptr inbounds nuw i8, ptr %.pre421, i64 14384
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !47
  %i.aua = getelementptr inbounds [8 x i8], ptr %i.atz, i64 %13
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !51
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !53
  %i.aud = getelementptr inbounds nuw i8, ptr %i.auc, i64 8
  %i.aue = load ptr, ptr %i.aud, align 8, !tbaa !55
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.aue, i64 %i.i
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !57
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 16
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !59 ; 2 uses
  %i.auj = getelementptr [264 x i8], ptr %.pre422, i64 %i.e
  %i.auk = getelementptr i8, ptr %i.auj, i64 288
  %i.aul = getelementptr inbounds nuw [8 x i8], ptr %i.auk, i64 %i.i
  %i.aum = load i64, ptr %i.aul, align 8, !tbaa !105
  %i.aun = getelementptr inbounds nuw i8, ptr %.pre422, i64 6496
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !99
  %i.aup = getelementptr inbounds nuw i8, ptr %i.auo, i64 8
  %i.auq = load ptr, ptr %i.aup, align 8, !tbaa !101
  %i.aur = getelementptr inbounds [8 x i8], ptr %i.auq, i64 %i.asr
  %i.aus = load ptr, ptr %i.aur, align 8, !tbaa !103
  %i.aut = getelementptr inbounds [8 x i8], ptr %i.aus, i64 %i.ata
  store i64 %i.aum, ptr %i.aut, align 8, !tbaa !105
  %i.auu = load i16, ptr %i.aui, align 2, !tbaa !60
  %i.auv = getelementptr inbounds nuw i8, ptr %.pre422, i64 6512
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !113
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !55
  %i.auz = getelementptr inbounds [8 x i8], ptr %i.auy, i64 %i.asr
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !57
  %i.avb = getelementptr inbounds [8 x i8], ptr %i.ava, i64 %i.ata
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !59 ; 2 uses
  store i16 %i.auu, ptr %i.avc, align 2, !tbaa !60
  %i.avd = getelementptr inbounds nuw i8, ptr %i.aui, i64 2
  %i.ave = load i16, ptr %i.avd, align 2, !tbaa !60
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avc, i64 2
  store i16 %i.ave, ptr %i.avf, align 2, !tbaa !60
  br label %.thread.us.1

.thread.us.1:                                     ; preds = %.thread.us.preheader..thread.us.1_crit_edge, %bb.p, %.thread293.us
  %i.avg = phi ptr [ %i.atc, %.thread.us.preheader..thread.us.1_crit_edge ], [ %.pre422, %bb.p ], [ %.pre422, %.thread293.us ]
  %i.avh = phi ptr [ %.pre420, %.thread.us.preheader..thread.us.1_crit_edge ], [ %.pre421, %bb.p ], [ %.pre421, %.thread293.us ]
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 168
  %i.avj = load i32, ptr %i.avi, align 8, !tbaa !49
  %i.avk = add nsw i32 %i.avj, 1
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avg, i64 6488
  %i.avm = load ptr, ptr %i.avl, align 8, !tbaa !98
  %i.avn = load ptr, ptr %i.avm, align 8, !tbaa !43
  %i.avo = getelementptr inbounds [8 x i8], ptr %i.avn, i64 %i.asr
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !44
  %i.avq = sext i32 %i.avk to i64                 ; 6 uses
  %i.avr = getelementptr inbounds i8, ptr %i.avp, i64 %i.avq
  store i8 -1, ptr %i.avr, align 1, !tbaa !45
  %i.avs = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avs, i64 6496
  %i.avu = load ptr, ptr %i.avt, align 8, !tbaa !99
  %i.avv = load ptr, ptr %i.avu, align 8, !tbaa !101
  %i.avw = getelementptr inbounds [8 x i8], ptr %i.avv, i64 %i.asr
  %i.avx = load ptr, ptr %i.avw, align 8, !tbaa !103
  %i.avy = getelementptr inbounds [8 x i8], ptr %i.avx, i64 %i.avq
  store i64 -1, ptr %i.avy, align 8, !tbaa !105
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avs, i64 6512
  %i.awa = load ptr, ptr %i.avz, align 8, !tbaa !113
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !55
  %i.awc = getelementptr inbounds [8 x i8], ptr %i.awb, i64 %i.asr
  %i.awd = load ptr, ptr %i.awc, align 8, !tbaa !57
  %i.awe = getelementptr inbounds [8 x i8], ptr %i.awd, i64 %i.avq
  %i.awf = load ptr, ptr %i.awe, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.awf, align 2, !tbaa !60
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 2
  store i16 0, ptr %i.awg, align 2, !tbaa !60
  br i1 %.not285, label %.thread.us.1..thread.us.2_crit_edge, label %.thread293.us.1

.thread.us.1..thread.us.2_crit_edge:              ; preds = %.thread.us.1
  %.pre423 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.2

.thread293.us.1:                                  ; preds = %.thread.us.1
  %i.awh = getelementptr inbounds nuw i8, ptr %i.avs, i64 6488
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !98
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 8
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !43
  %i.awl = getelementptr inbounds [8 x i8], ptr %i.awk, i64 %i.asr
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !44
  %i.awn = getelementptr inbounds i8, ptr %i.awm, i64 %i.avq
  store i8 %i.g, ptr %i.awn, align 1, !tbaa !45
  %.pre424 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre425 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.q, label %.thread.us.2

bb.q:                                             ; preds = %.thread293.us.1
  %i.awo = getelementptr inbounds nuw i8, ptr %.pre424, i64 14384
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !47
  %i.awq = getelementptr inbounds [8 x i8], ptr %i.awp, i64 %13
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !51
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 8
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !53
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !55
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.awv, i64 %i.i
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !57
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awx, i64 16
  %i.awz = load ptr, ptr %i.awy, align 8, !tbaa !59 ; 2 uses
  %i.axa = getelementptr [264 x i8], ptr %.pre425, i64 %i.e
  %i.axb = getelementptr i8, ptr %i.axa, i64 288
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.axb, i64 %i.i
  %i.axd = load i64, ptr %i.axc, align 8, !tbaa !105
  %i.axe = getelementptr inbounds nuw i8, ptr %.pre425, i64 6496
  %i.axf = load ptr, ptr %i.axe, align 8, !tbaa !99
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !101
  %i.axi = getelementptr inbounds [8 x i8], ptr %i.axh, i64 %i.asr
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !103
  %i.axk = getelementptr inbounds [8 x i8], ptr %i.axj, i64 %i.avq
  store i64 %i.axd, ptr %i.axk, align 8, !tbaa !105
  %i.axl = load i16, ptr %i.awz, align 2, !tbaa !60
  %i.axm = getelementptr inbounds nuw i8, ptr %.pre425, i64 6512
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !113
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !55
  %i.axq = getelementptr inbounds [8 x i8], ptr %i.axp, i64 %i.asr
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !57
  %i.axs = getelementptr inbounds [8 x i8], ptr %i.axr, i64 %i.avq
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !59 ; 2 uses
  store i16 %i.axl, ptr %i.axt, align 2, !tbaa !60
  %i.axu = getelementptr inbounds nuw i8, ptr %i.awz, i64 2
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !60
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axt, i64 2
  store i16 %i.axv, ptr %i.axw, align 2, !tbaa !60
  br label %.thread.us.2

.thread.us.2:                                     ; preds = %.thread.us.1..thread.us.2_crit_edge, %bb.q, %.thread293.us.1
  %i.axx = phi ptr [ %i.avs, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre425, %bb.q ], [ %.pre425, %.thread293.us.1 ]
  %i.axy = phi ptr [ %.pre423, %.thread.us.1..thread.us.2_crit_edge ], [ %.pre424, %bb.q ], [ %.pre424, %.thread293.us.1 ]
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 168
  %i.aya = load i32, ptr %i.axz, align 8, !tbaa !49
  %i.ayb = add nsw i32 %i.aya, 2
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axx, i64 6488
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !98
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !43
  %i.ayf = getelementptr inbounds [8 x i8], ptr %i.aye, i64 %i.asr
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !44
  %i.ayh = sext i32 %i.ayb to i64                 ; 6 uses
  %i.ayi = getelementptr inbounds i8, ptr %i.ayg, i64 %i.ayh
  store i8 -1, ptr %i.ayi, align 1, !tbaa !45
  %i.ayj = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 6496
  %i.ayl = load ptr, ptr %i.ayk, align 8, !tbaa !99
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !101
  %i.ayn = getelementptr inbounds [8 x i8], ptr %i.aym, i64 %i.asr
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !103
  %i.ayp = getelementptr inbounds [8 x i8], ptr %i.ayo, i64 %i.ayh
  store i64 -1, ptr %i.ayp, align 8, !tbaa !105
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayj, i64 6512
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !113
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !55
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.ays, i64 %i.asr
  %i.ayu = load ptr, ptr %i.ayt, align 8, !tbaa !57
  %i.ayv = getelementptr inbounds [8 x i8], ptr %i.ayu, i64 %i.ayh
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.ayw, align 2, !tbaa !60
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 2
  store i16 0, ptr %i.ayx, align 2, !tbaa !60
  br i1 %.not285, label %.thread.us.2..thread.us.3_crit_edge, label %.thread293.us.2

.thread.us.2..thread.us.3_crit_edge:              ; preds = %.thread.us.2
  %.pre426 = load ptr, ptr @img, align 8, !tbaa !16
  br label %.thread.us.3

.thread293.us.2:                                  ; preds = %.thread.us.2
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.ayj, i64 6488
  %i.ayz = load ptr, ptr %i.ayy, align 8, !tbaa !98
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !43
  %i.azc = getelementptr inbounds [8 x i8], ptr %i.azb, i64 %i.asr
  %i.azd = load ptr, ptr %i.azc, align 8, !tbaa !44
  %i.aze = getelementptr inbounds i8, ptr %i.azd, i64 %i.ayh
  store i8 %i.g, ptr %i.aze, align 1, !tbaa !45
  %.pre427 = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %.pre428 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.r, label %.thread.us.3

bb.r:                                             ; preds = %.thread293.us.2
  %i.azf = getelementptr inbounds nuw i8, ptr %.pre427, i64 14384
  %i.azg = load ptr, ptr %i.azf, align 8, !tbaa !47
  %i.azh = getelementptr inbounds [8 x i8], ptr %i.azg, i64 %13
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !51
  %i.azj = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.azk = load ptr, ptr %i.azj, align 8, !tbaa !53
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azk, i64 8
  %i.azm = load ptr, ptr %i.azl, align 8, !tbaa !55
  %i.azn = getelementptr inbounds nuw [8 x i8], ptr %i.azm, i64 %i.i
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !57
  %i.azp = getelementptr inbounds nuw i8, ptr %i.azo, i64 16
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !59 ; 2 uses
  %i.azr = getelementptr [264 x i8], ptr %.pre428, i64 %i.e
  %i.azs = getelementptr i8, ptr %i.azr, i64 288
  %i.azt = getelementptr inbounds nuw [8 x i8], ptr %i.azs, i64 %i.i
  %i.azu = load i64, ptr %i.azt, align 8, !tbaa !105
  %i.azv = getelementptr inbounds nuw i8, ptr %.pre428, i64 6496
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !99
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azw, i64 8
  %i.azy = load ptr, ptr %i.azx, align 8, !tbaa !101
  %i.azz = getelementptr inbounds [8 x i8], ptr %i.azy, i64 %i.asr
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !103
  %i.bab = getelementptr inbounds [8 x i8], ptr %i.baa, i64 %i.ayh
  store i64 %i.azu, ptr %i.bab, align 8, !tbaa !105
  %i.bac = load i16, ptr %i.azq, align 2, !tbaa !60
  %i.bad = getelementptr inbounds nuw i8, ptr %.pre428, i64 6512
  %i.bae = load ptr, ptr %i.bad, align 8, !tbaa !113
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 8
  %i.bag = load ptr, ptr %i.baf, align 8, !tbaa !55
  %i.bah = getelementptr inbounds [8 x i8], ptr %i.bag, i64 %i.asr
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !57
  %i.baj = getelementptr inbounds [8 x i8], ptr %i.bai, i64 %i.ayh
  %i.bak = load ptr, ptr %i.baj, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bac, ptr %i.bak, align 2, !tbaa !60
  %i.bal = getelementptr inbounds nuw i8, ptr %i.azq, i64 2
  %i.bam = load i16, ptr %i.bal, align 2, !tbaa !60
  %i.ban = getelementptr inbounds nuw i8, ptr %i.bak, i64 2
  store i16 %i.bam, ptr %i.ban, align 2, !tbaa !60
  br label %.thread.us.3

.thread.us.3:                                     ; preds = %.thread.us.2..thread.us.3_crit_edge, %bb.r, %.thread293.us.2
  %i.bao = phi ptr [ %i.ayj, %.thread.us.2..thread.us.3_crit_edge ], [ %.pre428, %bb.r ], [ %.pre428, %.thread293.us.2 ]
  %i.bap = phi ptr [ %.pre426, %.thread.us.2..thread.us.3_crit_edge ], [ %.pre427, %bb.r ], [ %.pre427, %.thread293.us.2 ]
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bap, i64 168
  %i.bar = load i32, ptr %i.baq, align 8, !tbaa !49
  %i.bas = add nsw i32 %i.bar, 3
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bao, i64 6488
  %i.bau = load ptr, ptr %i.bat, align 8, !tbaa !98
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !43
  %i.baw = getelementptr inbounds [8 x i8], ptr %i.bav, i64 %i.asr
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !44
  %i.bay = sext i32 %i.bas to i64                 ; 6 uses
  %i.baz = getelementptr inbounds i8, ptr %i.bax, i64 %i.bay
  store i8 -1, ptr %i.baz, align 1, !tbaa !45
  %i.bba = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bba, i64 6496
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !99
  %i.bbd = load ptr, ptr %i.bbc, align 8, !tbaa !101
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.bbd, i64 %i.asr
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !103
  %i.bbg = getelementptr inbounds [8 x i8], ptr %i.bbf, i64 %i.bay
  store i64 -1, ptr %i.bbg, align 8, !tbaa !105
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.bba, i64 6512
  %i.bbi = load ptr, ptr %i.bbh, align 8, !tbaa !113
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !55
  %i.bbk = getelementptr inbounds [8 x i8], ptr %i.bbj, i64 %i.asr
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !57
  %i.bbm = getelementptr inbounds [8 x i8], ptr %i.bbl, i64 %i.bay
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.bbn, align 2, !tbaa !60
  %i.bbo = getelementptr inbounds nuw i8, ptr %i.bbn, i64 2
  store i16 0, ptr %i.bbo, align 2, !tbaa !60
  br i1 %.not285, label %.split311.us, label %.thread293.us.3

.thread293.us.3:                                  ; preds = %.thread.us.3
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bba, i64 6488
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !98
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 8
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !43
  %i.bbt = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.asr
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !44
  %i.bbv = getelementptr inbounds i8, ptr %i.bbu, i64 %i.bay
  store i8 %i.g, ptr %i.bbv, align 1, !tbaa !45
  br i1 %i.h, label %bb.s, label %.split311.us

bb.s:                                             ; preds = %.thread293.us.3
  %i.bbw = load ptr, ptr @img, align 8, !tbaa !16
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbw, i64 14384
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !47
  %i.bbz = getelementptr inbounds [8 x i8], ptr %i.bby, i64 %13
  %i.bca = load ptr, ptr %i.bbz, align 8, !tbaa !51
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bca, i64 24
  %i.bcc = load ptr, ptr %i.bcb, align 8, !tbaa !53
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 8
  %i.bce = load ptr, ptr %i.bcd, align 8, !tbaa !55
  %i.bcf = getelementptr inbounds nuw [8 x i8], ptr %i.bce, i64 %i.i
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !57
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bci = load ptr, ptr %i.bch, align 8, !tbaa !59 ; 2 uses
  %i.bcj = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bck = getelementptr [264 x i8], ptr %i.bcj, i64 %i.e
  %i.bcl = getelementptr i8, ptr %i.bck, i64 288
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %i.bcl, i64 %i.i
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !105
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcj, i64 6496
  %i.bcp = load ptr, ptr %i.bco, align 8, !tbaa !99
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcp, i64 8
  %i.bcr = load ptr, ptr %i.bcq, align 8, !tbaa !101
  %i.bcs = getelementptr inbounds [8 x i8], ptr %i.bcr, i64 %i.asr
  %i.bct = load ptr, ptr %i.bcs, align 8, !tbaa !103
  %i.bcu = getelementptr inbounds [8 x i8], ptr %i.bct, i64 %i.bay
  store i64 %i.bcn, ptr %i.bcu, align 8, !tbaa !105
  %i.bcv = load i16, ptr %i.bci, align 2, !tbaa !60
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcj, i64 6512
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !113
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bcx, i64 8
  %i.bcz = load ptr, ptr %i.bcy, align 8, !tbaa !55
  %i.bda = getelementptr inbounds [8 x i8], ptr %i.bcz, i64 %i.asr
  %i.bdb = load ptr, ptr %i.bda, align 8, !tbaa !57
  %i.bdc = getelementptr inbounds [8 x i8], ptr %i.bdb, i64 %i.bay
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bcv, ptr %i.bdd, align 2, !tbaa !60
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bci, i64 2
  %i.bdf = load i16, ptr %i.bde, align 2, !tbaa !60
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdd, i64 2
  store i16 %i.bdf, ptr %i.bdg, align 2, !tbaa !60
  br label %.split311.us

.split:                                           ; preds = %bb.o
  %.pre419 = load ptr, ptr @enc_picture, align 8, !tbaa !65
  %i.bdh = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdh, i64 168
  %i.bdj = load i32, ptr %i.bdi, align 8, !tbaa !49
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdh, i64 14384
  %i.bdl = load ptr, ptr %i.bdk, align 8, !tbaa !47
  %i.bdm = getelementptr inbounds [8 x i8], ptr %i.bdl, i64 %13
  %i.bdn = load ptr, ptr %i.bdm, align 8, !tbaa !51
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !53
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !55
  %i.bdq = getelementptr inbounds [8 x i8], ptr %i.bdp, i64 %i.c
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !57
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  %i.bdt = load ptr, ptr %i.bds, align 8, !tbaa !59 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %.pre419, i64 6488
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !98
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !43
  %i.bdx = getelementptr inbounds [8 x i8], ptr %i.bdw, i64 %i.asr
  %i.bdy = load ptr, ptr %i.bdx, align 8, !tbaa !44
  %i.bdz = sext i32 %i.bdj to i64                 ; 8 uses
  %i.bea = getelementptr inbounds i8, ptr %i.bdy, i64 %i.bdz
  store i8 %i.d, ptr %i.bea, align 1, !tbaa !45
  %i.beb = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %i.beb, i64 24
  %i.bed = getelementptr inbounds [264 x i8], ptr %i.bec, i64 %i.e
  %i.bee = getelementptr inbounds [8 x i8], ptr %i.bed, i64 %i.c
  %i.bef = load i64, ptr %i.bee, align 8, !tbaa !105
  %i.beg = getelementptr inbounds nuw i8, ptr %i.beb, i64 6496
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !99
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !101
  %i.bej = getelementptr inbounds [8 x i8], ptr %i.bei, i64 %i.asr
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !103
  %i.bel = getelementptr inbounds [8 x i8], ptr %i.bek, i64 %i.bdz
  store i64 %i.bef, ptr %i.bel, align 8, !tbaa !105
  %i.bem = load i16, ptr %i.bdt, align 2, !tbaa !60
  %i.ben = getelementptr inbounds nuw i8, ptr %i.beb, i64 6512
  %i.beo = load ptr, ptr %i.ben, align 8, !tbaa !113
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !55
  %i.beq = getelementptr inbounds [8 x i8], ptr %i.bep, i64 %i.asr
  %i.ber = load ptr, ptr %i.beq, align 8, !tbaa !57
  %i.bes = getelementptr inbounds [8 x i8], ptr %i.ber, i64 %i.bdz
  %i.bet = load ptr, ptr %i.bes, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bem, ptr %i.bet, align 2, !tbaa !60
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 2
  %i.bev = load i16, ptr %i.beu, align 2, !tbaa !60
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bet, i64 2
  store i16 %i.bev, ptr %i.bew, align 2, !tbaa !60
  br i1 %.not285, label %.split.1, label %bb.t

bb.t:                                             ; preds = %.split
  %i.bex = getelementptr inbounds nuw i8, ptr %i.beb, i64 6488
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !98
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !43
  %i.bfb = getelementptr inbounds [8 x i8], ptr %i.bfa, i64 %i.asr
  %i.bfc = load ptr, ptr %i.bfb, align 8, !tbaa !44
  %i.bfd = getelementptr inbounds i8, ptr %i.bfc, i64 %i.bdz ; 2 uses
  br i1 %i.f, label %bb.u, label %.thread293

bb.u:                                             ; preds = %bb.t
  store i8 -1, ptr %i.bfd, align 1, !tbaa !45
  %i.bfe = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 6496
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !99
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 8
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !101
  %i.bfj = getelementptr inbounds [8 x i8], ptr %i.bfi, i64 %i.asr
  %i.bfk = load ptr, ptr %i.bfj, align 8, !tbaa !103
  %i.bfl = getelementptr inbounds [8 x i8], ptr %i.bfk, i64 %i.bdz
  store i64 -1, ptr %i.bfl, align 8, !tbaa !105
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfe, i64 6512
  %i.bfn = load ptr, ptr %i.bfm, align 8, !tbaa !113
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfn, i64 8
  %i.bfp = load ptr, ptr %i.bfo, align 8, !tbaa !55
  %i.bfq = getelementptr inbounds [8 x i8], ptr %i.bfp, i64 %i.asr
  %i.bfr = load ptr, ptr %i.bfq, align 8, !tbaa !57
  %i.bfs = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.bdz
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.bft, align 2, !tbaa !60
  br label %.sink.split

.thread293:                                       ; preds = %bb.t
  store i8 %i.g, ptr %i.bfd, align 1, !tbaa !45
  %.pre = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.v, label %.split.1

bb.v:                                             ; preds = %.thread293
  %i.bfu = load ptr, ptr @img, align 8, !tbaa !16
  %i.bfv = getelementptr inbounds nuw i8, ptr %i.bfu, i64 14384
  %i.bfw = load ptr, ptr %i.bfv, align 8, !tbaa !47
  %i.bfx = getelementptr inbounds [8 x i8], ptr %i.bfw, i64 %13
  %i.bfy = load ptr, ptr %i.bfx, align 8, !tbaa !51
  %i.bfz = load ptr, ptr %i.bfy, align 8, !tbaa !53
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 8
  %i.bgb = load ptr, ptr %i.bga, align 8, !tbaa !55
  %i.bgc = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %i.i
  %i.bgd = load ptr, ptr %i.bgc, align 8, !tbaa !57
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 16
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !59 ; 2 uses
  %i.bgg = getelementptr [264 x i8], ptr %.pre, i64 %i.e
  %i.bgh = getelementptr i8, ptr %i.bgg, i64 288
  %i.bgi = getelementptr inbounds nuw [8 x i8], ptr %i.bgh, i64 %i.i
  %i.bgj = load i64, ptr %i.bgi, align 8, !tbaa !105
  %i.bgk = getelementptr inbounds nuw i8, ptr %.pre, i64 6496
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !99
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgl, i64 8
  %i.bgn = load ptr, ptr %i.bgm, align 8, !tbaa !101
  %i.bgo = getelementptr inbounds [8 x i8], ptr %i.bgn, i64 %i.asr
  %i.bgp = load ptr, ptr %i.bgo, align 8, !tbaa !103
  %i.bgq = getelementptr inbounds [8 x i8], ptr %i.bgp, i64 %i.bdz
  store i64 %i.bgj, ptr %i.bgq, align 8, !tbaa !105
  %i.bgr = load i16, ptr %i.bgf, align 2, !tbaa !60
  %i.bgs = getelementptr inbounds nuw i8, ptr %.pre, i64 6512
  %i.bgt = load ptr, ptr %i.bgs, align 8, !tbaa !113
  %i.bgu = getelementptr inbounds nuw i8, ptr %i.bgt, i64 8
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !55
  %i.bgw = getelementptr inbounds [8 x i8], ptr %i.bgv, i64 %i.asr
  %i.bgx = load ptr, ptr %i.bgw, align 8, !tbaa !57
  %i.bgy = getelementptr inbounds [8 x i8], ptr %i.bgx, i64 %i.bdz
  %i.bgz = load ptr, ptr %i.bgy, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bgr, ptr %i.bgz, align 2, !tbaa !60
  %i.bha = getelementptr inbounds nuw i8, ptr %i.bgf, i64 2
  %i.bhb = load i16, ptr %i.bha, align 2, !tbaa !60
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.v
  %.sink463 = phi ptr [ %i.bgz, %bb.v ], [ %i.bft, %bb.u ]
  %.sink = phi i16 [ %i.bhb, %bb.v ], [ 0, %bb.u ]
  %.ph = phi ptr [ %.pre, %bb.v ], [ %i.bfe, %bb.u ]
  %i.bhc = getelementptr inbounds nuw i8, ptr %.sink463, i64 2
  store i16 %.sink, ptr %i.bhc, align 2, !tbaa !60
  br label %.split.1

.split.1:                                         ; preds = %.sink.split, %.split, %.thread293
  %i.bhd = phi ptr [ %i.beb, %.split ], [ %.pre, %.thread293 ], [ %.ph, %.sink.split ]
  %i.bhe = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 168
  %i.bhg = load i32, ptr %i.bhf, align 8, !tbaa !49
  %i.bhh = add nsw i32 %i.bhg, 1
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bhe, i64 14384
  %i.bhj = load ptr, ptr %i.bhi, align 8, !tbaa !47
  %i.bhk = getelementptr inbounds [8 x i8], ptr %i.bhj, i64 %13
  %i.bhl = load ptr, ptr %i.bhk, align 8, !tbaa !51
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhn = load ptr, ptr %i.bhm, align 8, !tbaa !53
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !55
  %i.bhp = getelementptr inbounds [8 x i8], ptr %i.bho, i64 %i.c
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !57
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 16
  %i.bhs = load ptr, ptr %i.bhr, align 8, !tbaa !59 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %i.bhd, i64 6488
  %i.bhu = load ptr, ptr %i.bht, align 8, !tbaa !98
  %i.bhv = load ptr, ptr %i.bhu, align 8, !tbaa !43
  %i.bhw = getelementptr inbounds [8 x i8], ptr %i.bhv, i64 %i.asr
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !44
  %i.bhy = sext i32 %i.bhh to i64                 ; 8 uses
  %i.bhz = getelementptr inbounds i8, ptr %i.bhx, i64 %i.bhy
  store i8 %i.d, ptr %i.bhz, align 1, !tbaa !45
  %i.bia = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 24
  %i.bic = getelementptr inbounds [264 x i8], ptr %i.bib, i64 %i.e
  %i.bid = getelementptr inbounds [8 x i8], ptr %i.bic, i64 %i.c
  %i.bie = load i64, ptr %i.bid, align 8, !tbaa !105
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bia, i64 6496
  %i.big = load ptr, ptr %i.bif, align 8, !tbaa !99
  %i.bih = load ptr, ptr %i.big, align 8, !tbaa !101
  %i.bii = getelementptr inbounds [8 x i8], ptr %i.bih, i64 %i.asr
  %i.bij = load ptr, ptr %i.bii, align 8, !tbaa !103
  %i.bik = getelementptr inbounds [8 x i8], ptr %i.bij, i64 %i.bhy
  store i64 %i.bie, ptr %i.bik, align 8, !tbaa !105
  %i.bil = load i16, ptr %i.bhs, align 2, !tbaa !60
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bia, i64 6512
  %i.bin = load ptr, ptr %i.bim, align 8, !tbaa !113
  %i.bio = load ptr, ptr %i.bin, align 8, !tbaa !55
  %i.bip = getelementptr inbounds [8 x i8], ptr %i.bio, i64 %i.asr
  %i.biq = load ptr, ptr %i.bip, align 8, !tbaa !57
  %i.bir = getelementptr inbounds [8 x i8], ptr %i.biq, i64 %i.bhy
  %i.bis = load ptr, ptr %i.bir, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bil, ptr %i.bis, align 2, !tbaa !60
  %i.bit = getelementptr inbounds nuw i8, ptr %i.bhs, i64 2
  %i.biu = load i16, ptr %i.bit, align 2, !tbaa !60
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bis, i64 2
  store i16 %i.biu, ptr %i.biv, align 2, !tbaa !60
  br i1 %.not285, label %.split.2, label %bb.w

bb.w:                                             ; preds = %.split.1
  %i.biw = getelementptr inbounds nuw i8, ptr %i.bia, i64 6488
  %i.bix = load ptr, ptr %i.biw, align 8, !tbaa !98
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bix, i64 8
  %i.biz = load ptr, ptr %i.biy, align 8, !tbaa !43
  %i.bja = getelementptr inbounds [8 x i8], ptr %i.biz, i64 %i.asr
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !44
  %i.bjc = getelementptr inbounds i8, ptr %i.bjb, i64 %i.bhy ; 2 uses
  br i1 %i.f, label %bb.y, label %.thread293.1

.thread293.1:                                     ; preds = %bb.w
  store i8 %i.g, ptr %i.bjc, align 1, !tbaa !45
  %.pre.1 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.x, label %.split.2

bb.x:                                             ; preds = %.thread293.1
  %i.bjd = load ptr, ptr @img, align 8, !tbaa !16
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 14384
  %i.bjf = load ptr, ptr %i.bje, align 8, !tbaa !47
  %i.bjg = getelementptr inbounds [8 x i8], ptr %i.bjf, i64 %13
  %i.bjh = load ptr, ptr %i.bjg, align 8, !tbaa !51
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 8
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !53
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 8
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !55
  %i.bjm = getelementptr inbounds nuw [8 x i8], ptr %i.bjl, i64 %i.i
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !57
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 16
  %i.bjp = load ptr, ptr %i.bjo, align 8, !tbaa !59 ; 2 uses
  %i.bjq = getelementptr [264 x i8], ptr %.pre.1, i64 %i.e
  %i.bjr = getelementptr i8, ptr %i.bjq, i64 288
  %i.bjs = getelementptr inbounds nuw [8 x i8], ptr %i.bjr, i64 %i.i
  %i.bjt = load i64, ptr %i.bjs, align 8, !tbaa !105
  %i.bju = getelementptr inbounds nuw i8, ptr %.pre.1, i64 6496
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !99
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 8
  %i.bjx = load ptr, ptr %i.bjw, align 8, !tbaa !101
  %i.bjy = getelementptr inbounds [8 x i8], ptr %i.bjx, i64 %i.asr
  %i.bjz = load ptr, ptr %i.bjy, align 8, !tbaa !103
  %i.bka = getelementptr inbounds [8 x i8], ptr %i.bjz, i64 %i.bhy
  store i64 %i.bjt, ptr %i.bka, align 8, !tbaa !105
  %i.bkb = load i16, ptr %i.bjp, align 2, !tbaa !60
  %i.bkc = getelementptr inbounds nuw i8, ptr %.pre.1, i64 6512
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !113
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 8
  %i.bkf = load ptr, ptr %i.bke, align 8, !tbaa !55
  %i.bkg = getelementptr inbounds [8 x i8], ptr %i.bkf, i64 %i.asr
  %i.bkh = load ptr, ptr %i.bkg, align 8, !tbaa !57
  %i.bki = getelementptr inbounds [8 x i8], ptr %i.bkh, i64 %i.bhy
  %i.bkj = load ptr, ptr %i.bki, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bkb, ptr %i.bkj, align 2, !tbaa !60
  %i.bkk = getelementptr inbounds nuw i8, ptr %i.bjp, i64 2
  %i.bkl = load i16, ptr %i.bkk, align 2, !tbaa !60
  br label %.sink.split.1

bb.y:                                             ; preds = %bb.w
  store i8 -1, ptr %i.bjc, align 1, !tbaa !45
  %i.bkm = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bkm, i64 6496
  %i.bko = load ptr, ptr %i.bkn, align 8, !tbaa !99
  %i.bkp = getelementptr inbounds nuw i8, ptr %i.bko, i64 8
  %i.bkq = load ptr, ptr %i.bkp, align 8, !tbaa !101
  %i.bkr = getelementptr inbounds [8 x i8], ptr %i.bkq, i64 %i.asr
  %i.bks = load ptr, ptr %i.bkr, align 8, !tbaa !103
  %i.bkt = getelementptr inbounds [8 x i8], ptr %i.bks, i64 %i.bhy
  store i64 -1, ptr %i.bkt, align 8, !tbaa !105
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkm, i64 6512
  %i.bkv = load ptr, ptr %i.bku, align 8, !tbaa !113
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 8
  %i.bkx = load ptr, ptr %i.bkw, align 8, !tbaa !55
  %i.bky = getelementptr inbounds [8 x i8], ptr %i.bkx, i64 %i.asr
  %i.bkz = load ptr, ptr %i.bky, align 8, !tbaa !57
  %i.bla = getelementptr inbounds [8 x i8], ptr %i.bkz, i64 %i.bhy
  %i.blb = load ptr, ptr %i.bla, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.blb, align 2, !tbaa !60
  br label %.sink.split.1

.sink.split.1:                                    ; preds = %bb.y, %bb.x
  %.sink463.1 = phi ptr [ %i.bkj, %bb.x ], [ %i.blb, %bb.y ]
  %.sink.1 = phi i16 [ %i.bkl, %bb.x ], [ 0, %bb.y ]
  %.ph.1 = phi ptr [ %.pre.1, %bb.x ], [ %i.bkm, %bb.y ]
  %i.blc = getelementptr inbounds nuw i8, ptr %.sink463.1, i64 2
  store i16 %.sink.1, ptr %i.blc, align 2, !tbaa !60
  br label %.split.2

.split.2:                                         ; preds = %.sink.split.1, %.thread293.1, %.split.1
  %i.bld = phi ptr [ %i.bia, %.split.1 ], [ %.pre.1, %.thread293.1 ], [ %.ph.1, %.sink.split.1 ]
  %i.ble = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 168
  %i.blg = load i32, ptr %i.blf, align 8, !tbaa !49
  %i.blh = add nsw i32 %i.blg, 2
  %i.bli = getelementptr inbounds nuw i8, ptr %i.ble, i64 14384
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !47
  %i.blk = getelementptr inbounds [8 x i8], ptr %i.blj, i64 %13
  %i.bll = load ptr, ptr %i.blk, align 8, !tbaa !51
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bll, i64 16
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !53
  %i.blo = load ptr, ptr %i.bln, align 8, !tbaa !55
  %i.blp = getelementptr inbounds [8 x i8], ptr %i.blo, i64 %i.c
  %i.blq = load ptr, ptr %i.blp, align 8, !tbaa !57
  %i.blr = getelementptr inbounds nuw i8, ptr %i.blq, i64 16
  %i.bls = load ptr, ptr %i.blr, align 8, !tbaa !59 ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bld, i64 6488
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !98
  %i.blv = load ptr, ptr %i.blu, align 8, !tbaa !43
  %i.blw = getelementptr inbounds [8 x i8], ptr %i.blv, i64 %i.asr
  %i.blx = load ptr, ptr %i.blw, align 8, !tbaa !44
  %i.bly = sext i32 %i.blh to i64                 ; 8 uses
  %i.blz = getelementptr inbounds i8, ptr %i.blx, i64 %i.bly
  store i8 %i.d, ptr %i.blz, align 1, !tbaa !45
  %i.bma = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 24
  %i.bmc = getelementptr inbounds [264 x i8], ptr %i.bmb, i64 %i.e
  %i.bmd = getelementptr inbounds [8 x i8], ptr %i.bmc, i64 %i.c
  %i.bme = load i64, ptr %i.bmd, align 8, !tbaa !105
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.bma, i64 6496
  %i.bmg = load ptr, ptr %i.bmf, align 8, !tbaa !99
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !101
  %i.bmi = getelementptr inbounds [8 x i8], ptr %i.bmh, i64 %i.asr
  %i.bmj = load ptr, ptr %i.bmi, align 8, !tbaa !103
  %i.bmk = getelementptr inbounds [8 x i8], ptr %i.bmj, i64 %i.bly
  store i64 %i.bme, ptr %i.bmk, align 8, !tbaa !105
  %i.bml = load i16, ptr %i.bls, align 2, !tbaa !60
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bma, i64 6512
  %i.bmn = load ptr, ptr %i.bmm, align 8, !tbaa !113
  %i.bmo = load ptr, ptr %i.bmn, align 8, !tbaa !55
  %i.bmp = getelementptr inbounds [8 x i8], ptr %i.bmo, i64 %i.asr
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !57
  %i.bmr = getelementptr inbounds [8 x i8], ptr %i.bmq, i64 %i.bly
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bml, ptr %i.bms, align 2, !tbaa !60
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bls, i64 2
  %i.bmu = load i16, ptr %i.bmt, align 2, !tbaa !60
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bms, i64 2
  store i16 %i.bmu, ptr %i.bmv, align 2, !tbaa !60
  br i1 %.not285, label %.split.3, label %bb.z

bb.z:                                             ; preds = %.split.2
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bma, i64 6488
  %i.bmx = load ptr, ptr %i.bmw, align 8, !tbaa !98
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 8
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !43
  %i.bna = getelementptr inbounds [8 x i8], ptr %i.bmz, i64 %i.asr
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !44
  %i.bnc = getelementptr inbounds i8, ptr %i.bnb, i64 %i.bly ; 2 uses
  br i1 %i.f, label %bb.ab, label %.thread293.2

.thread293.2:                                     ; preds = %bb.z
  store i8 %i.g, ptr %i.bnc, align 1, !tbaa !45
  %.pre.2 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.h, label %bb.aa, label %.split.3

bb.aa:                                            ; preds = %.thread293.2
  %i.bnd = load ptr, ptr @img, align 8, !tbaa !16
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 14384
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !47
  %i.bng = getelementptr inbounds [8 x i8], ptr %i.bnf, i64 %13
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !51
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 16
  %i.bnj = load ptr, ptr %i.bni, align 8, !tbaa !53
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !55
  %i.bnm = getelementptr inbounds nuw [8 x i8], ptr %i.bnl, i64 %i.i
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !57
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 16
  %i.bnp = load ptr, ptr %i.bno, align 8, !tbaa !59 ; 2 uses
  %i.bnq = getelementptr [264 x i8], ptr %.pre.2, i64 %i.e
  %i.bnr = getelementptr i8, ptr %i.bnq, i64 288
  %i.bns = getelementptr inbounds nuw [8 x i8], ptr %i.bnr, i64 %i.i
  %i.bnt = load i64, ptr %i.bns, align 8, !tbaa !105
  %i.bnu = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6496
  %i.bnv = load ptr, ptr %i.bnu, align 8, !tbaa !99
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8
  %i.bnx = load ptr, ptr %i.bnw, align 8, !tbaa !101
  %i.bny = getelementptr inbounds [8 x i8], ptr %i.bnx, i64 %i.asr
  %i.bnz = load ptr, ptr %i.bny, align 8, !tbaa !103
  %i.boa = getelementptr inbounds [8 x i8], ptr %i.bnz, i64 %i.bly
  store i64 %i.bnt, ptr %i.boa, align 8, !tbaa !105
  %i.bob = load i16, ptr %i.bnp, align 2, !tbaa !60
  %i.boc = getelementptr inbounds nuw i8, ptr %.pre.2, i64 6512
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !113
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bod, i64 8
  %i.bof = load ptr, ptr %i.boe, align 8, !tbaa !55
  %i.bog = getelementptr inbounds [8 x i8], ptr %i.bof, i64 %i.asr
  %i.boh = load ptr, ptr %i.bog, align 8, !tbaa !57
  %i.boi = getelementptr inbounds [8 x i8], ptr %i.boh, i64 %i.bly
  %i.boj = load ptr, ptr %i.boi, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bob, ptr %i.boj, align 2, !tbaa !60
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bnp, i64 2
  %i.bol = load i16, ptr %i.bok, align 2, !tbaa !60
  br label %.sink.split.2

bb.ab:                                            ; preds = %bb.z
  store i8 -1, ptr %i.bnc, align 1, !tbaa !45
  %i.bom = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bom, i64 6496
  %i.boo = load ptr, ptr %i.bon, align 8, !tbaa !99
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 8
  %i.boq = load ptr, ptr %i.bop, align 8, !tbaa !101
  %i.bor = getelementptr inbounds [8 x i8], ptr %i.boq, i64 %i.asr
  %i.bos = load ptr, ptr %i.bor, align 8, !tbaa !103
  %i.bot = getelementptr inbounds [8 x i8], ptr %i.bos, i64 %i.bly
  store i64 -1, ptr %i.bot, align 8, !tbaa !105
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bom, i64 6512
  %i.bov = load ptr, ptr %i.bou, align 8, !tbaa !113
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 8
  %i.box = load ptr, ptr %i.bow, align 8, !tbaa !55
  %i.boy = getelementptr inbounds [8 x i8], ptr %i.box, i64 %i.asr
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !57
  %i.bpa = getelementptr inbounds [8 x i8], ptr %i.boz, i64 %i.bly
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.bpb, align 2, !tbaa !60
  br label %.sink.split.2

.sink.split.2:                                    ; preds = %bb.ab, %bb.aa
  %.sink463.2 = phi ptr [ %i.boj, %bb.aa ], [ %i.bpb, %bb.ab ]
  %.sink.2 = phi i16 [ %i.bol, %bb.aa ], [ 0, %bb.ab ]
  %.ph.2 = phi ptr [ %.pre.2, %bb.aa ], [ %i.bom, %bb.ab ]
  %i.bpc = getelementptr inbounds nuw i8, ptr %.sink463.2, i64 2
  store i16 %.sink.2, ptr %i.bpc, align 2, !tbaa !60
  br label %.split.3

.split.3:                                         ; preds = %.sink.split.2, %.thread293.2, %.split.2
  %i.bpd = phi ptr [ %i.bma, %.split.2 ], [ %.pre.2, %.thread293.2 ], [ %.ph.2, %.sink.split.2 ]
  %i.bpe = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bpf = getelementptr inbounds nuw i8, ptr %i.bpe, i64 168
  %i.bpg = load i32, ptr %i.bpf, align 8, !tbaa !49
  %i.bph = add nsw i32 %i.bpg, 3
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpe, i64 14384
  %i.bpj = load ptr, ptr %i.bpi, align 8, !tbaa !47
  %i.bpk = getelementptr inbounds [8 x i8], ptr %i.bpj, i64 %13
  %i.bpl = load ptr, ptr %i.bpk, align 8, !tbaa !51
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 24
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !53
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !55
  %i.bpp = getelementptr inbounds [8 x i8], ptr %i.bpo, i64 %i.c
  %i.bpq = load ptr, ptr %i.bpp, align 8, !tbaa !57
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 16
  %i.bps = load ptr, ptr %i.bpr, align 8, !tbaa !59 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpd, i64 6488
  %i.bpu = load ptr, ptr %i.bpt, align 8, !tbaa !98
  %i.bpv = load ptr, ptr %i.bpu, align 8, !tbaa !43
  %i.bpw = getelementptr inbounds [8 x i8], ptr %i.bpv, i64 %i.asr
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !44
  %i.bpy = sext i32 %i.bph to i64                 ; 8 uses
  %i.bpz = getelementptr inbounds i8, ptr %i.bpx, i64 %i.bpy
  store i8 %i.d, ptr %i.bpz, align 1, !tbaa !45
  %i.bqa = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 4 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bqa, i64 24
  %i.bqc = getelementptr inbounds [264 x i8], ptr %i.bqb, i64 %i.e
  %i.bqd = getelementptr inbounds [8 x i8], ptr %i.bqc, i64 %i.c
  %i.bqe = load i64, ptr %i.bqd, align 8, !tbaa !105
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bqa, i64 6496
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !99
  %i.bqh = load ptr, ptr %i.bqg, align 8, !tbaa !101
  %i.bqi = getelementptr inbounds [8 x i8], ptr %i.bqh, i64 %i.asr
  %i.bqj = load ptr, ptr %i.bqi, align 8, !tbaa !103
  %i.bqk = getelementptr inbounds [8 x i8], ptr %i.bqj, i64 %i.bpy
  store i64 %i.bqe, ptr %i.bqk, align 8, !tbaa !105
  %i.bql = load i16, ptr %i.bps, align 2, !tbaa !60
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqa, i64 6512
  %i.bqn = load ptr, ptr %i.bqm, align 8, !tbaa !113
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !55
  %i.bqp = getelementptr inbounds [8 x i8], ptr %i.bqo, i64 %i.asr
  %i.bqq = load ptr, ptr %i.bqp, align 8, !tbaa !57
  %i.bqr = getelementptr inbounds [8 x i8], ptr %i.bqq, i64 %i.bpy
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bql, ptr %i.bqs, align 2, !tbaa !60
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bps, i64 2
  %i.bqu = load i16, ptr %i.bqt, align 2, !tbaa !60
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqs, i64 2
  store i16 %i.bqu, ptr %i.bqv, align 2, !tbaa !60
  br i1 %.not285, label %.split311.us, label %bb.ac

bb.ac:                                            ; preds = %.split.3
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqa, i64 6488
  %i.bqx = load ptr, ptr %i.bqw, align 8, !tbaa !98
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqx, i64 8
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !43
  %i.bra = getelementptr inbounds [8 x i8], ptr %i.bqz, i64 %i.asr
  %i.brb = load ptr, ptr %i.bra, align 8, !tbaa !44
  %i.brc = getelementptr inbounds i8, ptr %i.brb, i64 %i.bpy ; 2 uses
  br i1 %i.f, label %bb.ae, label %.thread293.3

.thread293.3:                                     ; preds = %bb.ac
  store i8 %i.g, ptr %i.brc, align 1, !tbaa !45
  br i1 %i.h, label %bb.ad, label %.split311.us

bb.ad:                                            ; preds = %.thread293.3
  %.pre.3 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.brd = load ptr, ptr @img, align 8, !tbaa !16
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brd, i64 14384
  %i.brf = load ptr, ptr %i.bre, align 8, !tbaa !47
  %i.brg = getelementptr inbounds [8 x i8], ptr %i.brf, i64 %13
  %i.brh = load ptr, ptr %i.brg, align 8, !tbaa !51
  %i.bri = getelementptr inbounds nuw i8, ptr %i.brh, i64 24
  %i.brj = load ptr, ptr %i.bri, align 8, !tbaa !53
  %i.brk = getelementptr inbounds nuw i8, ptr %i.brj, i64 8
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !55
  %i.brm = getelementptr inbounds nuw [8 x i8], ptr %i.brl, i64 %i.i
  %i.brn = load ptr, ptr %i.brm, align 8, !tbaa !57
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brn, i64 16
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !59 ; 2 uses
  %i.brq = getelementptr [264 x i8], ptr %.pre.3, i64 %i.e
  %i.brr = getelementptr i8, ptr %i.brq, i64 288
  %i.brs = getelementptr inbounds nuw [8 x i8], ptr %i.brr, i64 %i.i
  %i.brt = load i64, ptr %i.brs, align 8, !tbaa !105
  %i.bru = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6496
  %i.brv = load ptr, ptr %i.bru, align 8, !tbaa !99
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 8
  %i.brx = load ptr, ptr %i.brw, align 8, !tbaa !101
  %i.bry = getelementptr inbounds [8 x i8], ptr %i.brx, i64 %i.asr
  %i.brz = load ptr, ptr %i.bry, align 8, !tbaa !103
  %i.bsa = getelementptr inbounds [8 x i8], ptr %i.brz, i64 %i.bpy
  store i64 %i.brt, ptr %i.bsa, align 8, !tbaa !105
  %i.bsb = load i16, ptr %i.brp, align 2, !tbaa !60
  %i.bsc = getelementptr inbounds nuw i8, ptr %.pre.3, i64 6512
  %i.bsd = load ptr, ptr %i.bsc, align 8, !tbaa !113
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bsd, i64 8
  %i.bsf = load ptr, ptr %i.bse, align 8, !tbaa !55
  %i.bsg = getelementptr inbounds [8 x i8], ptr %i.bsf, i64 %i.asr
  %i.bsh = load ptr, ptr %i.bsg, align 8, !tbaa !57
  %i.bsi = getelementptr inbounds [8 x i8], ptr %i.bsh, i64 %i.bpy
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bsb, ptr %i.bsj, align 2, !tbaa !60
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.brp, i64 2
  %i.bsl = load i16, ptr %i.bsk, align 2, !tbaa !60
  br label %.sink.split.3

bb.ae:                                            ; preds = %bb.ac
  store i8 -1, ptr %i.brc, align 1, !tbaa !45
  %i.bsm = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 2 uses
  %i.bsn = getelementptr inbounds nuw i8, ptr %i.bsm, i64 6496
  %i.bso = load ptr, ptr %i.bsn, align 8, !tbaa !99
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 8
  %i.bsq = load ptr, ptr %i.bsp, align 8, !tbaa !101
  %i.bsr = getelementptr inbounds [8 x i8], ptr %i.bsq, i64 %i.asr
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !103
  %i.bst = getelementptr inbounds [8 x i8], ptr %i.bss, i64 %i.bpy
  store i64 -1, ptr %i.bst, align 8, !tbaa !105
  %i.bsu = getelementptr inbounds nuw i8, ptr %i.bsm, i64 6512
  %i.bsv = load ptr, ptr %i.bsu, align 8, !tbaa !113
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsv, i64 8
  %i.bsx = load ptr, ptr %i.bsw, align 8, !tbaa !55
  %i.bsy = getelementptr inbounds [8 x i8], ptr %i.bsx, i64 %i.asr
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !57
  %i.bta = getelementptr inbounds [8 x i8], ptr %i.bsz, i64 %i.bpy
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.btb, align 2, !tbaa !60
  br label %.sink.split.3

.sink.split.3:                                    ; preds = %bb.ae, %bb.ad
  %.sink463.3 = phi ptr [ %i.bsj, %bb.ad ], [ %i.btb, %bb.ae ]
  %.sink.3 = phi i16 [ %i.bsl, %bb.ad ], [ 0, %bb.ae ]
  %i.btc = getelementptr inbounds nuw i8, ptr %.sink463.3, i64 2
  store i16 %.sink.3, ptr %i.btc, align 2, !tbaa !60
  br label %.split311.us

.split311.us:                                     ; preds = %.split.3, %.thread293.3, %.sink.split.3, %.thread.us.3, %.thread293.us.3, %bb.s
  br i1 %i.asm, label %bb.o, label %.loopexit, !llvm.loop !287

.split330:                                        ; preds = %.split330.preheader, %.split332
  %i.btd = phi ptr [ %.pre435, %.split330.preheader ], [ %i.cbi, %.split332 ]
  %indvars.iv407 = phi i64 [ 0, %.split330.preheader ], [ %indvars.iv.next408, %.split332 ] ; 6 uses
  %i.bte = load ptr, ptr @img, align 8, !tbaa !16 ; 3 uses
  %i.btf = getelementptr inbounds nuw i8, ptr %i.bte, i64 172
  %i.btg = load i32, ptr %i.btf, align 4, !tbaa !48
  %i.bth = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.bti = add nsw i32 %i.btg, %i.bth
  %i.btj = sext i32 %i.bti to i64                 ; 16 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bte, i64 168
  %i.btl = load i32, ptr %i.btk, align 8, !tbaa !49
  %i.btm = add i32 %i.k, %i.btl
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bte, i64 14384
  %i.bto = load ptr, ptr %i.btn, align 8, !tbaa !47
  %i.btp = getelementptr inbounds nuw [8 x i8], ptr %i.bto, i64 %indvars.iv407
  %i.btq = load ptr, ptr %i.btp, align 8, !tbaa !51
  %i.btr = getelementptr inbounds [8 x i8], ptr %i.btq, i64 %i.u
  %i.bts = load ptr, ptr %i.btr, align 8, !tbaa !53
  %i.btt = load ptr, ptr %i.bts, align 8, !tbaa !55
  %i.btu = getelementptr inbounds [8 x i8], ptr %i.btt, i64 %i.m
  %i.btv = load ptr, ptr %i.btu, align 8, !tbaa !57
  %i.btw = getelementptr inbounds [8 x i8], ptr %i.btv, i64 %i.n
  %i.btx = load ptr, ptr %i.btw, align 8, !tbaa !59 ; 2 uses
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btd, i64 6488
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !98
  %i.bua = load ptr, ptr %i.btz, align 8, !tbaa !43
  %i.bub = getelementptr inbounds [8 x i8], ptr %i.bua, i64 %i.btj
  %i.buc = load ptr, ptr %i.bub, align 8, !tbaa !44
  %i.bud = sext i32 %i.btm to i64                 ; 8 uses
  %i.bue = getelementptr inbounds i8, ptr %i.buc, i64 %i.bud
  store i8 %i.o, ptr %i.bue, align 1, !tbaa !45
  %i.buf = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %i.buf, i64 24
  %i.buh = getelementptr inbounds [264 x i8], ptr %i.bug, i64 %i.p
  %i.bui = getelementptr inbounds [8 x i8], ptr %i.buh, i64 %i.m
  %i.buj = load i64, ptr %i.bui, align 8, !tbaa !105
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buf, i64 6496
  %i.bul = load ptr, ptr %i.buk, align 8, !tbaa !99
  %i.bum = load ptr, ptr %i.bul, align 8, !tbaa !101
  %i.bun = getelementptr inbounds [8 x i8], ptr %i.bum, i64 %i.btj
  %i.buo = load ptr, ptr %i.bun, align 8, !tbaa !103
  %i.bup = getelementptr inbounds [8 x i8], ptr %i.buo, i64 %i.bud
  store i64 %i.buj, ptr %i.bup, align 8, !tbaa !105
  %i.buq = load i16, ptr %i.btx, align 2, !tbaa !60
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buf, i64 6512
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !113
  %i.but = load ptr, ptr %i.bus, align 8, !tbaa !55
  %i.buu = getelementptr inbounds [8 x i8], ptr %i.but, i64 %i.btj
  %i.buv = load ptr, ptr %i.buu, align 8, !tbaa !57
  %i.buw = getelementptr inbounds [8 x i8], ptr %i.buv, i64 %i.bud
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !59 ; 2 uses
  store i16 %i.buq, ptr %i.bux, align 2, !tbaa !60
  %i.buy = getelementptr inbounds nuw i8, ptr %i.btx, i64 2
  %i.buz = load i16, ptr %i.buy, align 2, !tbaa !60
  %i.bva = getelementptr inbounds nuw i8, ptr %i.bux, i64 2
  store i16 %i.buz, ptr %i.bva, align 2, !tbaa !60
  br i1 %.not, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.split330
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buf, i64 6488
  %i.bvc = load ptr, ptr %i.bvb, align 8, !tbaa !98
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.bvc, i64 8
  %i.bve = load ptr, ptr %i.bvd, align 8, !tbaa !43
  %i.bvf = getelementptr inbounds [8 x i8], ptr %i.bve, i64 %i.btj
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !44
  %i.bvh = getelementptr inbounds i8, ptr %i.bvg, i64 %i.bud ; 2 uses
  br i1 %i.q, label %bb.ag, label %.thread296

bb.ag:                                            ; preds = %bb.af
  store i8 -1, ptr %i.bvh, align 1, !tbaa !45
  %i.bvi = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 6496
  %i.bvk = load ptr, ptr %i.bvj, align 8, !tbaa !99
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 8
  %i.bvm = load ptr, ptr %i.bvl, align 8, !tbaa !101
  %i.bvn = getelementptr inbounds [8 x i8], ptr %i.bvm, i64 %i.btj
  %i.bvo = load ptr, ptr %i.bvn, align 8, !tbaa !103
  %i.bvp = getelementptr inbounds [8 x i8], ptr %i.bvo, i64 %i.bud
  store i64 -1, ptr %i.bvp, align 8, !tbaa !105
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvi, i64 6512
  %i.bvr = load ptr, ptr %i.bvq, align 8, !tbaa !113
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.bvr, i64 8
  %i.bvt = load ptr, ptr %i.bvs, align 8, !tbaa !55
  %i.bvu = getelementptr inbounds [8 x i8], ptr %i.bvt, i64 %i.btj
  %i.bvv = load ptr, ptr %i.bvu, align 8, !tbaa !57
  %i.bvw = getelementptr inbounds [8 x i8], ptr %i.bvv, i64 %i.bud
  %i.bvx = load ptr, ptr %i.bvw, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.bvx, align 2, !tbaa !60
  br label %.sink.split464

.thread296:                                       ; preds = %bb.af
  store i8 %i.r, ptr %i.bvh, align 1, !tbaa !45
  %.pre436 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.s, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread296
  %i.bvy = load ptr, ptr @img, align 8, !tbaa !16
  %i.bvz = getelementptr inbounds nuw i8, ptr %i.bvy, i64 14384
  %i.bwa = load ptr, ptr %i.bvz, align 8, !tbaa !47
  %i.bwb = getelementptr inbounds nuw [8 x i8], ptr %i.bwa, i64 %indvars.iv407
  %i.bwc = load ptr, ptr %i.bwb, align 8, !tbaa !51
  %i.bwd = getelementptr inbounds [8 x i8], ptr %i.bwc, i64 %i.u
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !53
  %i.bwf = getelementptr inbounds nuw i8, ptr %i.bwe, i64 8
  %i.bwg = load ptr, ptr %i.bwf, align 8, !tbaa !55
  %i.bwh = getelementptr inbounds nuw [8 x i8], ptr %i.bwg, i64 %i.t
  %i.bwi = load ptr, ptr %i.bwh, align 8, !tbaa !57
  %i.bwj = getelementptr inbounds [8 x i8], ptr %i.bwi, i64 %i.n
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !59 ; 2 uses
  %i.bwl = getelementptr [264 x i8], ptr %.pre436, i64 %i.p
  %i.bwm = getelementptr i8, ptr %i.bwl, i64 288
  %i.bwn = getelementptr inbounds nuw [8 x i8], ptr %i.bwm, i64 %i.t
  %i.bwo = load i64, ptr %i.bwn, align 8, !tbaa !105
  %i.bwp = getelementptr inbounds nuw i8, ptr %.pre436, i64 6496
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !99
  %i.bwr = getelementptr inbounds nuw i8, ptr %i.bwq, i64 8
  %i.bws = load ptr, ptr %i.bwr, align 8, !tbaa !101
  %i.bwt = getelementptr inbounds [8 x i8], ptr %i.bws, i64 %i.btj
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !103
  %i.bwv = getelementptr inbounds [8 x i8], ptr %i.bwu, i64 %i.bud
  store i64 %i.bwo, ptr %i.bwv, align 8, !tbaa !105
  %i.bww = load i16, ptr %i.bwk, align 2, !tbaa !60
  %i.bwx = getelementptr inbounds nuw i8, ptr %.pre436, i64 6512
  %i.bwy = load ptr, ptr %i.bwx, align 8, !tbaa !113
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 8
  %i.bxa = load ptr, ptr %i.bwz, align 8, !tbaa !55
  %i.bxb = getelementptr inbounds [8 x i8], ptr %i.bxa, i64 %i.btj
  %i.bxc = load ptr, ptr %i.bxb, align 8, !tbaa !57
  %i.bxd = getelementptr inbounds [8 x i8], ptr %i.bxc, i64 %i.bud
  %i.bxe = load ptr, ptr %i.bxd, align 8, !tbaa !59 ; 2 uses
  store i16 %i.bww, ptr %i.bxe, align 2, !tbaa !60
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bwk, i64 2
  %i.bxg = load i16, ptr %i.bxf, align 2, !tbaa !60
  br label %.sink.split464

.sink.split464:                                   ; preds = %bb.ag, %bb.ah
  %.sink468 = phi ptr [ %i.bxe, %bb.ah ], [ %i.bvx, %bb.ag ]
  %.sink466 = phi i16 [ %i.bxg, %bb.ah ], [ 0, %bb.ag ]
  %.ph465 = phi ptr [ %.pre436, %bb.ah ], [ %i.bvi, %bb.ag ]
  %i.bxh = getelementptr inbounds nuw i8, ptr %.sink468, i64 2
  store i16 %.sink466, ptr %i.bxh, align 2, !tbaa !60
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split464, %.split330, %.thread296
  %i.bxi = phi ptr [ %i.buf, %.split330 ], [ %.pre436, %.thread296 ], [ %.ph465, %.sink.split464 ]
  %i.bxj = load ptr, ptr @img, align 8, !tbaa !16 ; 2 uses
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxj, i64 168
  %i.bxl = load i32, ptr %i.bxk, align 8, !tbaa !49
  %i.bxm = add i32 %7, %i.bxl
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxj, i64 14384
  %i.bxo = load ptr, ptr %i.bxn, align 8, !tbaa !47
  %i.bxp = getelementptr inbounds nuw [8 x i8], ptr %i.bxo, i64 %indvars.iv407
  %i.bxq = load ptr, ptr %i.bxp, align 8, !tbaa !51
  %i.bxr = getelementptr inbounds [8 x i8], ptr %i.bxq, i64 %8
  %i.bxs = load ptr, ptr %i.bxr, align 8, !tbaa !53
  %i.bxt = load ptr, ptr %i.bxs, align 8, !tbaa !55
  %i.bxu = getelementptr inbounds [8 x i8], ptr %i.bxt, i64 %i.m
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !57
  %i.bxw = getelementptr inbounds [8 x i8], ptr %i.bxv, i64 %i.n
  %i.bxx = load ptr, ptr %i.bxw, align 8, !tbaa !59 ; 2 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %i.bxi, i64 6488
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !98
  %i.bya = load ptr, ptr %i.bxz, align 8, !tbaa !43
  %i.byb = getelementptr inbounds [8 x i8], ptr %i.bya, i64 %i.btj
  %i.byc = load ptr, ptr %i.byb, align 8, !tbaa !44
  %i.byd = sext i32 %i.bxm to i64                 ; 8 uses
  %i.bye = getelementptr inbounds i8, ptr %i.byc, i64 %i.byd
  store i8 %i.o, ptr %i.bye, align 1, !tbaa !45
  %i.byf = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.byf, i64 24
  %i.byh = getelementptr inbounds [264 x i8], ptr %i.byg, i64 %i.p
  %i.byi = getelementptr inbounds [8 x i8], ptr %i.byh, i64 %i.m
  %i.byj = load i64, ptr %i.byi, align 8, !tbaa !105
  %i.byk = getelementptr inbounds nuw i8, ptr %i.byf, i64 6496
  %i.byl = load ptr, ptr %i.byk, align 8, !tbaa !99
  %i.bym = load ptr, ptr %i.byl, align 8, !tbaa !101
  %i.byn = getelementptr inbounds [8 x i8], ptr %i.bym, i64 %i.btj
  %i.byo = load ptr, ptr %i.byn, align 8, !tbaa !103
  %i.byp = getelementptr inbounds [8 x i8], ptr %i.byo, i64 %i.byd
  store i64 %i.byj, ptr %i.byp, align 8, !tbaa !105
  %i.byq = load i16, ptr %i.bxx, align 2, !tbaa !60
  %i.byr = getelementptr inbounds nuw i8, ptr %i.byf, i64 6512
  %i.bys = load ptr, ptr %i.byr, align 8, !tbaa !113
  %i.byt = load ptr, ptr %i.bys, align 8, !tbaa !55
  %i.byu = getelementptr inbounds [8 x i8], ptr %i.byt, i64 %i.btj
  %i.byv = load ptr, ptr %i.byu, align 8, !tbaa !57
  %i.byw = getelementptr inbounds [8 x i8], ptr %i.byv, i64 %i.byd
  %i.byx = load ptr, ptr %i.byw, align 8, !tbaa !59 ; 2 uses
  store i16 %i.byq, ptr %i.byx, align 2, !tbaa !60
  %i.byy = getelementptr inbounds nuw i8, ptr %i.bxx, i64 2
  %i.byz = load i16, ptr %i.byy, align 2, !tbaa !60
  %i.bza = getelementptr inbounds nuw i8, ptr %i.byx, i64 2
  store i16 %i.byz, ptr %i.bza, align 2, !tbaa !60
  br i1 %.not, label %.split332, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.byf, i64 6488
  %i.bzc = load ptr, ptr %i.bzb, align 8, !tbaa !98
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.bzc, i64 8
  %i.bze = load ptr, ptr %i.bzd, align 8, !tbaa !43
  %i.bzf = getelementptr inbounds [8 x i8], ptr %i.bze, i64 %i.btj
  %i.bzg = load ptr, ptr %i.bzf, align 8, !tbaa !44
  %i.bzh = getelementptr inbounds i8, ptr %i.bzg, i64 %i.byd ; 2 uses
  br i1 %i.q, label %bb.al, label %.thread296.1

.thread296.1:                                     ; preds = %bb.aj
  store i8 %i.r, ptr %i.bzh, align 1, !tbaa !45
  %.pre434 = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 5 uses
  br i1 %i.s, label %bb.ak, label %.split332

bb.ak:                                            ; preds = %.thread296.1
  %i.bzi = load ptr, ptr @img, align 8, !tbaa !16
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.bzi, i64 14384
  %i.bzk = load ptr, ptr %i.bzj, align 8, !tbaa !47
  %i.bzl = getelementptr inbounds nuw [8 x i8], ptr %i.bzk, i64 %indvars.iv407
  %i.bzm = load ptr, ptr %i.bzl, align 8, !tbaa !51
  %i.bzn = getelementptr inbounds [8 x i8], ptr %i.bzm, i64 %8
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !53
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 8
  %i.bzq = load ptr, ptr %i.bzp, align 8, !tbaa !55
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.bzq, i64 %i.t
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !57
  %i.bzt = getelementptr inbounds [8 x i8], ptr %i.bzs, i64 %i.n
  %i.bzu = load ptr, ptr %i.bzt, align 8, !tbaa !59 ; 2 uses
  %i.bzv = getelementptr [264 x i8], ptr %.pre434, i64 %i.p
  %i.bzw = getelementptr i8, ptr %i.bzv, i64 288
  %i.bzx = getelementptr inbounds nuw [8 x i8], ptr %i.bzw, i64 %i.t
  %i.bzy = load i64, ptr %i.bzx, align 8, !tbaa !105
  %i.bzz = getelementptr inbounds nuw i8, ptr %.pre434, i64 6496
  %i.caa = load ptr, ptr %i.bzz, align 8, !tbaa !99
  %i.cab = getelementptr inbounds nuw i8, ptr %i.caa, i64 8
  %i.cac = load ptr, ptr %i.cab, align 8, !tbaa !101
  %i.cad = getelementptr inbounds [8 x i8], ptr %i.cac, i64 %i.btj
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !103
  %i.caf = getelementptr inbounds [8 x i8], ptr %i.cae, i64 %i.byd
  store i64 %i.bzy, ptr %i.caf, align 8, !tbaa !105
  %i.cag = load i16, ptr %i.bzu, align 2, !tbaa !60
  %i.cah = getelementptr inbounds nuw i8, ptr %.pre434, i64 6512
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !113
  %i.caj = getelementptr inbounds nuw i8, ptr %i.cai, i64 8
  %i.cak = load ptr, ptr %i.caj, align 8, !tbaa !55
  %i.cal = getelementptr inbounds [8 x i8], ptr %i.cak, i64 %i.btj
  %i.cam = load ptr, ptr %i.cal, align 8, !tbaa !57
  %i.can = getelementptr inbounds [8 x i8], ptr %i.cam, i64 %i.byd
  %i.cao = load ptr, ptr %i.can, align 8, !tbaa !59 ; 2 uses
  store i16 %i.cag, ptr %i.cao, align 2, !tbaa !60
  %i.cap = getelementptr inbounds nuw i8, ptr %i.bzu, i64 2
  %i.caq = load i16, ptr %i.cap, align 2, !tbaa !60
  br label %.split332.sink.split

bb.al:                                            ; preds = %bb.aj
  store i8 -1, ptr %i.bzh, align 1, !tbaa !45
  %i.car = load ptr, ptr @enc_picture, align 8, !tbaa !65 ; 3 uses
  %i.cas = getelementptr inbounds nuw i8, ptr %i.car, i64 6496
  %i.cat = load ptr, ptr %i.cas, align 8, !tbaa !99
  %i.cau = getelementptr inbounds nuw i8, ptr %i.cat, i64 8
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !101
  %i.caw = getelementptr inbounds [8 x i8], ptr %i.cav, i64 %i.btj
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !103
  %i.cay = getelementptr inbounds [8 x i8], ptr %i.cax, i64 %i.byd
  store i64 -1, ptr %i.cay, align 8, !tbaa !105
  %i.caz = getelementptr inbounds nuw i8, ptr %i.car, i64 6512
  %i.cba = load ptr, ptr %i.caz, align 8, !tbaa !113
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.cba, i64 8
  %i.cbc = load ptr, ptr %i.cbb, align 8, !tbaa !55
  %i.cbd = getelementptr inbounds [8 x i8], ptr %i.cbc, i64 %i.btj
  %i.cbe = load ptr, ptr %i.cbd, align 8, !tbaa !57
  %i.cbf = getelementptr inbounds [8 x i8], ptr %i.cbe, i64 %i.byd
  %i.cbg = load ptr, ptr %i.cbf, align 8, !tbaa !59 ; 2 uses
  store i16 0, ptr %i.cbg, align 2, !tbaa !60
  br label %.split332.sink.split

.split332.sink.split:                             ; preds = %bb.ak, %bb.al
  %.sink472 = phi ptr [ %i.cbg, %bb.al ], [ %i.cao, %bb.ak ]
  %.sink470 = phi i16 [ 0, %bb.al ], [ %i.caq, %bb.ak ]
  %.ph469 = phi ptr [ %i.car, %bb.al ], [ %.pre434, %bb.ak ]
  %i.cbh = getelementptr inbounds nuw i8, ptr %.sink472, i64 2
  store i16 %.sink470, ptr %i.cbh, align 2, !tbaa !60
  br label %.split332

.split332:                                        ; preds = %.split332.sink.split, %.thread296.1, %bb.ai
  %i.cbi = phi ptr [ %.pre434, %.thread296.1 ], [ %i.byf, %bb.ai ], [ %.ph469, %.split332.sink.split ]
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next408, 4
  br i1 %exitcond410.not, label %.loopexit, label %.split330, !llvm.loop !281

.loopexit:                                        ; preds = %.split311.us, %bb.m, %.split324.us, %bb.k, %.split332, %.split332.us.us.split, %.split330.us.us.us.preheader, %bb.j, %.loopexit302
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @update_refresh_map(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @input, align 8, !tbaa !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4732
  %i.c = load i32, ptr %i.b, align 4, !tbaa !288
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
  %i.h = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %i.i = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 164
  %i.k = load i32, ptr %i.j, align 4, !tbaa !140
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.q = load i32, ptr %i.p, align 8, !tbaa !141
  %i.r = shl nsw i32 %i.q, 1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store i8 %i.g, ptr %i.t, align 1, !tbaa !45
  %i.u = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %i.v = load ptr, ptr @img, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 164
  %i.x = load i32, ptr %i.w, align 4, !tbaa !140
  %i.y = shl nsw i32 %i.x, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 160
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !141
  %i.ae = shl nsw i32 %i.ad, 1
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr i8, ptr %i.ab, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 1
  store i8 %i.g, ptr %i.ah, align 1, !tbaa !45
  %i.ai = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %i.aj = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 164
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !140
  %i.am = shl nsw i32 %i.al, 1
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ai, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !141
  %i.at = shl nsw i32 %i.as, 1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.aq, i64 %i.au
  store i8 %i.g, ptr %i.av, align 1, !tbaa !45
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.aw = icmp eq i32 %i.e, 3
  br i1 %i.aw, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.ax = icmp eq i32 %1, 0                       ; 4 uses
  br i1 %i.ax, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !97 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 10
  br i1 %i.ba, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = icmp eq i32 %i.az, 9
  %i.bc = zext i1 %i.bb to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.bd = phi i8 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.bc, %bb.g ]
  %i.be = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %i.bf = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 164
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !140
  %i.bi = shl nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !141
  %i.bo = shl nsw i32 %i.bn, 1
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  store i8 %i.bd, ptr %i.bq, align 1, !tbaa !45
  br i1 %i.ax, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !97 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 10
  br i1 %i.bt, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = icmp eq i32 %i.bs, 9
  %i.bv = zext i1 %i.bu to i8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %i.bw = phi i8 [ 0, %bb.h ], [ 1, %bb.i ], [ %i.bv, %bb.j ]
  %i.bx = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %i.by = load ptr, ptr @img, align 8, !tbaa !16  ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 164
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !140
  %i.cb = shl nsw i32 %i.ca, 1
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = shl nsw i32 %i.cg, 1
end_hunk_1
