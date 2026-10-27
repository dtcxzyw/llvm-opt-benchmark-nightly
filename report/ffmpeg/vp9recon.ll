Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9recon?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_vp9_intra_recon_8bpp:bb.a
  %i.ya = getelementptr inbounds i8, ptr %i.xz, i64 -1
  %wide.load366 = load <4 x i8>, ptr %i.ya, align 1, !tbaa !40
  %i.yb = getelementptr inbounds nuw i8, ptr %i.b, i64 %index365
  store <4 x i8> %wide.load366, ptr %i.yb, align 4, !tbaa !40
  %index.next367 = add nuw i64 %index365, 4       ; 2 uses
  %i.yc = icmp eq i64 %index.next367, %i.xq
  br i1 %i.yc, label %._crit_edge126.us.us, label %vec.epilog.vector.body364, !llvm.loop !142

.lr.ph125.us.us:                                  ; preds = %.lr.ph125.us.us.preheader, %.lr.ph125.us.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph125.us.us ], [ %indvars.iv192.ph, %.lr.ph125.us.us.preheader ] ; 3 uses
  %i.yd = mul nsw i64 %i.sv, %indvars.iv192
  %i.ye = getelementptr inbounds i8, ptr %i.st, i64 %i.yd
  %i.yf = getelementptr inbounds i8, ptr %i.ye, i64 -1
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !40
  %i.yh = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv192
  store i8 %i.yg, ptr %i.yh, align 1, !tbaa !40
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.yi = icmp samesign ult i64 %indvars.iv.next193, %i.xq
  br i1 %i.yi, label %.lr.ph125.us.us, label %._crit_edge126.us.us, !llvm.loop !143

._crit_edge126.us.us:                             ; preds = %vec.epilog.vector.body364, %.lr.ph125.us.us, %middle.block355, %.preheader.us.us.._crit_edge126.us.us_crit_edge
  %.pre-phi210 = phi i64 [ %.pre209, %.preheader.us.us.._crit_edge126.us.us_crit_edge ], [ %i.xq, %middle.block355 ], [ %i.xq, %.lr.ph125.us.us ], [ %i.xq, %vec.epilog.vector.body364 ]
  %i.yj = getelementptr i8, ptr %i.b, i64 %.pre-phi210 ; 2 uses
  %i.yk = getelementptr i8, ptr %i.yj, i64 -1
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !40
  %i.ym = sub nsw i32 %i.sk, %i.sr
  %i.yn = sext i32 %i.ym to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yj, i8 %i.yl, i64 %i.yn, i1 false)
  br label %check_intra_mode.exit42.us.us

check_intra_mode.exit42.us.us:                    ; preds = %.lr.ph.us143.us, %vec.epilog.vector.body393, %.lr.ph123.us.us, %middle.block457, %vec.epilog.middle.block471, %middle.block384, %.preheader83.us.us, %.preheader85.us.us, %._crit_edge126.us.us, %._crit_edge.us144.us, %bb.bf, %bb.bd
  %i.yo = zext i32 %.pre203 to i64
  %i.yp = getelementptr inbounds nuw [120 x i8], ptr %i.nv, i64 %i.yo
  %i.yq = getelementptr inbounds nuw [8 x i8], ptr %i.yp, i64 %i.qb
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !85
  call void %i.yr(ptr noundef %.0175.i131.us.us, i64 noundef %i.pi, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.pd, 0
  br i1 %.not195.i.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %check_intra_mode.exit42.us.us
  %i.ys = load ptr, ptr %i.ny, align 8, !tbaa !85
  %i.yt = load i64, ptr %i.no, align 8, !tbaa !91
  %i.yu = load ptr, ptr %i.on, align 8, !tbaa !92
  %.idx236 = shl nsw i64 %indvars.iv195, 5
  %i.yv = getelementptr inbounds i8, ptr %i.yu, i64 %.idx236
  call void %i.ys(ptr noundef %.0175.i131.us.us, i64 noundef %i.yt, ptr noundef %i.yv, i32 noundef %i.pd) #5, !inline_history !0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %check_intra_mode.exit42.us.us
  %i.yw = add nsw i32 %.1185.i128.us.us, %i.aq    ; 2 uses
  %i.yx = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.ob
  %i.yy = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.ob
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, %i.oe ; 2 uses
  %i.yz = icmp slt i32 %i.yw, %i.nf
  br i1 %i.yz, label %bb.ag, label %._crit_edge138.us.us, !llvm.loop !3

._crit_edge138.us.us:                             ; preds = %bb.bk
  %i.za = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 68
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !77
  %i.zd = mul nsw i32 %i.zc, %i.oa
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds i8, ptr %.1.i142.us.us, i64 %i.ze
  %i.zg = load i64, ptr %i.no, align 8, !tbaa !91
  %i.zh = mul nsw i64 %i.zg, %i.ob
  %i.zi = getelementptr inbounds i8, ptr %.1180.i141.us.us, i64 %i.zh
  %i.zj = add nsw i32 %.1183.i140.us.us, %i.aq    ; 2 uses
  %i.zk = icmp slt i32 %i.zj, %i.nj
  br i1 %i.zk, label %.preheader87.us.us, label %..loopexit_crit_edge.split.us.us, !llvm.loop !4

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge138.us.us
  br i1 %i.og, label %.preheader87.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit_crit_edge.split.us.us, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_16bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 58 uses
  %i.c = load ptr, ptr %0, align 16, !tbaa !34    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 16, !tbaa !37  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_vp9_bwh_tab, i64 26), i64 %i.l ; 2 uses
  %i.n = load i8, ptr %i.m, align 2, !tbaa !40
  %i.o = zext i8 %i.n to i32
  %i.p = shl nuw nsw i32 %i.o, 1                  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !41   ; 5 uses
  %i.s = shl nuw i32 1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = shl i32 %i.r, 1
  %i.y = shl nuw i32 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 3964
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %i.ab = sub i32 %i.aa, %i.i
  %i.ac = shl i32 %i.ab, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.p) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = sub i32 %i.ae, %i.g
  %i.ag = shl i32 %i.af, 1
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.w) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !68
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 6 uses
  %i.ao = add i32 %i.al, %i.an
  %i.ap = shl nuw i32 1, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.._crit_edge156_crit_edge, label %.preheader118.lr.ph

.._crit_edge156_crit_edge:                        ; preds = %bb.a
  %.pre = and i32 %i.g, 7
  br label %._crit_edge156

.preheader118.lr.ph:                              ; preds = %bb.a
  %i.av = add i32 %i.al, %i.r
  %.not200 = icmp eq i32 %..i, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = icmp sgt i32 %i.g, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = and i32 %i.g, 7                         ; 3 uses
  %i.be = shl i32 %i.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.bk = sext i32 %i.av to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 8, %i.r
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl i32 4, %i.r                         ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  br i1 %.not200, label %._crit_edge156, label %.preheader118.us.preheader

.preheader118.us.preheader:                       ; preds = %.preheader118.lr.ph
  %i.br = add nsw i32 %i.p, -1
  %i.bs = getelementptr inbounds i8, ptr %i.au, i64 %1
  %i.bt = sext i32 %i.s to i64                    ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = zext nneg i32 %..i to i64
  %i.bw = zext nneg i32 %i.y to i64
  %i.bx = zext nneg i32 %i.ah to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader, %._crit_edge151.us
  %indvars.iv258 = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next259, %._crit_edge151.us ] ; 5 uses
  %.0178.i155.us = phi ptr [ %i.bs, %.preheader118.us.preheader ], [ %i.si, %._crit_edge151.us ] ; 2 uses
  %.0179.i154.us = phi ptr [ %i.ar, %.preheader118.us.preheader ], [ %i.sl, %._crit_edge151.us ] ; 2 uses
  %.0186.i152.us = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next254, %._crit_edge151.us ]
  %i.bz = shl nsw i64 %indvars.iv258, 1
  %i.ca = icmp sgt i64 %indvars.iv258, 0
  %i.cb = or i1 %i.bb, %i.ca                      ; 5 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = trunc nsw i64 %indvars.iv258 to i32     ; 2 uses
  %i.ce = or i32 %i.bd, %i.cd
  %or.cond3.not.i.us = icmp eq i32 %i.ce, 0
  %i.cf = icmp eq i64 %indvars.iv258, 0           ; 2 uses
  %i.cg = select i1 %i.cb, i32 1, i32 65535
  %invariant.gep = getelementptr i8, ptr %i.aw, i64 %i.bz
  br label %bb.b

bb.b:                                             ; preds = %.preheader118.us, %bb.ab
  %indvars.iv253 = phi i64 [ %.0186.i152.us, %.preheader118.us ], [ %indvars.iv.next254, %bb.ab ] ; 4 uses
  %indvars.iv251 = phi i64 [ 0, %.preheader118.us ], [ %indvars.iv.next252, %bb.ab ] ; 7 uses
  %.0176.i147.us = phi ptr [ %.0178.i155.us, %.preheader118.us ], [ %i.le, %bb.ab ] ; 3 uses
  %.0177.i144.us = phi ptr [ %.0179.i154.us, %.preheader118.us ], [ %i.ld, %bb.ab ] ; 5 uses
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !41 ; 8 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv251
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us339 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us339, label %.thread340, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread340

.thread340:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv253
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv253
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread340, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread340 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread340 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread340 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.ba, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bc, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.i, %i.do
  %i.dq = icmp sgt i64 %indvars.iv251, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv251, %i.bu      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %.loopexit115.us

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.i
  %i.ei = shl i32 %i.eh, 1
  %i.ej = trunc nsw i64 %indvars.iv251 to i32     ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = shl i32 %i.ek, 2                        ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5
  %i.eo = icmp eq i8 %i.en, 3                     ; 3 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.cb, label %bb.h, label %.critedge.i.preheader.us

.critedge.i.us:                                   ; preds = %vec.epilog.iter.check513, %.critedge.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.i.us ], [ %n.vec504, %vec.epilog.iter.check513 ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ep
  store i16 %i.ri, ptr %i.eq, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit116.us, label %.critedge.i.us, !llvm.loop !150

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = sub nsw i64 0, %i.dm
  %i.es = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.er ; 2 uses
  %i.et = sub nsw i64 0, %i.dl
  %i.eu = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.et ; 2 uses
  %i.ev = select i1 %i.cf, ptr %i.eu, ptr %i.es   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread72.us

bb.j:                                             ; preds = %bb.i
  %i.ew = icmp eq i64 %indvars.iv251, 0
  %or.cond7.i.us = or i1 %i.cf, %i.ew
  %spec.select = select i1 %or.cond7.i.us, ptr %i.eu, ptr %i.es
  br label %.thread72.us

.thread.us:                                       ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = shl i32 %i.ej, 3
  %i.fa = add i32 %i.ez, %i.be
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb ; 2 uses
  br label %.thread72.us

.thread72.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %i.ev, %bb.j ], [ %i.ev, %bb.i ] ; 10 uses
  %.0279.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %spec.select, %bb.j ], [ undef, %bb.i ] ; 6 uses
  %i.fd = and i64 %i.ec, 2189
  %.not289.not.i.us = icmp ne i64 %i.fd, 0
  %i.fe = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fe, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread72.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %.loopexit115.us

bb.m:                                             ; preds = %bb.k
  %.not306 = xor i1 %i.eo, true
  %or.cond9.i.us = select i1 %.not306, i1 true, i1 %i.ds
  %i.ff = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.ff, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %.loopexit115.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread72.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = shl i32 8, %.pre.pre
  %i.fh = sext i32 %i.fg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fh, i1 false)
  br label %.loopexit116.us

bb.p:                                             ; preds = %bb.n
  %i.fi = shl i32 %i.ek, 3                        ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fj, i1 false)
  %i.fk = add i32 %i.fi, -2
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.ax, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !40 ; 3 uses
  %i.fo = sub nsw i32 %i.ee, %i.el                ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %iter.check485, label %.loopexit116.us

iter.check485:                                    ; preds = %bb.p
  %i.fq = sext i32 %i.el to i64                   ; 3 uses
  %i.fr = zext nneg i32 %i.fo to i64              ; 5 uses
  %min.iters.check475 = icmp ult i32 %i.fo, 16
  br i1 %min.iters.check475, label %vec.epilog.ph489, label %vector.ph476

vector.ph476:                                     ; preds = %iter.check485
  %i.fs = and i64 %i.fr, 12
  %n.vec477 = and i64 %i.fr, 2147483632           ; 4 uses
  %broadcast.splatinsert478 = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat479 = shufflevector <8 x i16> %broadcast.splatinsert478, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph476, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph476 ], [ %index.next482, %vector.body480 ] ; 2 uses
  %i.ft = add nsw i64 %index481, %i.fq
  %i.fu = shl nsw i64 %i.ft, 1
  %i.fv = getelementptr inbounds i8, ptr %i.ax, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <8 x i16> %broadcast.splat479, ptr %i.fv, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat479, ptr %i.fw, align 8, !tbaa !40
  %index.next482 = add nuw i64 %index481, 16      ; 2 uses
  %i.fx = icmp eq i64 %index.next482, %n.vec477
  br i1 %i.fx, label %middle.block483, label %vector.body480, !llvm.loop !151

middle.block483:                                  ; preds = %vector.body480
  %cmp.n484 = icmp eq i64 %n.vec477, %i.fr
  br i1 %cmp.n484, label %.loopexit116.us, label %vec.epilog.iter.check486

vec.epilog.iter.check486:                         ; preds = %middle.block483
  %min.epilog.iters.check488 = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check488, label %.lr.ph121.us, label %vec.epilog.ph489, !prof !208

vec.epilog.ph489:                                 ; preds = %iter.check485, %vec.epilog.iter.check486
  %vec.epilog.resume.val490 = phi i64 [ %n.vec477, %vec.epilog.iter.check486 ], [ 0, %iter.check485 ]
  %broadcast.splatinsert492 = insertelement <4 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat493 = shufflevector <4 x i16> %broadcast.splatinsert492, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph489
  %index495 = phi i64 [ %vec.epilog.resume.val490, %vec.epilog.ph489 ], [ %index.next496, %vec.epilog.vector.body494 ] ; 2 uses
  %i.fy = add nsw i64 %index495, %i.fq
  %i.fz = shl nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds i8, ptr %i.ax, i64 %i.fz
  store <4 x i16> %broadcast.splat493, ptr %i.ga, align 8, !tbaa !40
  %index.next496 = add nuw i64 %index495, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next496, %i.fr
  br i1 %i.gb, label %.loopexit116.us, label %vec.epilog.vector.body494, !llvm.loop !152

.lr.ph121.us:                                     ; preds = %vec.epilog.iter.check486, %.lr.ph121.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph121.us ], [ %n.vec477, %vec.epilog.iter.check486 ] ; 2 uses
  %i.gc = add nsw i64 %indvars.iv217, %i.fq
  %i.gd = shl nsw i64 %i.gc, 1
  %i.ge = getelementptr inbounds i8, ptr %i.ax, i64 %i.gd
  store i16 %i.fn, ptr %i.ge, align 2, !tbaa !40
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next218, %i.fr
  br i1 %i.gf, label %.lr.ph121.us, label %.loopexit116.us, !llvm.loop !153

.loopexit116.us:                                  ; preds = %.critedge.i.us, %vec.epilog.vector.body521, %.lr.ph121.us, %vec.epilog.vector.body494, %middle.block510, %middle.block483, %.critedge.i.preheader.us, %bb.p, %bb.o
  %.0279.i79.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ %.0279.i.ph.us, %middle.block483 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body521 ], [ %.0279.i.ph.us, %vec.epilog.vector.body494 ], [ %.0279.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block510 ], [ undef, %.critedge.i.us ]
  %.0280.i76.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ %.0280.i.ph.us, %middle.block483 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body521 ], [ %.0280.i.ph.us, %vec.epilog.vector.body494 ], [ %.0280.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block510 ], [ undef, %.critedge.i.us ]
  %i.gg = and i64 %i.ec, 2189
  %.not293.not.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not293.not.i.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.loopexit116.us
  %or.cond11.i.us = and i1 %i.cb, %i.dr
  br i1 %or.cond11.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = add nsw i32 %i.dv, -8
  %i.gi = shl i32 128, %i.gh
  %i.gj = add nuw i32 %i.gi, %i.cg
  %i.gk = trunc i32 %i.gj to i16
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.gl = getelementptr inbounds i8, ptr %.0279.i79.us, i64 -2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i16 [ %i.gm, %bb.s ], [ %i.gk, %bb.r ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %.loopexit116.us
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.u, label %.loopexit115.us

bb.u:                                             ; preds = %bb.t
  %or.cond13.i.us = select i1 %i.cb, i1 %i.ds, i1 false
  %i.gn = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.gn, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.v, label %.loopexit115.us.loopexit

.loopexit115.us.loopexit:                         ; preds = %bb.u
  %i.go = load <1 x i16>, ptr %i.bg, align 2
  %i.gp = shufflevector <1 x i16> %i.go, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.gp, ptr %i.by, align 8, !tbaa !40
  br label %.loopexit115.us

bb.v:                                             ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %.0280.i76.us, i64 8
  %i.gr = load i64, ptr %i.gq, align 1
  store i64 %i.gr, ptr %i.bh, align 8
  br label %.loopexit115.us

.loopexit115.us:                                  ; preds = %.loopexit115.us.loopexit, %bb.v, %bb.t, %bb.m, %bb.l, %bb.f
  %.071.us = phi ptr [ %.0280.i.ph.us, %bb.m ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %i.ax, %.loopexit115.us.loopexit ]
  %i.gs = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.gs, 0
  br i1 %.not296.not.i.us, label %bb.w, label %check_intra_mode.exit.us

bb.w:                                             ; preds = %.loopexit115.us
  %i.gt = shl i32 4, %.pre.pre                    ; 15 uses
  br i1 %i.dr, label %bb.x, label %.preheader113.us

vec.epilog.scalar.ph460:                          ; preds = %vec.epilog.iter.check459, %vec.epilog.scalar.ph460
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph460 ], [ %n.vec450, %vec.epilog.iter.check459 ] ; 2 uses
  %i.gu = shl nuw nsw i64 %indvars.iv224, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gu
  store i16 %i.ru, ptr %i.gv, align 2, !tbaa !40
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %check_intra_mode.exit.us, label %vec.epilog.scalar.ph460, !llvm.loop !154

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !67
  %i.gy = sub i32 %i.gx, %i.g
  %i.gz = shl i32 %i.gy, 1
  %i.ha = sub i32 %i.gz, %i.cd                    ; 2 uses
  %i.hb = shl i32 %i.ha, 2                        ; 10 uses
  %i.hc = icmp eq i64 %indvars.iv251, 0           ; 2 uses
  %i.hd = select i1 %i.hc, ptr %.0176.i147.us, ptr %.0177.i144.us ; 40 uses
  %i.he = select i1 %i.hc, i64 %i.dl, i64 %i.dm   ; 12 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gt, %i.hb       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader110.us, label %.preheader111.us

.lr.ph126.us:                                     ; preds = %.lr.ph126.us, %.lr.ph126.us.preheader772
  %indvars.iv229 = phi i64 [ %indvars.iv229.ph, %.lr.ph126.us.preheader772 ], [ %indvars.iv.next230.1, %.lr.ph126.us ] ; 5 uses
  %i.hf = mul nsw i64 %i.he, %indvars.iv229
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !40
  %3 = xor i64 %indvars.iv229, -1
  %4 = add nsw i64 %13, %3
  %5 = shl nsw i64 %4, 1
  %i.hj = getelementptr inbounds i8, ptr %i.b, i64 %5
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !40
  %indvars.iv.next230 = or disjoint i64 %indvars.iv229, 1
  %i.hk = mul nsw i64 %i.he, %indvars.iv.next230
  %i.hl = getelementptr inbounds i8, ptr %i.hd, i64 %i.hk
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 -2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !40
  %6 = xor i64 %indvars.iv229, -2
  %7 = add nsw i64 %6, %13
  %8 = shl nsw i64 %7, 1
  %i.ho = getelementptr inbounds i8, ptr %i.b, i64 %8
  store i16 %i.hn, ptr %i.ho, align 2, !tbaa !40
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %exitcond233.not.1 = icmp eq i64 %indvars.iv.next230.1, %wide.trip.count232
  br i1 %exitcond233.not.1, label %check_intra_mode.exit.us, label %.lr.ph126.us, !llvm.loop !155

.lr.ph128.us:                                     ; preds = %.lr.ph128.us.preheader771, %.lr.ph128.us
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph128.us ], [ %indvars.iv234.ph, %.lr.ph128.us.preheader771 ] ; 3 uses
  %i.hp = mul nsw i64 %i.he, %indvars.iv234
  %i.hq = getelementptr inbounds i8, ptr %i.hd, i64 %i.hp
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !40
  %i.ht = trunc nuw nsw i64 %indvars.iv234 to i32
  %i.hu = xor i32 %i.ht, -1
  %i.hv = add i32 %i.gt, %i.hu
  %i.hw = shl nsw i32 %i.hv, 1
  %9 = sext i32 %i.hw to i64
  %i.hx = getelementptr inbounds i8, ptr %i.b, i64 %9
  store i16 %i.hs, ptr %i.hx, align 2, !tbaa !40
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hy = icmp samesign ult i64 %indvars.iv.next235, %i.oa
  br i1 %i.hy, label %.lr.ph128.us, label %._crit_edge.us, !llvm.loop !156

._crit_edge.us:                                   ; preds = %.lr.ph128.us, %middle.block430, %.preheader110.us
  %i.hz = sub nsw i32 %i.gt, %i.hb                ; 4 uses
  %i.ia = shl nuw nsw i32 %i.hz, 1
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 8, !tbaa !40 ; 3 uses
  %i.ie = icmp sgt i32 %i.hz, 0
  br i1 %i.ie, label %iter.check406, label %check_intra_mode.exit.us

iter.check406:                                    ; preds = %._crit_edge.us
  %i.if = zext nneg i32 %i.hz to i64              ; 5 uses
  %min.iters.check396 = icmp ult i32 %i.hz, 16
  br i1 %min.iters.check396, label %vec.epilog.ph410, label %vector.ph397

vector.ph397:                                     ; preds = %iter.check406
  %i.ig = and i64 %i.if, 12
  %n.vec398 = and i64 %i.if, 2147483632           ; 4 uses
  %broadcast.splatinsert399 = insertelement <8 x i16> poison, i16 %i.id, i64 0
  %broadcast.splat400 = shufflevector <8 x i16> %broadcast.splatinsert399, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body401

vector.body401:                                   ; preds = %vector.ph397, %vector.body401
  %index402 = phi i64 [ 0, %vector.ph397 ], [ %index.next403, %vector.body401 ] ; 2 uses
  %i.ih = shl nuw nsw i64 %index402, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ih ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <8 x i16> %broadcast.splat400, ptr %i.ii, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat400, ptr %i.ij, align 16, !tbaa !40
  %index.next403 = add nuw i64 %index402, 16      ; 2 uses
  %i.ik = icmp eq i64 %index.next403, %n.vec398
  br i1 %i.ik, label %middle.block404, label %vector.body401, !llvm.loop !157

middle.block404:                                  ; preds = %vector.body401
  %cmp.n405 = icmp eq i64 %n.vec398, %i.if
  br i1 %cmp.n405, label %check_intra_mode.exit.us, label %vec.epilog.iter.check407

vec.epilog.iter.check407:                         ; preds = %middle.block404
  %min.epilog.iters.check409 = icmp eq i64 %i.ig, 0
  br i1 %min.epilog.iters.check409, label %.lr.ph131.us, label %vec.epilog.ph410, !prof !208

vec.epilog.ph410:                                 ; preds = %iter.check406, %vec.epilog.iter.check407
  %vec.epilog.resume.val411 = phi i64 [ %n.vec398, %vec.epilog.iter.check407 ], [ 0, %iter.check406 ]
  %broadcast.splatinsert413 = insertelement <4 x i16> poison, i16 %i.id, i64 0
  %broadcast.splat414 = shufflevector <4 x i16> %broadcast.splatinsert413, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body415

vec.epilog.vector.body415:                        ; preds = %vec.epilog.vector.body415, %vec.epilog.ph410
  %index416 = phi i64 [ %vec.epilog.resume.val411, %vec.epilog.ph410 ], [ %index.next417, %vec.epilog.vector.body415 ] ; 2 uses
  %i.il = shl nuw nsw i64 %index416, 1
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.il
  store <4 x i16> %broadcast.splat414, ptr %i.im, align 8, !tbaa !40
  %index.next417 = add nuw i64 %index416, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next417, %i.if
  br i1 %i.in, label %check_intra_mode.exit.us, label %vec.epilog.vector.body415, !llvm.loop !158

.lr.ph131.us:                                     ; preds = %vec.epilog.iter.check407, %.lr.ph131.us
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph131.us ], [ %n.vec398, %vec.epilog.iter.check407 ] ; 2 uses
  %i.io = shl nuw nsw i64 %indvars.iv237, 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.io
  store i16 %i.id, ptr %i.ip, align 2, !tbaa !40
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.iq = icmp samesign ult i64 %indvars.iv.next238, %i.if
  br i1 %i.iq, label %.lr.ph131.us, label %check_intra_mode.exit.us, !llvm.loop !159

bb.z:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader106.us, label %.preheader107.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us, %.lr.ph133.us.preheader767
  %indvars.iv240 = phi i64 [ %indvars.iv240.ph, %.lr.ph133.us.preheader767 ], [ %indvars.iv.next241.3, %.lr.ph133.us ] ; 6 uses
  %i.ir = mul nsw i64 %i.he, %indvars.iv240
  %i.is = getelementptr inbounds i8, ptr %i.hd, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 -2
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !40
  %i.iv = shl nuw nsw i64 %indvars.iv240, 1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iv
  store i16 %i.iu, ptr %i.iw, align 8, !tbaa !40
  %indvars.iv.next241 = or disjoint i64 %indvars.iv240, 1 ; 2 uses
  %i.ix = mul nsw i64 %i.he, %indvars.iv.next241
  %i.iy = getelementptr inbounds i8, ptr %i.hd, i64 %i.ix
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -2
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !40
  %i.jb = shl nuw nsw i64 %indvars.iv.next241, 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jb
  store i16 %i.ja, ptr %i.jc, align 2, !tbaa !40
  %indvars.iv.next241.1 = or disjoint i64 %indvars.iv240, 2 ; 2 uses
  %i.jd = mul nsw i64 %i.he, %indvars.iv.next241.1
  %i.je = getelementptr inbounds i8, ptr %i.hd, i64 %i.jd
  %i.jf = getelementptr inbounds i8, ptr %i.je, i64 -2
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !40
  %i.jh = shl nuw nsw i64 %indvars.iv.next241.1, 1
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jh
  store i16 %i.jg, ptr %i.ji, align 4, !tbaa !40
  %indvars.iv.next241.2 = or disjoint i64 %indvars.iv240, 3 ; 2 uses
  %i.jj = mul nsw i64 %i.he, %indvars.iv.next241.2
  %i.jk = getelementptr inbounds i8, ptr %i.hd, i64 %i.jj
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -2
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !40
  %i.jn = shl nuw nsw i64 %indvars.iv.next241.2, 1
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jn
  store i16 %i.jm, ptr %i.jo, align 2, !tbaa !40
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond244.not.3 = icmp eq i64 %indvars.iv.next241.3, %wide.trip.count243
  br i1 %exitcond244.not.3, label %check_intra_mode.exit.us, label %.lr.ph133.us, !llvm.loop !160

.lr.ph135.us:                                     ; preds = %.lr.ph135.us.preheader766, %.lr.ph135.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph135.us ], [ %indvars.iv245.ph, %.lr.ph135.us.preheader766 ] ; 3 uses
  %i.jp = mul nsw i64 %i.he, %indvars.iv245
  %i.jq = getelementptr inbounds i8, ptr %i.hd, i64 %i.jp
  %i.jr = getelementptr inbounds i8, ptr %i.jq, i64 -2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !40
  %i.jt = shl nuw nsw i64 %indvars.iv245, 1
  %i.ju = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jt
  store i16 %i.js, ptr %i.ju, align 2, !tbaa !40
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jv = icmp samesign ult i64 %indvars.iv.next246, %i.lh
  br i1 %i.jv, label %.lr.ph135.us, label %._crit_edge136.us, !llvm.loop !161

._crit_edge136.us:                                ; preds = %.lr.ph135.us, %middle.block379, %.preheader106.us
  %i.jw = shl i32 %i.ha, 3
  %i.jx = add i32 %i.jw, -2
  %i.jy = sext i32 %i.jx to i64
  %i.jz = getelementptr inbounds i8, ptr %i.b, i64 %i.jy
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !40 ; 3 uses
  %i.kb = sub nsw i32 %i.gt, %i.hb                ; 3 uses
  %i.kc = icmp sgt i32 %i.kb, 0
  br i1 %i.kc, label %iter.check, label %check_intra_mode.exit.us

iter.check:                                       ; preds = %._crit_edge136.us
  %i.kd = sext i32 %i.hb to i64                   ; 3 uses
  %i.ke = zext nneg i32 %i.kb to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.kb, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.kf = and i64 %i.ke, 12
  %n.vec = and i64 %i.ke, 2147483632              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ka, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kg = add nsw i64 %index, %i.kd
  %i.kh = shl nsw i64 %i.kg, 1
  %i.ki = getelementptr inbounds i8, ptr %i.b, i64 %i.kh ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.ki, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat, ptr %i.kj, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kk = icmp eq i64 %index.next, %n.vec
  br i1 %i.kk, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ke
  br i1 %cmp.n, label %check_intra_mode.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph139.us, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %broadcast.splatinsert368 = insertelement <4 x i16> poison, i16 %i.ka, i64 0
  %broadcast.splat369 = shufflevector <4 x i16> %broadcast.splatinsert368, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index370 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next371, %vec.epilog.vector.body ] ; 2 uses
  %i.kl = add nsw i64 %index370, %i.kd
  %i.km = shl nsw i64 %i.kl, 1
  %i.kn = getelementptr inbounds i8, ptr %i.b, i64 %i.km
  store <4 x i16> %broadcast.splat369, ptr %i.kn, align 8, !tbaa !40
  %index.next371 = add nuw i64 %index370, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next371, %i.ke
  br i1 %i.ko, label %check_intra_mode.exit.us, label %vec.epilog.vector.body, !llvm.loop !163

.lr.ph139.us:                                     ; preds = %vec.epilog.iter.check, %.lr.ph139.us
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph139.us ], [ %n.vec, %vec.epilog.iter.check ] ; 2 uses
  %i.kp = add nsw i64 %indvars.iv248, %i.kd
  %i.kq = shl nsw i64 %i.kp, 1
  %i.kr = getelementptr inbounds i8, ptr %i.b, i64 %i.kq
  store i16 %i.ka, ptr %i.kr, align 2, !tbaa !40
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.ks = icmp samesign ult i64 %indvars.iv.next249, %i.ke
  br i1 %i.ks, label %.lr.ph139.us, label %check_intra_mode.exit.us, !llvm.loop !164

check_intra_mode.exit.us:                         ; preds = %vec.epilog.scalar.ph460, %vec.epilog.vector.body467, %.lr.ph126.us, %.lr.ph131.us, %vec.epilog.vector.body415, %.lr.ph133.us, %.lr.ph139.us, %vec.epilog.vector.body, %middle.block456, %middle.block443, %middle.block404, %middle.block391, %middle.block, %.preheader113.us, %.preheader111.us, %._crit_edge.us, %.preheader107.us, %._crit_edge136.us, %.loopexit115.us
  %i.kt = zext i32 %.pre.pre to i64
  %i.ku = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.eb
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !85
  call void %i.kw(ptr noundef %.0177.i144.us, i64 noundef %i.dm, ptr noundef nonnull %i.b, ptr noundef %.071.us) #5, !inline_history !0
  %.not197.i.us = icmp eq i32 %i.dh, 0
  br i1 %.not197.i.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %check_intra_mode.exit.us
  %i.kx = zext i32 %i.df to i64
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.kx
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !85
  %i.la = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.lb = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.idx = shl nsw i64 %indvars.iv253, 6
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 %.idx
  call void %i.kz(ptr noundef %.0177.i144.us, i64 noundef %i.la, ptr noundef %i.lc, i32 noundef %i.dh) #5, !inline_history !0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %check_intra_mode.exit.us
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.bt ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.bo
  %i.le = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.bo
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, %i.bw ; 2 uses
  %i.lf = icmp slt i64 %indvars.iv.next252, %i.bv
  br i1 %i.lf, label %bb.b, label %._crit_edge151.us, !llvm.loop !1

.preheader106.us:                                 ; preds = %bb.z
  %i.lg = icmp sgt i32 %i.hb, 0
  br i1 %i.lg, label %.lr.ph135.us.preheader, label %._crit_edge136.us

.lr.ph135.us.preheader:                           ; preds = %.preheader106.us
  %i.lh = zext nneg i32 %i.hb to i64              ; 3 uses
  %min.iters.check373 = icmp ugt i32 %i.hb, 7
  %ident.check.not = icmp eq i64 %i.he, 1
  %or.cond745 = select i1 %min.iters.check373, i1 %ident.check.not, i1 false
  br i1 %or.cond745, label %vector.ph374, label %.lr.ph135.us.preheader766

vector.ph374:                                     ; preds = %.lr.ph135.us.preheader
  %n.vec375 = and i64 %i.lh, 2147483640           ; 3 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next378, %vector.body376 ] ; 10 uses
  %i.li = getelementptr inbounds i8, ptr %i.hd, i64 %index377
  %i.lj = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lk = getelementptr i8, ptr %i.hd, i64 %index377
  %i.ll = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lm = getelementptr i8, ptr %i.hd, i64 %index377
  %i.ln = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lo = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lp = getelementptr i8, ptr %i.hd, i64 %index377
  %i.lq = getelementptr inbounds i8, ptr %i.li, i64 -2
  %i.lr = getelementptr i8, ptr %i.lj, i64 -1
  %i.ls = getelementptr i8, ptr %i.ll, i64 1
  %i.lt = getelementptr i8, ptr %i.lm, i64 2
  %i.lu = getelementptr i8, ptr %i.ln, i64 3
  %i.lv = getelementptr i8, ptr %i.lo, i64 4
  %i.lw = getelementptr i8, ptr %i.lp, i64 5
  %i.lx = load i16, ptr %i.lq, align 2, !tbaa !40
  %i.ly = load i16, ptr %i.lr, align 2, !tbaa !40
  %i.lz = load i16, ptr %i.lk, align 2, !tbaa !40
  %i.ma = load i16, ptr %i.ls, align 2, !tbaa !40
  %i.mb = load i16, ptr %i.lt, align 2, !tbaa !40
  %i.mc = load i16, ptr %i.lu, align 2, !tbaa !40
  %i.md = load i16, ptr %i.lv, align 2, !tbaa !40
  %i.me = load i16, ptr %i.lw, align 2, !tbaa !40
  %i.mf = insertelement <8 x i16> poison, i16 %i.lx, i64 0
  %i.mg = insertelement <8 x i16> %i.mf, i16 %i.ly, i64 1
  %i.mh = insertelement <8 x i16> %i.mg, i16 %i.lz, i64 2
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 3
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 4
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 5
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 6
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 7
  %i.mn = shl nuw nsw i64 %index377, 1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mn
  store <8 x i16> %i.mm, ptr %i.mo, align 16, !tbaa !40
  %index.next378 = add nuw i64 %index377, 8       ; 2 uses
  %i.mp = icmp eq i64 %index.next378, %n.vec375
  br i1 %i.mp, label %middle.block379, label %vector.body376, !llvm.loop !165

middle.block379:                                  ; preds = %vector.body376
  %cmp.n380 = icmp eq i64 %n.vec375, %i.lh
  br i1 %cmp.n380, label %._crit_edge136.us, label %.lr.ph135.us.preheader766

.lr.ph135.us.preheader766:                        ; preds = %.lr.ph135.us.preheader, %middle.block379
  %indvars.iv245.ph = phi i64 [ 0, %.lr.ph135.us.preheader ], [ %n.vec375, %middle.block379 ]
  br label %.lr.ph135.us

.preheader107.us:                                 ; preds = %bb.z
  %i.mq = icmp sgt i32 %i.gt, 0
  br i1 %i.mq, label %.lr.ph133.us.preheader, label %check_intra_mode.exit.us

.lr.ph133.us.preheader:                           ; preds = %.preheader107.us
  %wide.trip.count243 = zext nneg i32 %i.gt to i64 ; 3 uses
  %min.iters.check385 = icmp ugt i32 %i.gt, 7
  %ident.check383.not = icmp eq i64 %i.he, 1
  %or.cond746 = select i1 %min.iters.check385, i1 %ident.check383.not, i1 false
  br i1 %or.cond746, label %vector.ph386, label %.lr.ph133.us.preheader767

vector.ph386:                                     ; preds = %.lr.ph133.us.preheader
  %n.vec387 = and i64 %wide.trip.count243, 2147483640 ; 3 uses
  br label %vector.body388

vector.body388:                                   ; preds = %vector.body388, %vector.ph386
  %index389 = phi i64 [ 0, %vector.ph386 ], [ %index.next390, %vector.body388 ] ; 10 uses
  %i.mr = getelementptr inbounds i8, ptr %i.hd, i64 %index389
  %i.ms = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mt = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mu = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mv = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mw = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mx = getelementptr i8, ptr %i.hd, i64 %index389
  %i.my = getelementptr i8, ptr %i.hd, i64 %index389
  %i.mz = getelementptr inbounds i8, ptr %i.mr, i64 -2
  %i.na = getelementptr i8, ptr %i.ms, i64 -1
  %i.nb = getelementptr i8, ptr %i.mu, i64 1
  %i.nc = getelementptr i8, ptr %i.mv, i64 2
  %i.nd = getelementptr i8, ptr %i.mw, i64 3
  %i.ne = getelementptr i8, ptr %i.mx, i64 4
  %i.nf = getelementptr i8, ptr %i.my, i64 5
  %i.ng = load i16, ptr %i.mz, align 2, !tbaa !40
  %i.nh = load i16, ptr %i.na, align 2, !tbaa !40
  %i.ni = load i16, ptr %i.mt, align 2, !tbaa !40
  %i.nj = load i16, ptr %i.nb, align 2, !tbaa !40
  %i.nk = load i16, ptr %i.nc, align 2, !tbaa !40
  %i.nl = load i16, ptr %i.nd, align 2, !tbaa !40
  %i.nm = load i16, ptr %i.ne, align 2, !tbaa !40
  %i.nn = load i16, ptr %i.nf, align 2, !tbaa !40
  %i.no = insertelement <8 x i16> poison, i16 %i.ng, i64 0
  %i.np = insertelement <8 x i16> %i.no, i16 %i.nh, i64 1
  %i.nq = insertelement <8 x i16> %i.np, i16 %i.ni, i64 2
  %i.nr = insertelement <8 x i16> %i.nq, i16 %i.nj, i64 3
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 4
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 5
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 6
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 7
  %i.nw = shl nuw nsw i64 %index389, 1
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nw
  store <8 x i16> %i.nv, ptr %i.nx, align 16, !tbaa !40
  %index.next390 = add nuw i64 %index389, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next390, %n.vec387
  br i1 %i.ny, label %middle.block391, label %vector.body388, !llvm.loop !166

middle.block391:                                  ; preds = %vector.body388
  %cmp.n392 = icmp eq i64 %n.vec387, %wide.trip.count243
  br i1 %cmp.n392, label %check_intra_mode.exit.us, label %.lr.ph133.us.preheader767

.lr.ph133.us.preheader767:                        ; preds = %.lr.ph133.us.preheader, %middle.block391
  %indvars.iv240.ph = phi i64 [ 0, %.lr.ph133.us.preheader ], [ %n.vec387, %middle.block391 ]
  br label %.lr.ph133.us

.preheader110.us:                                 ; preds = %bb.y
  %i.nz = icmp sgt i32 %i.hb, 0
  br i1 %i.nz, label %.lr.ph128.us.preheader, label %._crit_edge.us

.lr.ph128.us.preheader:                           ; preds = %.preheader110.us
  %i.oa = zext nneg i32 %i.hb to i64              ; 4 uses
  %min.iters.check424 = icmp ult i32 %i.hb, 24
  br i1 %min.iters.check424, label %.lr.ph128.us.preheader771, label %vector.scevcheck421

vector.scevcheck421:                              ; preds = %.lr.ph128.us.preheader
  %ident.check422 = icmp ne i64 %i.he, 1
  %i.ob = add nsw i64 %i.oa, -1                   ; 2 uses
  %i.oc = shl i32 8, %.pre.pre
  %i.od = add i32 %i.oc, -2                       ; 2 uses
  %i.oe = trunc nsw i64 %i.ob to i32
  %mul.result = shl i32 %i.oe, 1
  %10 = sub i32 %i.od, %mul.result
  %11 = icmp sgt i32 %10, %i.od
  %i.of = icmp ugt i64 %i.ob, 4294967295
  %i.og = or i1 %11, %i.of
  %i.oh = or i1 %ident.check422, %i.og
  br i1 %i.oh, label %.lr.ph128.us.preheader771, label %vector.ph425

vector.ph425:                                     ; preds = %vector.scevcheck421
  %n.vec426 = and i64 %i.oa, 2147483640           ; 3 uses
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next429, %vector.body427 ] ; 10 uses
  %i.oi = getelementptr inbounds i8, ptr %i.hd, i64 %index428
  %i.oj = getelementptr i8, ptr %i.hd, i64 %index428
  %i.ok = getelementptr i8, ptr %i.hd, i64 %index428
  %i.ol = getelementptr i8, ptr %i.hd, i64 %index428
  %i.om = getelementptr i8, ptr %i.hd, i64 %index428
  %i.on = getelementptr i8, ptr %i.hd, i64 %index428
  %i.oo = getelementptr i8, ptr %i.hd, i64 %index428
  %i.op = getelementptr i8, ptr %i.hd, i64 %index428
  %i.oq = getelementptr inbounds i8, ptr %i.oi, i64 -2
  %i.or = getelementptr i8, ptr %i.oj, i64 -1
  %i.os = getelementptr i8, ptr %i.ol, i64 1
  %i.ot = getelementptr i8, ptr %i.om, i64 2
  %i.ou = getelementptr i8, ptr %i.on, i64 3
  %i.ov = getelementptr i8, ptr %i.oo, i64 4
  %i.ow = getelementptr i8, ptr %i.op, i64 5
  %i.ox = load i16, ptr %i.oq, align 2, !tbaa !40
  %i.oy = load i16, ptr %i.or, align 2, !tbaa !40
  %i.oz = load i16, ptr %i.ok, align 2, !tbaa !40
  %i.pa = load i16, ptr %i.os, align 2, !tbaa !40
  %i.pb = load i16, ptr %i.ot, align 2, !tbaa !40
  %i.pc = load i16, ptr %i.ou, align 2, !tbaa !40
  %i.pd = load i16, ptr %i.ov, align 2, !tbaa !40
  %i.pe = load i16, ptr %i.ow, align 2, !tbaa !40
  %i.pf = insertelement <8 x i16> poison, i16 %i.ox, i64 0
  %i.pg = insertelement <8 x i16> %i.pf, i16 %i.oy, i64 1
  %i.ph = insertelement <8 x i16> %i.pg, i16 %i.oz, i64 2
  %i.pi = insertelement <8 x i16> %i.ph, i16 %i.pa, i64 3
  %i.pj = insertelement <8 x i16> %i.pi, i16 %i.pb, i64 4
  %i.pk = insertelement <8 x i16> %i.pj, i16 %i.pc, i64 5
  %i.pl = insertelement <8 x i16> %i.pk, i16 %i.pd, i64 6
  %i.pm = insertelement <8 x i16> %i.pl, i16 %i.pe, i64 7
  %i.pn = trunc nuw nsw i64 %index428 to i32
  %i.po = xor i32 %i.pn, -1
  %i.pp = add i32 %i.gt, %i.po
  %i.pq = shl nsw i32 %i.pp, 1
  %12 = sext i32 %i.pq to i64
  %i.pr = getelementptr inbounds i8, ptr %i.b, i64 %12
  %i.ps = getelementptr inbounds i8, ptr %i.pr, i64 -14
  %reverse = shufflevector <8 x i16> %i.pm, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ps, align 2, !tbaa !40
  %index.next429 = add nuw i64 %index428, 8       ; 2 uses
  %i.pt = icmp eq i64 %index.next429, %n.vec426
  br i1 %i.pt, label %middle.block430, label %vector.body427, !llvm.loop !167

middle.block430:                                  ; preds = %vector.body427
  %cmp.n431 = icmp eq i64 %n.vec426, %i.oa
  br i1 %cmp.n431, label %._crit_edge.us, label %.lr.ph128.us.preheader771

.lr.ph128.us.preheader771:                        ; preds = %vector.scevcheck421, %.lr.ph128.us.preheader, %middle.block430
  %indvars.iv234.ph = phi i64 [ 0, %vector.scevcheck421 ], [ 0, %.lr.ph128.us.preheader ], [ %n.vec426, %middle.block430 ]
  br label %.lr.ph128.us

.preheader111.us:                                 ; preds = %bb.y
  %i.pu = icmp sgt i32 %i.gt, 0
  br i1 %i.pu, label %.lr.ph126.us.preheader.a, label %check_intra_mode.exit.us

.lr.ph126.us.preheader.a:                         ; preds = %.preheader111.us
  %13 = zext nneg i32 %i.gt to i64                ; 3 uses
  %wide.trip.count232 = zext nneg i32 %i.gt to i64 ; 3 uses
  %min.iters.check436 = icmp ugt i32 %i.gt, 7
  %ident.check434.not = icmp eq i64 %i.he, 1
  %or.cond747 = select i1 %min.iters.check436, i1 %ident.check434.not, i1 false
  br i1 %or.cond747, label %vector.ph437, label %.lr.ph126.us.preheader772

vector.ph437:                                     ; preds = %.lr.ph126.us.preheader.a
  %n.vec438 = and i64 %wide.trip.count232, 2147483640 ; 3 uses
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next442, %vector.body439 ] ; 10 uses
  %i.pv = getelementptr inbounds i8, ptr %i.hd, i64 %index440
  %i.pw = getelementptr i8, ptr %i.hd, i64 %index440
  %i.px = getelementptr i8, ptr %i.hd, i64 %index440
  %i.py = getelementptr i8, ptr %i.hd, i64 %index440
  %i.pz = getelementptr i8, ptr %i.hd, i64 %index440
  %i.qa = getelementptr i8, ptr %i.hd, i64 %index440
  %i.qb = getelementptr i8, ptr %i.hd, i64 %index440
  %i.qc = getelementptr i8, ptr %i.hd, i64 %index440
  %i.qd = getelementptr inbounds i8, ptr %i.pv, i64 -2
  %i.qe = getelementptr i8, ptr %i.pw, i64 -1
  %i.qf = getelementptr i8, ptr %i.py, i64 1
  %i.qg = getelementptr i8, ptr %i.pz, i64 2
  %i.qh = getelementptr i8, ptr %i.qa, i64 3
  %i.qi = getelementptr i8, ptr %i.qb, i64 4
  %i.qj = getelementptr i8, ptr %i.qc, i64 5
  %i.qk = load i16, ptr %i.qd, align 2, !tbaa !40
  %i.ql = load i16, ptr %i.qe, align 2, !tbaa !40
  %i.qm = load i16, ptr %i.px, align 2, !tbaa !40
  %i.qn = load i16, ptr %i.qf, align 2, !tbaa !40
  %i.qo = load i16, ptr %i.qg, align 2, !tbaa !40
  %i.qp = load i16, ptr %i.qh, align 2, !tbaa !40
  %i.qq = load i16, ptr %i.qi, align 2, !tbaa !40
  %i.qr = load i16, ptr %i.qj, align 2, !tbaa !40
  %i.qs = insertelement <8 x i16> poison, i16 %i.qk, i64 0
  %i.qt = insertelement <8 x i16> %i.qs, i16 %i.ql, i64 1
  %i.qu = insertelement <8 x i16> %i.qt, i16 %i.qm, i64 2
  %i.qv = insertelement <8 x i16> %i.qu, i16 %i.qn, i64 3
  %i.qw = insertelement <8 x i16> %i.qv, i16 %i.qo, i64 4
  %i.qx = insertelement <8 x i16> %i.qw, i16 %i.qp, i64 5
  %i.qy = insertelement <8 x i16> %i.qx, i16 %i.qq, i64 6
  %i.qz = insertelement <8 x i16> %i.qy, i16 %i.qr, i64 7
  %14 = xor i64 %index440, -1
  %15 = add nsw i64 %13, %14
  %16 = shl nsw i64 %15, 1
  %i.ra = getelementptr inbounds i8, ptr %i.b, i64 %16
  %i.rb = getelementptr inbounds i8, ptr %i.ra, i64 -14
  %reverse441 = shufflevector <8 x i16> %i.qz, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse441, ptr %i.rb, align 8, !tbaa !40
  %index.next442 = add nuw i64 %index440, 8       ; 2 uses
  %i.rc = icmp eq i64 %index.next442, %n.vec438
  br i1 %i.rc, label %middle.block443, label %vector.body439, !llvm.loop !168

middle.block443:                                  ; preds = %vector.body439
  %cmp.n444 = icmp eq i64 %n.vec438, %wide.trip.count232
  br i1 %cmp.n444, label %check_intra_mode.exit.us, label %.lr.ph126.us.preheader772

.lr.ph126.us.preheader772:                        ; preds = %.lr.ph126.us.preheader.a, %middle.block443
  %indvars.iv229.ph = phi i64 [ 0, %.lr.ph126.us.preheader.a ], [ %n.vec438, %middle.block443 ]
  br label %.lr.ph126.us

.preheader113.us:                                 ; preds = %bb.w
  %i.rd = icmp sgt i32 %i.gt, 0
  br i1 %i.rd, label %iter.check458, label %check_intra_mode.exit.us

.critedge.i.preheader.us:                         ; preds = %bb.g
  %i.re = icmp sgt i32 %i.ee, 0
  br i1 %i.re, label %iter.check512, label %.loopexit116.us

iter.check512:                                    ; preds = %.critedge.i.preheader.us
  %i.rf = add nsw i32 %i.dv, -8
  %i.rg = shl i32 128, %i.rf
  %i.rh = trunc i32 %i.rg to i16
  %i.ri = add i16 %i.rh, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 5 uses
  %min.iters.check502 = icmp ult i32 %i.ee, 16
  br i1 %min.iters.check502, label %vec.epilog.ph516, label %vector.ph503

vector.ph503:                                     ; preds = %iter.check512
  %i.rj = and i64 %wide.trip.count, 12
  %n.vec504 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert505 = insertelement <8 x i16> poison, i16 %i.ri, i64 0
  %broadcast.splat506 = shufflevector <8 x i16> %broadcast.splatinsert505, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body507

vector.body507:                                   ; preds = %vector.ph503, %vector.body507
  %index508 = phi i64 [ 0, %vector.ph503 ], [ %index.next509, %vector.body507 ] ; 2 uses
  %i.rk = shl nuw nsw i64 %index508, 1
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rk ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 16
  store <8 x i16> %broadcast.splat506, ptr %i.rl, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat506, ptr %i.rm, align 16, !tbaa !40
  %index.next509 = add nuw i64 %index508, 16      ; 2 uses
  %i.rn = icmp eq i64 %index.next509, %n.vec504
  br i1 %i.rn, label %middle.block510, label %vector.body507, !llvm.loop !169

middle.block510:                                  ; preds = %vector.body507
  %cmp.n511 = icmp eq i64 %n.vec504, %wide.trip.count
  br i1 %cmp.n511, label %.loopexit116.us, label %vec.epilog.iter.check513

vec.epilog.iter.check513:                         ; preds = %middle.block510
  %min.epilog.iters.check515 = icmp eq i64 %i.rj, 0
  br i1 %min.epilog.iters.check515, label %.critedge.i.us, label %vec.epilog.ph516, !prof !208

vec.epilog.ph516:                                 ; preds = %iter.check512, %vec.epilog.iter.check513
  %vec.epilog.resume.val517 = phi i64 [ %n.vec504, %vec.epilog.iter.check513 ], [ 0, %iter.check512 ]
  %broadcast.splatinsert519 = insertelement <4 x i16> poison, i16 %i.ri, i64 0
  %broadcast.splat520 = shufflevector <4 x i16> %broadcast.splatinsert519, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body521

vec.epilog.vector.body521:                        ; preds = %vec.epilog.vector.body521, %vec.epilog.ph516
  %index522 = phi i64 [ %vec.epilog.resume.val517, %vec.epilog.ph516 ], [ %index.next523, %vec.epilog.vector.body521 ] ; 2 uses
  %i.ro = shl nuw nsw i64 %index522, 1
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ro
  store <4 x i16> %broadcast.splat520, ptr %i.rp, align 8, !tbaa !40
  %index.next523 = add nuw i64 %index522, 4       ; 2 uses
  %i.rq = icmp eq i64 %index.next523, %wide.trip.count
  br i1 %i.rq, label %.loopexit116.us, label %vec.epilog.vector.body521, !llvm.loop !170

iter.check458:                                    ; preds = %.preheader113.us
  %i.rr = add nsw i32 %i.dv, -8
  %i.rs = shl i32 128, %i.rr
  %i.rt = trunc i32 %i.rs to i16
  %i.ru = or disjoint i16 %i.rt, 1                ; 3 uses
  %wide.trip.count227 = zext nneg i32 %i.gt to i64 ; 5 uses
  %min.iters.check448 = icmp ult i32 %i.gt, 16
  br i1 %min.iters.check448, label %vec.epilog.ph462, label %vector.ph449

vector.ph449:                                     ; preds = %iter.check458
  %i.rv = and i64 %wide.trip.count227, 12
  %n.vec450 = and i64 %wide.trip.count227, 2147483632 ; 4 uses
  %broadcast.splatinsert451 = insertelement <8 x i16> poison, i16 %i.ru, i64 0
  %broadcast.splat452 = shufflevector <8 x i16> %broadcast.splatinsert451, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body453

vector.body453:                                   ; preds = %vector.ph449, %vector.body453
  %index454 = phi i64 [ 0, %vector.ph449 ], [ %index.next455, %vector.body453 ] ; 2 uses
  %i.rw = shl nuw nsw i64 %index454, 1
  %i.rx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.rw ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 16
  store <8 x i16> %broadcast.splat452, ptr %i.rx, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat452, ptr %i.ry, align 16, !tbaa !40
  %index.next455 = add nuw i64 %index454, 16      ; 2 uses
  %i.rz = icmp eq i64 %index.next455, %n.vec450
  br i1 %i.rz, label %middle.block456, label %vector.body453, !llvm.loop !171

middle.block456:                                  ; preds = %vector.body453
  %cmp.n457 = icmp eq i64 %n.vec450, %wide.trip.count227
  br i1 %cmp.n457, label %check_intra_mode.exit.us, label %vec.epilog.iter.check459

vec.epilog.iter.check459:                         ; preds = %middle.block456
  %min.epilog.iters.check461 = icmp eq i64 %i.rv, 0
  br i1 %min.epilog.iters.check461, label %vec.epilog.scalar.ph460, label %vec.epilog.ph462, !prof !208

vec.epilog.ph462:                                 ; preds = %iter.check458, %vec.epilog.iter.check459
  %vec.epilog.resume.val463 = phi i64 [ %n.vec450, %vec.epilog.iter.check459 ], [ 0, %iter.check458 ]
  %broadcast.splatinsert465 = insertelement <4 x i16> poison, i16 %i.ru, i64 0
  %broadcast.splat466 = shufflevector <4 x i16> %broadcast.splatinsert465, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body467

vec.epilog.vector.body467:                        ; preds = %vec.epilog.vector.body467, %vec.epilog.ph462
  %index468 = phi i64 [ %vec.epilog.resume.val463, %vec.epilog.ph462 ], [ %index.next469, %vec.epilog.vector.body467 ] ; 2 uses
  %i.sa = shl nuw nsw i64 %index468, 1
  %i.sb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sa
  store <4 x i16> %broadcast.splat466, ptr %i.sb, align 8, !tbaa !40
  %index.next469 = add nuw i64 %index468, 4       ; 2 uses
  %i.sc = icmp eq i64 %index.next469, %wide.trip.count227
  br i1 %i.sc, label %check_intra_mode.exit.us, label %vec.epilog.vector.body467, !llvm.loop !172

._crit_edge151.us:                                ; preds = %bb.ab
  %i.sd = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !77
  %i.sg = mul nsw i32 %i.sf, %i.bp
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds i8, ptr %.0178.i155.us, i64 %i.sh
  %i.sj = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.sk = mul nsw i64 %i.sj, %i.bq
  %i.sl = getelementptr inbounds i8, ptr %.0179.i154.us, i64 %i.sk
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, %i.bt ; 2 uses
  %i.sm = icmp slt i64 %indvars.iv.next259, %i.bx
  br i1 %i.sm, label %.preheader118.us, label %._crit_edge156.loopexit214, !llvm.loop !2

._crit_edge156.loopexit214:                       ; preds = %._crit_edge151.us
  %.pre307 = load i32, ptr %i.am, align 4, !tbaa !69
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %.preheader118.lr.ph, %.._crit_edge156_crit_edge, %._crit_edge156.loopexit214
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge156_crit_edge ], [ %i.bd, %._crit_edge156.loopexit214 ], [ %i.bd, %.preheader118.lr.ph ]
  %i.sn = phi ptr [ %i.at, %.._crit_edge156_crit_edge ], [ %i.sd, %._crit_edge156.loopexit214 ], [ %i.at, %.preheader118.lr.ph ]
  %i.so = phi i32 [ %i.an, %.._crit_edge156_crit_edge ], [ %.pre307, %._crit_edge156.loopexit214 ], [ %i.an, %.preheader118.lr.ph ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 3924 ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 4, !tbaa !88
  %i.sr = zext i8 %i.sq to i32                    ; 2 uses
  %i.ss = lshr i32 %i.p, %i.sr
  %i.st = lshr i32 %..i, %i.sr                    ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.c, i64 3925 ; 2 uses
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !89
  %i.sw = zext nneg i8 %i.sv to i32
  %i.sx = lshr i32 %i.ah, %i.sw                   ; 2 uses
  %.not201 = icmp eq i32 %i.sx, 0
  %i.sy = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.sz = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.td = icmp sgt i32 %i.g, 0
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tf = add nsw i32 %i.ss, -1
  %i.tg = shl i32 %i.i, 1
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.tk = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.tl = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.tm = sext i32 %i.ao to i64
  %i.tn = getelementptr inbounds [32 x i8], ptr %i.tl, i64 %i.tm
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.tp = shl i32 8, %i.an
  %i.tq = sext i32 %i.tp to i64                   ; 2 uses
  %i.tr = shl i32 4, %i.an                        ; 2 uses
  %i.ts = sext i32 %i.tr to i64
  %.not202 = icmp eq i32 %i.st, 0
  %or.cond352 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond352, label %intra_recon.exit.split, label %.preheader104.lr.ph.us.preheader

.preheader104.lr.ph.us.preheader:                 ; preds = %._crit_edge156
  %i.tt = shl i32 %i.so, 1
  %i.tu = shl nuw i32 1, %i.tt
  %i.tv = zext nneg i32 %i.tu to i64
  %i.tw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep625.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep627.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader104.lr.ph.us

.preheader104.lr.ph.us:                           ; preds = %.preheader104.lr.ph.us.preheader, %..loopexit105_crit_edge.split.us.us
  %i.tx = phi ptr [ %i.sn, %.preheader104.lr.ph.us.preheader ], [ %i.ake, %..loopexit105_crit_edge.split.us.us ]
  %i.ty = phi i1 [ true, %.preheader104.lr.ph.us.preheader ], [ false, %..loopexit105_crit_edge.split.us.us ]
  %indvars.iv303 = phi i64 [ 0, %.preheader104.lr.ph.us.preheader ], [ 1, %..loopexit105_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next304
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !70
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tx, i64 %indvars.iv.next304
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !70
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 %2
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %indvars.iv303
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.to, i64 %indvars.iv303
  br label %.preheader104.us.us

.preheader104.us.us:                              ; preds = %._crit_edge189.us.us, %.preheader104.lr.ph.us
  %.1.i193.us.us = phi ptr [ %i.ud, %.preheader104.lr.ph.us ], [ %i.akj, %._crit_edge189.us.us ] ; 2 uses
  %.1180.i192.us.us = phi ptr [ %i.ua, %.preheader104.lr.ph.us ], [ %i.akm, %._crit_edge189.us.us ] ; 2 uses
  %.1183.i191.us.us = phi i32 [ 0, %.preheader104.lr.ph.us ], [ %i.akn, %._crit_edge189.us.us ] ; 5 uses
  %.2.i190.us.us = phi i64 [ 0, %.preheader104.lr.ph.us ], [ %indvars.iv.next301, %._crit_edge189.us.us ]
  %i.ug = icmp sgt i32 %.1183.i191.us.us, 0
  %i.uh = or i1 %i.td, %i.ug                      ; 5 uses
  %i.ui = zext i1 %i.uh to i64
  %i.uj = or i32 %.1183.i191.us.us, %.pre-phi
  %or.cond3.not.i47.us.us = icmp eq i32 %i.uj, 0
  %i.uk = icmp eq i32 %.1183.i191.us.us, 0        ; 2 uses
  %i.ul = select i1 %i.uh, i32 1, i32 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bc, %.preheader104.us.us
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.bc ], [ %.2.i190.us.us, %.preheader104.us.us ] ; 3 uses
  %.0.i185.us.us = phi ptr [ %i.akc, %bb.bc ], [ %.1.i193.us.us, %.preheader104.us.us ] ; 3 uses
  %.0175.i182.us.us = phi ptr [ %i.akb, %bb.bc ], [ %.1180.i192.us.us, %.preheader104.us.us ] ; 5 uses
  %.1185.i179.us.us = phi i32 [ %i.aka, %bb.bc ], [ 0, %.preheader104.us.us ] ; 7 uses
  %i.um = load i8, ptr %i.sy, align 1, !tbaa !90
  %i.un = load i8, ptr %i.ta, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.un, 0
  %.pre308 = load i32, ptr %i.am, align 4, !tbaa !69 ; 8 uses
  br i1 %.not.i.us.us, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.uo = icmp ugt i32 %.pre308, 1
  %i.up = load ptr, ptr %i.ue, align 8, !tbaa !70
  %i.uq = getelementptr inbounds i8, ptr %i.up, i64 %indvars.iv300 ; 2 uses
  br i1 %i.uo, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !40
  %i.us = zext i8 %i.ur to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ut = load i16, ptr %i.uq, align 2, !tbaa !40
  %i.uu = zext i16 %i.ut to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.uv = phi i32 [ 0, %bb.ac ], [ %i.uu, %bb.af ], [ %i.us, %bb.ae ] ; 2 uses
  %i.uw = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 68
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !77
  %i.uz = sext i32 %i.uy to i64                   ; 2 uses
  %i.va = load i64, ptr %i.tc, align 8, !tbaa !91 ; 3 uses
  %i.vb = load i8, ptr %i.sp, align 4, !tbaa !88  ; 2 uses
  %i.vc = zext nneg i8 %i.vb to i32
  %i.vd = load i8, ptr %i.su, align 1, !tbaa !89
  %i.ve = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.vf = load i32, ptr %i.te, align 16, !tbaa !81
  %i.vg = icmp ugt i32 %i.i, %i.vf
  %i.vh = icmp sgt i32 %.1185.i179.us.us, 0
  %i.vi = or i1 %i.vh, %i.vg                      ; 5 uses
  %i.vj = icmp slt i32 %.1185.i179.us.us, %i.tf   ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ve, i64 1
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !82
  %i.vm = zext i8 %i.vl to i32                    ; 3 uses
  %i.vn = zext i8 %i.um to i64
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.vn
  %i.vp = zext i1 %i.vi to i64
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.vo, i64 %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.ui
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !40  ; 3 uses
  %i.vt = zext i8 %i.vs to i64                    ; 2 uses
  %i.vu = shl nuw i64 1, %i.vt                    ; 4 uses
  %i.vv = and i64 %i.vu, 29954
  %.not.not.i6.us.us = icmp eq i64 %i.vv, 0
  br i1 %.not.not.i6.us.us, label %bb.ah, label %.loopexit.us.us

bb.ah:                                            ; preds = %bb.ag
  %i.vw = shl i32 4, %.pre308                     ; 8 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ve, i64 3964
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !66
  %i.vz = sub i32 %i.vy, %i.i
  %.not.i18.us.us = icmp eq i8 %i.vb, 0
  %i.wa = zext i1 %.not.i18.us.us to i32
  %i.wb = shl i32 %i.vz, %i.wa
  %i.wc = sub i32 %i.wb, %.1185.i179.us.us        ; 2 uses
  %i.wd = shl i32 %i.wc, 2                        ; 6 uses
  %i.we = icmp eq i32 %.pre308, 0                 ; 2 uses
  %i.wf = and i8 %i.vs, -5
  %i.wg = icmp eq i8 %i.wf, 3                     ; 3 uses
  %or.cond.i19.us.us = select i1 %i.wg, i1 %i.vj, i1 false
  %spec.select.i20.us.us = select i1 %or.cond.i19.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.uh, label %bb.ai, label %.critedge.i24.preheader.us.us

.critedge.i24.preheader.us.us:                    ; preds = %bb.ah
  %i.wh = icmp sgt i32 %i.vw, 0
  br i1 %i.wh, label %iter.check730, label %.loopexit103.us.us

iter.check730:                                    ; preds = %.critedge.i24.preheader.us.us
  %i.wi = add nsw i32 %i.vm, -8
  %i.wj = shl i32 128, %i.wi
  %i.wk = trunc i32 %i.wj to i16
  %i.wl = add i16 %i.wk, -1                       ; 3 uses
  %wide.trip.count264 = zext nneg i32 %i.vw to i64 ; 5 uses
  %min.iters.check720 = icmp ult i32 %i.vw, 16
  br i1 %min.iters.check720, label %vec.epilog.ph734, label %vector.ph721

vector.ph721:                                     ; preds = %iter.check730
  %i.wm = and i64 %wide.trip.count264, 12
  %n.vec722 = and i64 %wide.trip.count264, 2147483632 ; 4 uses
  %broadcast.splatinsert723 = insertelement <8 x i16> poison, i16 %i.wl, i64 0
  %broadcast.splat724 = shufflevector <8 x i16> %broadcast.splatinsert723, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body725

vector.body725:                                   ; preds = %vector.ph721, %vector.body725
  %index726 = phi i64 [ 0, %vector.ph721 ], [ %index.next727, %vector.body725 ] ; 2 uses
  %i.wn = shl nuw nsw i64 %index726, 1
  %i.wo = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.wn ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <8 x i16> %broadcast.splat724, ptr %i.wo, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat724, ptr %i.wp, align 16, !tbaa !40
  %index.next727 = add nuw i64 %index726, 16      ; 2 uses
  %i.wq = icmp eq i64 %index.next727, %n.vec722
  br i1 %i.wq, label %middle.block728, label %vector.body725, !llvm.loop !173

middle.block728:                                  ; preds = %vector.body725
  %cmp.n729 = icmp eq i64 %n.vec722, %wide.trip.count264
  br i1 %cmp.n729, label %.loopexit103.us.us, label %vec.epilog.iter.check731

vec.epilog.iter.check731:                         ; preds = %middle.block728
  %min.epilog.iters.check733 = icmp eq i64 %i.wm, 0
  br i1 %min.epilog.iters.check733, label %.critedge.i24.us.us, label %vec.epilog.ph734, !prof !208

vec.epilog.ph734:                                 ; preds = %iter.check730, %vec.epilog.iter.check731
  %vec.epilog.resume.val735 = phi i64 [ %n.vec722, %vec.epilog.iter.check731 ], [ 0, %iter.check730 ]
  %broadcast.splatinsert737 = insertelement <4 x i16> poison, i16 %i.wl, i64 0
  %broadcast.splat738 = shufflevector <4 x i16> %broadcast.splatinsert737, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body739

vec.epilog.vector.body739:                        ; preds = %vec.epilog.vector.body739, %vec.epilog.ph734
  %index740 = phi i64 [ %vec.epilog.resume.val735, %vec.epilog.ph734 ], [ %index.next741, %vec.epilog.vector.body739 ] ; 2 uses
  %i.wr = shl nuw nsw i64 %index740, 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.wr
  store <4 x i16> %broadcast.splat738, ptr %i.ws, align 8, !tbaa !40
  %index.next741 = add nuw i64 %index740, 4       ; 2 uses
  %i.wt = icmp eq i64 %index.next741, %wide.trip.count264
  br i1 %i.wt, label %.loopexit103.us.us, label %vec.epilog.vector.body739, !llvm.loop !174

.critedge.i24.us.us:                              ; preds = %vec.epilog.iter.check731, %.critedge.i24.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge.i24.us.us ], [ %n.vec722, %vec.epilog.iter.check731 ] ; 2 uses
  %i.wu = shl nuw nsw i64 %indvars.iv261, 1
  %i.wv = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.wu
  store i16 %i.wl, ptr %i.wv, align 2, !tbaa !40
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit103.us.us, label %.critedge.i24.us.us, !llvm.loop !175

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond3.not.i47.us.us, label %.thread82.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ww = sub nsw i64 0, %i.va
  %i.wx = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.ww ; 2 uses
  %i.wy = sub nsw i64 0, %i.uz
  %i.wz = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.wy ; 2 uses
  %i.xa = select i1 %i.uk, ptr %i.wz, ptr %i.wx   ; 2 uses
  br i1 %i.vi, label %bb.ak, label %.thread83.us.us

bb.ak:                                            ; preds = %bb.aj
  %i.xb = icmp eq i32 %.1185.i179.us.us, 0
  %or.cond7.i48.us.us = or i1 %i.uk, %i.xb
  %spec.select353 = select i1 %or.cond7.i48.us.us, ptr %i.wz, ptr %i.wx
  br label %.thread83.us.us

.thread82.us.us:                                  ; preds = %bb.ai
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ve, i64 19136
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %indvars.iv.next304
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !70
  %i.xf = lshr i32 8, %i.vc
  %i.xg = shl i32 %.1185.i179.us.us, 3
  %i.xh = mul i32 %i.tg, %i.xf
  %i.xi = add i32 %i.xh, %i.xg
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %i.xe, i64 %i.xj ; 2 uses
  br label %.thread83.us.us

.thread83.us.us:                                  ; preds = %bb.ak, %.thread82.us.us, %bb.aj
  %.0280.i22.ph.us.us = phi ptr [ %i.xk, %.thread82.us.us ], [ %i.xa, %bb.ak ], [ %i.xa, %bb.aj ] ; 10 uses
  %.0279.i23.ph.us.us = phi ptr [ %i.xk, %.thread82.us.us ], [ %spec.select353, %bb.ak ], [ undef, %bb.aj ] ; 6 uses
  %i.xl = and i64 %i.vu, 2189
  %.not289.not.i35.us.us = icmp ne i64 %i.xl, 0
  %i.xm = icmp eq ptr %.0280.i22.ph.us.us, %.0279.i23.ph.us.us
  %or.cond301.i36.us.us = select i1 %i.vi, i1 %i.xm, i1 false
  %or.cond308.i37.us.us = select i1 %.not289.not.i35.us.us, i1 true, i1 %or.cond301.i36.us.us
  br i1 %or.cond308.i37.us.us, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread83.us.us
  br i1 %i.we, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not291.old.i42.us.us = icmp sgt i32 %i.vw, %i.wd
  br i1 %.not291.old.i42.us.us, label %bb.ao, label %.loopexit.us.us

bb.an:                                            ; preds = %bb.al
  %.not309 = xor i1 %i.wg, true
  %or.cond9.i43.us.us = select i1 %.not309, i1 true, i1 %i.vj
  %i.xn = add nuw nsw i32 %spec.select.i20.us.us, %i.vw
  %.not291.i45.us.us = icmp sle i32 %i.xn, %i.wd
  %or.cond302.i46.not.us.us = select i1 %or.cond9.i43.us.us, i1 %.not291.i45.us.us, i1 false
  br i1 %or.cond302.i46.not.us.us, label %.loopexit.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread83.us.us
  %.not292.i38.us.us = icmp sgt i32 %i.vw, %i.wd
  br i1 %.not292.i38.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xo = shl i32 8, %.pre308
  %i.xp = sext i32 %i.xo to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.sz, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xp, i1 false)
  br label %.loopexit103.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.xq = shl i32 %i.wc, 3                        ; 2 uses
  %i.xr = sext i32 %i.xq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.sz, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xr, i1 false)
  %i.xs = add i32 %i.xq, -2
  %i.xt = sext i32 %i.xs to i64
  %i.xu = getelementptr inbounds i8, ptr %i.sz, i64 %i.xt
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !40 ; 3 uses
  %i.xw = sub nsw i32 %i.vw, %i.wd                ; 3 uses
  %i.xx = icmp sgt i32 %i.xw, 0
  br i1 %i.xx, label %iter.check703, label %.loopexit103.us.us

iter.check703:                                    ; preds = %bb.aq
  %i.xy = sext i32 %i.wd to i64                   ; 3 uses
  %i.xz = zext nneg i32 %i.xw to i64              ; 5 uses
  %min.iters.check693 = icmp ult i32 %i.xw, 16
  br i1 %min.iters.check693, label %vec.epilog.ph707, label %vector.ph694

vector.ph694:                                     ; preds = %iter.check703
  %i.ya = and i64 %i.xz, 12
  %n.vec695 = and i64 %i.xz, 2147483632           ; 4 uses
  %broadcast.splatinsert696 = insertelement <8 x i16> poison, i16 %i.xv, i64 0
  %broadcast.splat697 = shufflevector <8 x i16> %broadcast.splatinsert696, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body698

vector.body698:                                   ; preds = %vector.ph694, %vector.body698
  %index699 = phi i64 [ 0, %vector.ph694 ], [ %index.next700, %vector.body698 ] ; 2 uses
  %i.yb = add nsw i64 %index699, %i.xy
  %i.yc = shl nsw i64 %i.yb, 1
  %i.yd = getelementptr inbounds i8, ptr %i.sz, i64 %i.yc ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 16
  store <8 x i16> %broadcast.splat697, ptr %i.yd, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat697, ptr %i.ye, align 8, !tbaa !40
  %index.next700 = add nuw i64 %index699, 16      ; 2 uses
  %i.yf = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.yf, label %middle.block701, label %vector.body698, !llvm.loop !176

middle.block701:                                  ; preds = %vector.body698
  %cmp.n702 = icmp eq i64 %n.vec695, %i.xz
  br i1 %cmp.n702, label %.loopexit103.us.us, label %vec.epilog.iter.check704

vec.epilog.iter.check704:                         ; preds = %middle.block701
  %min.epilog.iters.check706 = icmp eq i64 %i.ya, 0
  br i1 %min.epilog.iters.check706, label %.lr.ph159.us.us, label %vec.epilog.ph707, !prof !208

vec.epilog.ph707:                                 ; preds = %iter.check703, %vec.epilog.iter.check704
  %vec.epilog.resume.val708 = phi i64 [ %n.vec695, %vec.epilog.iter.check704 ], [ 0, %iter.check703 ]
  %broadcast.splatinsert710 = insertelement <4 x i16> poison, i16 %i.xv, i64 0
  %broadcast.splat711 = shufflevector <4 x i16> %broadcast.splatinsert710, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %vec.epilog.vector.body712, %vec.epilog.ph707
  %index713 = phi i64 [ %vec.epilog.resume.val708, %vec.epilog.ph707 ], [ %index.next714, %vec.epilog.vector.body712 ] ; 2 uses
  %i.yg = add nsw i64 %index713, %i.xy
  %i.yh = shl nsw i64 %i.yg, 1
  %i.yi = getelementptr inbounds i8, ptr %i.sz, i64 %i.yh
  store <4 x i16> %broadcast.splat711, ptr %i.yi, align 8, !tbaa !40
  %index.next714 = add nuw i64 %index713, 4       ; 2 uses
  %i.yj = icmp eq i64 %index.next714, %i.xz
  br i1 %i.yj, label %.loopexit103.us.us, label %vec.epilog.vector.body712, !llvm.loop !177

.lr.ph159.us.us:                                  ; preds = %vec.epilog.iter.check704, %.lr.ph159.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph159.us.us ], [ %n.vec695, %vec.epilog.iter.check704 ] ; 2 uses
  %i.yk = add nsw i64 %indvars.iv266, %i.xy
  %i.yl = shl nsw i64 %i.yk, 1
  %i.ym = getelementptr inbounds i8, ptr %i.sz, i64 %i.yl
  store i16 %i.xv, ptr %i.ym, align 2, !tbaa !40
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.yn = icmp samesign ult i64 %indvars.iv.next267, %i.xz
  br i1 %i.yn, label %.lr.ph159.us.us, label %.loopexit103.us.us, !llvm.loop !178

.loopexit103.us.us:                               ; preds = %.critedge.i24.us.us, %vec.epilog.vector.body739, %.lr.ph159.us.us, %vec.epilog.vector.body712, %middle.block728, %middle.block701, %bb.aq, %.critedge.i24.preheader.us.us, %bb.ap
  %.0279.i2391.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0279.i23.ph.us.us, %bb.ap ], [ %.0279.i23.ph.us.us, %middle.block701 ], [ %.0279.i23.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body739 ], [ undef, %middle.block728 ], [ %.0279.i23.ph.us.us, %.lr.ph159.us.us ], [ %.0279.i23.ph.us.us, %vec.epilog.vector.body712 ], [ undef, %.critedge.i24.us.us ]
  %.0280.i2288.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0280.i22.ph.us.us, %bb.ap ], [ %.0280.i22.ph.us.us, %middle.block701 ], [ %.0280.i22.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body739 ], [ undef, %middle.block728 ], [ %.0280.i22.ph.us.us, %.lr.ph159.us.us ], [ %.0280.i22.ph.us.us, %vec.epilog.vector.body712 ], [ undef, %.critedge.i24.us.us ]
  %i.yo = and i64 %i.vu, 2189
  %.not293.not.i26.us.us = icmp eq i64 %i.yo, 0
  br i1 %.not293.not.i26.us.us, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit103.us.us
  %or.cond11.i34.us.us = and i1 %i.uh, %i.vi
  br i1 %or.cond11.i34.us.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yp = add nsw i32 %i.vm, -8
  %i.yq = shl i32 128, %i.yp
  %i.yr = add nuw i32 %i.yq, %i.ul
  %i.ys = trunc i32 %i.yr to i16
  br label %.sink.split354

bb.at:                                            ; preds = %bb.ar
  %i.yt = getelementptr inbounds i8, ptr %.0279.i2391.us.us, i64 -2
  %i.yu = load i16, ptr %i.yt, align 2, !tbaa !40
  br label %.sink.split354

.sink.split354:                                   ; preds = %bb.as, %bb.at
  %.sink355 = phi i16 [ %i.yu, %bb.at ], [ %i.ys, %bb.as ]
  store i16 %.sink355, ptr %i.th, align 2, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %.sink.split354, %.loopexit103.us.us
  %or.cond304.i28.us.us = and i1 %i.we, %i.wg
  br i1 %or.cond304.i28.us.us, label %bb.av, label %.loopexit.us.us

bb.av:                                            ; preds = %bb.au
  %or.cond13.i29.us.us = select i1 %i.uh, i1 %i.vj, i1 false
  %i.yv = add nuw nsw i32 %spec.select.i20.us.us, %i.vw
  %.not295.i31.us.us = icmp sle i32 %i.yv, %i.wd
  %or.cond306.i32.not.us.us = select i1 %or.cond13.i29.us.us, i1 %.not295.i31.us.us, i1 false
  br i1 %or.cond306.i32.not.us.us, label %bb.aw, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.av
  %i.yw = load <1 x i16>, ptr %i.ti, align 2
  %i.yx = shufflevector <1 x i16> %i.yw, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.yx, ptr %i.tw, align 8, !tbaa !40
  br label %.loopexit.us.us

bb.aw:                                            ; preds = %bb.av
  %i.yy = getelementptr inbounds nuw i8, ptr %.0280.i2288.us.us, i64 8
  %i.yz = load i64, ptr %i.yy, align 1
  store i64 %i.yz, ptr %i.tj, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.aw, %bb.au, %bb.an, %bb.am, %bb.ag
  %.0.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.an ], [ %i.sz, %bb.aw ], [ %i.sz, %bb.au ], [ %i.sz, %bb.ag ], [ %.0280.i22.ph.us.us, %bb.am ], [ %i.sz, %.loopexit.us.us.loopexit ]
  %i.za = and i64 %i.vu, 30857
  %.not296.not.i7.us.us = icmp eq i64 %i.za, 0
  br i1 %.not296.not.i7.us.us, label %bb.ax, label %check_intra_mode.exit49.us.us

bb.ax:                                            ; preds = %.loopexit.us.us
  %i.zb = shl i32 4, %.pre308                     ; 15 uses
  br i1 %i.vi, label %bb.ay, label %.preheader100.us.us

.preheader100.us.us:                              ; preds = %bb.ax
  %i.zc = icmp sgt i32 %i.zb, 0
  br i1 %i.zc, label %iter.check676, label %check_intra_mode.exit49.us.us

iter.check676:                                    ; preds = %.preheader100.us.us
  %i.zd = add nsw i32 %i.vm, -8
  %i.ze = shl i32 128, %i.zd
  %i.zf = trunc i32 %i.ze to i16
  %i.zg = or disjoint i16 %i.zf, 1                ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.zb to i64 ; 5 uses
  %min.iters.check666 = icmp ult i32 %i.zb, 16
  br i1 %min.iters.check666, label %vec.epilog.ph680, label %vector.ph667

vector.ph667:                                     ; preds = %iter.check676
  %i.zh = and i64 %wide.trip.count276, 12
  %n.vec668 = and i64 %wide.trip.count276, 2147483632 ; 4 uses
  %broadcast.splatinsert669 = insertelement <8 x i16> poison, i16 %i.zg, i64 0
  %broadcast.splat670 = shufflevector <8 x i16> %broadcast.splatinsert669, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body671

vector.body671:                                   ; preds = %vector.ph667, %vector.body671
  %index672 = phi i64 [ 0, %vector.ph667 ], [ %index.next673, %vector.body671 ] ; 2 uses
  %i.zi = shl nuw nsw i64 %index672, 1
  %i.zj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zi ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  store <8 x i16> %broadcast.splat670, ptr %i.zj, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat670, ptr %i.zk, align 16, !tbaa !40
  %index.next673 = add nuw i64 %index672, 16      ; 2 uses
  %i.zl = icmp eq i64 %index.next673, %n.vec668
  br i1 %i.zl, label %middle.block674, label %vector.body671, !llvm.loop !179

middle.block674:                                  ; preds = %vector.body671
  %cmp.n675 = icmp eq i64 %n.vec668, %wide.trip.count276
  br i1 %cmp.n675, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check677

vec.epilog.iter.check677:                         ; preds = %middle.block674
  %min.epilog.iters.check679 = icmp eq i64 %i.zh, 0
  br i1 %min.epilog.iters.check679, label %vec.epilog.scalar.ph678, label %vec.epilog.ph680, !prof !208

vec.epilog.ph680:                                 ; preds = %iter.check676, %vec.epilog.iter.check677
  %vec.epilog.resume.val681 = phi i64 [ %n.vec668, %vec.epilog.iter.check677 ], [ 0, %iter.check676 ]
  %broadcast.splatinsert683 = insertelement <4 x i16> poison, i16 %i.zg, i64 0
  %broadcast.splat684 = shufflevector <4 x i16> %broadcast.splatinsert683, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body685

vec.epilog.vector.body685:                        ; preds = %vec.epilog.vector.body685, %vec.epilog.ph680
  %index686 = phi i64 [ %vec.epilog.resume.val681, %vec.epilog.ph680 ], [ %index.next687, %vec.epilog.vector.body685 ] ; 2 uses
  %i.zm = shl nuw nsw i64 %index686, 1
  %i.zn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zm
  store <4 x i16> %broadcast.splat684, ptr %i.zn, align 8, !tbaa !40
  %index.next687 = add nuw i64 %index686, 4       ; 2 uses
  %i.zo = icmp eq i64 %index.next687, %wide.trip.count276
  br i1 %i.zo, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body685, !llvm.loop !180

vec.epilog.scalar.ph678:                          ; preds = %vec.epilog.iter.check677, %vec.epilog.scalar.ph678
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %vec.epilog.scalar.ph678 ], [ %n.vec668, %vec.epilog.iter.check677 ] ; 2 uses
  %i.zp = shl nuw nsw i64 %indvars.iv273, 1
  %i.zq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zp
  store i16 %i.zg, ptr %i.zq, align 2, !tbaa !40
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %check_intra_mode.exit49.us.us, label %vec.epilog.scalar.ph678, !llvm.loop !181

bb.ay:                                            ; preds = %bb.ax
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ve, i64 3960
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !67
  %i.zt = sub i32 %i.zs, %i.g
  %.not297.i.us.us = icmp eq i8 %i.vd, 0
  %i.zu = zext i1 %.not297.i.us.us to i32
  %i.zv = shl i32 %i.zt, %i.zu
  %i.zw = sub i32 %i.zv, %.1183.i191.us.us        ; 2 uses
  %i.zx = shl i32 %i.zw, 2                        ; 10 uses
  %i.zy = icmp eq i32 %.1185.i179.us.us, 0        ; 2 uses
  %i.zz = select i1 %i.zy, ptr %.0.i185.us.us, ptr %.0175.i182.us.us ; 48 uses
  %i.aaa = select i1 %i.zy, i64 %i.uz, i64 %i.va  ; 12 uses
  %.not298.not.i9.us.us = icmp eq i8 %i.vs, 8
  %.not300.i14.us.us = icmp sgt i32 %i.zb, %i.zx  ; 2 uses
  br i1 %.not298.not.i9.us.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader97.us.us, label %.preheader98.us.us

.preheader98.us.us:                               ; preds = %bb.az
  %i.aab = icmp sgt i32 %i.zb, 0
  br i1 %i.aab, label %.lr.ph164.us.us.preheader.a, label %check_intra_mode.exit49.us.us

.lr.ph164.us.us.preheader.a:                      ; preds = %.preheader98.us.us
  %17 = zext nneg i32 %i.zb to i64                ; 3 uses
  %wide.trip.count281 = zext nneg i32 %i.zb to i64 ; 5 uses
  %min.iters.check654 = icmp ugt i32 %i.zb, 7
  %ident.check644.not = icmp eq i64 %i.aaa, 1
  %or.cond748 = select i1 %min.iters.check654, i1 %ident.check644.not, i1 false
  br i1 %or.cond748, label %vector.memcheck645, label %.lr.ph164.us.us.preheader758

vector.memcheck645:                               ; preds = %.lr.ph164.us.us.preheader.a
  %18 = shl nuw nsw i64 %wide.trip.count281, 1
  %scevgep646 = getelementptr i8, ptr %i.b, i64 %18
  %scevgep647 = getelementptr i8, ptr %i.zz, i64 -2
  %scevgep648 = getelementptr i8, ptr %i.zz, i64 -1
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %wide.trip.count281
  %bound0650 = icmp ult ptr %i.b, %scevgep649
  %bound1651 = icmp ult ptr %scevgep647, %scevgep646
  %found.conflict652 = and i1 %bound0650, %bound1651
  br i1 %found.conflict652, label %.lr.ph164.us.us.preheader758, label %vector.ph655

vector.ph655:                                     ; preds = %vector.memcheck645
  %n.vec656 = and i64 %wide.trip.count281, 2147483640 ; 3 uses
  br label %vector.body657

vector.body657:                                   ; preds = %vector.body657, %vector.ph655
  %index658 = phi i64 [ 0, %vector.ph655 ], [ %index.next660, %vector.body657 ] ; 10 uses
  %i.aac = getelementptr inbounds i8, ptr %i.zz, i64 %index658
  %i.aad = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aae = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aaf = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aag = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aah = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aai = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aaj = getelementptr i8, ptr %i.zz, i64 %index658
  %i.aak = getelementptr inbounds i8, ptr %i.aac, i64 -2
  %i.aal = getelementptr i8, ptr %i.aad, i64 -1
  %i.aam = getelementptr i8, ptr %i.aaf, i64 1
  %i.aan = getelementptr i8, ptr %i.aag, i64 2
  %i.aao = getelementptr i8, ptr %i.aah, i64 3
  %i.aap = getelementptr i8, ptr %i.aai, i64 4
  %i.aaq = getelementptr i8, ptr %i.aaj, i64 5
  %i.aar = load i16, ptr %i.aak, align 2, !tbaa !40, !alias.scope !209
  %i.aas = load i16, ptr %i.aal, align 2, !tbaa !40, !alias.scope !209
  %i.aat = load i16, ptr %i.aae, align 2, !tbaa !40, !alias.scope !209
  %i.aau = load i16, ptr %i.aam, align 2, !tbaa !40, !alias.scope !209
  %i.aav = load i16, ptr %i.aan, align 2, !tbaa !40, !alias.scope !209
  %i.aaw = load i16, ptr %i.aao, align 2, !tbaa !40, !alias.scope !209
  %i.aax = load i16, ptr %i.aap, align 2, !tbaa !40, !alias.scope !209
  %i.aay = load i16, ptr %i.aaq, align 2, !tbaa !40, !alias.scope !209
  %i.aaz = insertelement <8 x i16> poison, i16 %i.aar, i64 0
  %i.aba = insertelement <8 x i16> %i.aaz, i16 %i.aas, i64 1
  %i.abb = insertelement <8 x i16> %i.aba, i16 %i.aat, i64 2
  %i.abc = insertelement <8 x i16> %i.abb, i16 %i.aau, i64 3
  %i.abd = insertelement <8 x i16> %i.abc, i16 %i.aav, i64 4
  %i.abe = insertelement <8 x i16> %i.abd, i16 %i.aaw, i64 5
  %i.abf = insertelement <8 x i16> %i.abe, i16 %i.aax, i64 6
  %i.abg = insertelement <8 x i16> %i.abf, i16 %i.aay, i64 7
  %19 = xor i64 %index658, -1
  %20 = add nsw i64 %17, %19
  %21 = shl nsw i64 %20, 1
  %i.abh = getelementptr inbounds i8, ptr %i.b, i64 %21
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -14
  %reverse659 = shufflevector <8 x i16> %i.abg, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse659, ptr %i.abi, align 8, !tbaa !40, !alias.scope !210, !noalias !209
  %index.next660 = add nuw i64 %index658, 8       ; 2 uses
  %i.abj = icmp eq i64 %index.next660, %n.vec656
  br i1 %i.abj, label %middle.block661, label %vector.body657, !llvm.loop !185

middle.block661:                                  ; preds = %vector.body657
  %cmp.n662 = icmp eq i64 %n.vec656, %wide.trip.count281
  br i1 %cmp.n662, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us.preheader758

.lr.ph164.us.us.preheader758:                     ; preds = %vector.memcheck645, %.lr.ph164.us.us.preheader.a, %middle.block661
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck645 ], [ 0, %.lr.ph164.us.us.preheader.a ], [ %n.vec656, %middle.block661 ]
  br label %.lr.ph164.us.us

.lr.ph164.us.us:                                  ; preds = %.lr.ph164.us.us, %.lr.ph164.us.us.preheader758
  %indvars.iv278 = phi i64 [ %indvars.iv278.ph, %.lr.ph164.us.us.preheader758 ], [ %indvars.iv.next279.1, %.lr.ph164.us.us ] ; 5 uses
  %i.abk = mul nsw i64 %i.aaa, %indvars.iv278
  %i.abl = getelementptr inbounds i8, ptr %i.zz, i64 %i.abk
  %i.abm = getelementptr inbounds i8, ptr %i.abl, i64 -2
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !40
  %22 = xor i64 %indvars.iv278, -1
  %23 = add nsw i64 %17, %22
  %24 = shl nsw i64 %23, 1
  %i.abo = getelementptr inbounds i8, ptr %i.b, i64 %24
  store i16 %i.abn, ptr %i.abo, align 2, !tbaa !40
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1
  %i.abp = mul nsw i64 %i.aaa, %indvars.iv.next279
  %i.abq = getelementptr inbounds i8, ptr %i.zz, i64 %i.abp
  %i.abr = getelementptr inbounds i8, ptr %i.abq, i64 -2
  %i.abs = load i16, ptr %i.abr, align 2, !tbaa !40
  %25 = xor i64 %indvars.iv278, -2
  %26 = add nsw i64 %25, %17
  %27 = shl nsw i64 %26, 1
  %i.abt = getelementptr inbounds i8, ptr %i.b, i64 %27
  store i16 %i.abs, ptr %i.abt, align 2, !tbaa !40
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %exitcond282.not.1 = icmp eq i64 %indvars.iv.next279.1, %wide.trip.count281
  br i1 %exitcond282.not.1, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us, !llvm.loop !186

.preheader97.us.us:                               ; preds = %bb.az
  %i.abu = icmp sgt i32 %i.zx, 0
  br i1 %i.abu, label %.lr.ph166.us.us.preheader, label %._crit_edge.us195.us

.lr.ph166.us.us.preheader:                        ; preds = %.preheader97.us.us
  %i.abv = zext nneg i32 %i.zx to i64             ; 6 uses
  %min.iters.check633 = icmp ult i32 %i.zx, 32
  br i1 %min.iters.check633, label %.lr.ph166.us.us.preheader757, label %vector.scevcheck616

vector.scevcheck616:                              ; preds = %.lr.ph166.us.us.preheader
  %ident.check617 = icmp ne i64 %i.aaa, 1
  %i.abw = add nsw i64 %i.abv, -1                 ; 2 uses
  %i.abx = shl i32 8, %.pre308
  %i.aby = add i32 %i.abx, -2                     ; 2 uses
  %i.abz = trunc nsw i64 %i.abw to i32
  %mul.result619 = shl i32 %i.abz, 1
  %28 = sub i32 %i.aby, %mul.result619
  %29 = icmp sgt i32 %28, %i.aby
  %i.aca = icmp ugt i64 %i.abw, 4294967295
  %i.acb = or i1 %29, %i.aca
  %i.acc = or i1 %ident.check617, %i.acb
  br i1 %i.acc, label %.lr.ph166.us.us.preheader757, label %vector.memcheck621

vector.memcheck621:                               ; preds = %vector.scevcheck616
  %scevgep622 = getelementptr i8, ptr %i.zz, i64 -2
  %scevgep623 = getelementptr i8, ptr %i.zz, i64 -1
  %scevgep624 = getelementptr i8, ptr %scevgep623, i64 %i.abv
  %i.acd = shl i32 8, %.pre308
  %i.ace = add i32 %i.acd, -8
  %30 = sext i32 %i.ace to i64                    ; 2 uses
  %i.acf = shl nuw nsw i64 %i.abv, 1
  %i.acg = sub nsw i64 %30, %i.acf
  %scevgep626 = getelementptr i8, ptr %scevgep625.a, i64 %i.acg
  %scevgep628.a = getelementptr i8, ptr %scevgep627.a, i64 %30
  %bound0629 = icmp ult ptr %scevgep622, %scevgep628.a
  %bound1630 = icmp ult ptr %scevgep626, %scevgep624
  %found.conflict631 = and i1 %bound0629, %bound1630
  br i1 %found.conflict631, label %.lr.ph166.us.us.preheader757, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck621
  %n.vec635 = and i64 %i.abv, 2147483640          ; 3 uses
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph634
  %index637 = phi i64 [ 0, %vector.ph634 ], [ %index.next639, %vector.body636 ] ; 10 uses
  %i.ach = getelementptr inbounds i8, ptr %i.zz, i64 %index637
  %i.aci = getelementptr i8, ptr %i.zz, i64 %index637
  %i.acj = getelementptr i8, ptr %i.zz, i64 %index637
  %i.ack = getelementptr i8, ptr %i.zz, i64 %index637
  %i.acl = getelementptr i8, ptr %i.zz, i64 %index637
  %i.acm = getelementptr i8, ptr %i.zz, i64 %index637
  %i.acn = getelementptr i8, ptr %i.zz, i64 %index637
  %i.aco = getelementptr i8, ptr %i.zz, i64 %index637
  %i.acp = getelementptr inbounds i8, ptr %i.ach, i64 -2
  %i.acq = getelementptr i8, ptr %i.aci, i64 -1
  %i.acr = getelementptr i8, ptr %i.ack, i64 1
  %i.acs = getelementptr i8, ptr %i.acl, i64 2
  %i.act = getelementptr i8, ptr %i.acm, i64 3
  %i.acu = getelementptr i8, ptr %i.acn, i64 4
  %i.acv = getelementptr i8, ptr %i.aco, i64 5
  %i.acw = load i16, ptr %i.acp, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.acx = load i16, ptr %i.acq, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.acy = load i16, ptr %i.acj, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.acz = load i16, ptr %i.acr, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.ada = load i16, ptr %i.acs, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adb = load i16, ptr %i.act, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.adc = load i16, ptr %i.acu, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.add = load i16, ptr %i.acv, align 2, !tbaa !40, !alias.scope !211, !noalias !212
  %i.ade = insertelement <8 x i16> poison, i16 %i.acw, i64 0
  %i.adf = insertelement <8 x i16> %i.ade, i16 %i.acx, i64 1
  %i.adg = insertelement <8 x i16> %i.adf, i16 %i.acy, i64 2
  %i.adh = insertelement <8 x i16> %i.adg, i16 %i.acz, i64 3
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 4
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 5
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 6
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 7
  %i.adm = trunc nuw nsw i64 %index637 to i32
  %i.adn = xor i32 %i.adm, -1
  %i.ado = add i32 %i.zb, %i.adn
  %i.adp = shl nsw i32 %i.ado, 1
  %31 = sext i32 %i.adp to i64
  %i.adq = getelementptr inbounds i8, ptr %i.b, i64 %31
  %i.adr = getelementptr inbounds i8, ptr %i.adq, i64 -14
  %reverse638 = shufflevector <8 x i16> %i.adl, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse638, ptr %i.adr, align 2, !tbaa !40, !alias.scope !212
  %index.next639 = add nuw i64 %index637, 8       ; 2 uses
  %i.ads = icmp eq i64 %index.next639, %n.vec635
  br i1 %i.ads, label %middle.block640, label %vector.body636, !llvm.loop !190

middle.block640:                                  ; preds = %vector.body636
  %cmp.n641 = icmp eq i64 %n.vec635, %i.abv
  br i1 %cmp.n641, label %._crit_edge.us195.us, label %.lr.ph166.us.us.preheader757

.lr.ph166.us.us.preheader757:                     ; preds = %vector.memcheck621, %vector.scevcheck616, %.lr.ph166.us.us.preheader, %middle.block640
  %indvars.iv283.ph = phi i64 [ 0, %vector.memcheck621 ], [ 0, %vector.scevcheck616 ], [ 0, %.lr.ph166.us.us.preheader ], [ %n.vec635, %middle.block640 ]
  br label %.lr.ph166.us.us

.lr.ph166.us.us:                                  ; preds = %.lr.ph166.us.us.preheader757, %.lr.ph166.us.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph166.us.us ], [ %indvars.iv283.ph, %.lr.ph166.us.us.preheader757 ] ; 3 uses
  %i.adt = mul nsw i64 %i.aaa, %indvars.iv283
  %i.adu = getelementptr inbounds i8, ptr %i.zz, i64 %i.adt
  %i.adv = getelementptr inbounds i8, ptr %i.adu, i64 -2
  %i.adw = load i16, ptr %i.adv, align 2, !tbaa !40
  %i.adx = trunc nuw nsw i64 %indvars.iv283 to i32
  %i.ady = xor i32 %i.adx, -1
  %i.adz = add i32 %i.zb, %i.ady
  %i.aea = shl nsw i32 %i.adz, 1
  %32 = sext i32 %i.aea to i64
  %i.aeb = getelementptr inbounds i8, ptr %i.b, i64 %32
  store i16 %i.adw, ptr %i.aeb, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.aec = icmp samesign ult i64 %indvars.iv.next284, %i.abv
  br i1 %i.aec, label %.lr.ph166.us.us, label %._crit_edge.us195.us, !llvm.loop !191

._crit_edge.us195.us:                             ; preds = %.lr.ph166.us.us, %middle.block640, %.preheader97.us.us
  %i.aed = sub nsw i32 %i.zb, %i.zx               ; 4 uses
  %i.aee = shl nuw nsw i32 %i.aed, 1
  %i.aef = zext nneg i32 %i.aee to i64
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aef
  %i.aeh = load i16, ptr %i.aeg, align 8, !tbaa !40 ; 3 uses
  %i.aei = icmp sgt i32 %i.aed, 0
  br i1 %i.aei, label %iter.check601, label %check_intra_mode.exit49.us.us

iter.check601:                                    ; preds = %._crit_edge.us195.us
  %i.aej = zext nneg i32 %i.aed to i64            ; 5 uses
  %min.iters.check591 = icmp ult i32 %i.aed, 16
  br i1 %min.iters.check591, label %vec.epilog.ph605, label %vector.ph592

vector.ph592:                                     ; preds = %iter.check601
  %i.aek = and i64 %i.aej, 12
  %n.vec593 = and i64 %i.aej, 2147483632          ; 4 uses
  %broadcast.splatinsert594 = insertelement <8 x i16> poison, i16 %i.aeh, i64 0
  %broadcast.splat595 = shufflevector <8 x i16> %broadcast.splatinsert594, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.ph592, %vector.body596
  %index597 = phi i64 [ 0, %vector.ph592 ], [ %index.next598, %vector.body596 ] ; 2 uses
  %i.ael = shl nuw nsw i64 %index597, 1
  %i.aem = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ael ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  store <8 x i16> %broadcast.splat595, ptr %i.aem, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat595, ptr %i.aen, align 16, !tbaa !40
  %index.next598 = add nuw i64 %index597, 16      ; 2 uses
  %i.aeo = icmp eq i64 %index.next598, %n.vec593
  br i1 %i.aeo, label %middle.block599, label %vector.body596, !llvm.loop !192

middle.block599:                                  ; preds = %vector.body596
  %cmp.n600 = icmp eq i64 %n.vec593, %i.aej
  br i1 %cmp.n600, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check602

vec.epilog.iter.check602:                         ; preds = %middle.block599
  %min.epilog.iters.check604 = icmp eq i64 %i.aek, 0
  br i1 %min.epilog.iters.check604, label %.lr.ph169.us.us, label %vec.epilog.ph605, !prof !208

vec.epilog.ph605:                                 ; preds = %iter.check601, %vec.epilog.iter.check602
  %vec.epilog.resume.val606 = phi i64 [ %n.vec593, %vec.epilog.iter.check602 ], [ 0, %iter.check601 ]
  %broadcast.splatinsert608 = insertelement <4 x i16> poison, i16 %i.aeh, i64 0
  %broadcast.splat609 = shufflevector <4 x i16> %broadcast.splatinsert608, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body610

vec.epilog.vector.body610:                        ; preds = %vec.epilog.vector.body610, %vec.epilog.ph605
  %index611 = phi i64 [ %vec.epilog.resume.val606, %vec.epilog.ph605 ], [ %index.next612, %vec.epilog.vector.body610 ] ; 2 uses
  %i.aep = shl nuw nsw i64 %index611, 1
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aep
  store <4 x i16> %broadcast.splat609, ptr %i.aeq, align 8, !tbaa !40
  %index.next612 = add nuw i64 %index611, 4       ; 2 uses
  %i.aer = icmp eq i64 %index.next612, %i.aej
  br i1 %i.aer, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body610, !llvm.loop !193

.lr.ph169.us.us:                                  ; preds = %vec.epilog.iter.check602, %.lr.ph169.us.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph169.us.us ], [ %n.vec593, %vec.epilog.iter.check602 ] ; 2 uses
  %i.aes = shl nuw nsw i64 %indvars.iv286, 1
  %i.aet = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aes
  store i16 %i.aeh, ptr %i.aet, align 2, !tbaa !40
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.aeu = icmp samesign ult i64 %indvars.iv.next287, %i.aej
  br i1 %i.aeu, label %.lr.ph169.us.us, label %check_intra_mode.exit49.us.us, !llvm.loop !194

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader.us.us, label %.preheader94.us.us

.preheader94.us.us:                               ; preds = %bb.ba
  %i.aev = icmp sgt i32 %i.zb, 0
  br i1 %i.aev, label %.lr.ph171.us.us.preheader, label %check_intra_mode.exit49.us.us

.lr.ph171.us.us.preheader:                        ; preds = %.preheader94.us.us
  %wide.trip.count292 = zext nneg i32 %i.zb to i64 ; 5 uses
  %min.iters.check580 = icmp ugt i32 %i.zb, 7
  %ident.check570.not = icmp eq i64 %i.aaa, 1
  %or.cond749 = select i1 %min.iters.check580, i1 %ident.check570.not, i1 false
  br i1 %or.cond749, label %vector.memcheck571, label %.lr.ph171.us.us.preheader753

vector.memcheck571:                               ; preds = %.lr.ph171.us.us.preheader
  %i.aew = shl nuw nsw i64 %wide.trip.count292, 1
  %scevgep572 = getelementptr i8, ptr %i.b, i64 %i.aew
  %scevgep573 = getelementptr i8, ptr %i.zz, i64 -2
  %scevgep574 = getelementptr i8, ptr %i.zz, i64 -1
  %scevgep575 = getelementptr i8, ptr %scevgep574, i64 %wide.trip.count292
  %bound0576 = icmp ult ptr %i.b, %scevgep575
  %bound1577 = icmp ult ptr %scevgep573, %scevgep572
  %found.conflict578 = and i1 %bound0576, %bound1577
  br i1 %found.conflict578, label %.lr.ph171.us.us.preheader753, label %vector.ph581

vector.ph581:                                     ; preds = %vector.memcheck571
  %n.vec582 = and i64 %wide.trip.count292, 2147483640 ; 3 uses
  br label %vector.body583

vector.body583:                                   ; preds = %vector.body583, %vector.ph581
  %index584 = phi i64 [ 0, %vector.ph581 ], [ %index.next585, %vector.body583 ] ; 10 uses
  %i.aex = getelementptr inbounds i8, ptr %i.zz, i64 %index584
  %i.aey = getelementptr i8, ptr %i.zz, i64 %index584
  %i.aez = getelementptr i8, ptr %i.zz, i64 %index584
  %i.afa = getelementptr i8, ptr %i.zz, i64 %index584
  %i.afb = getelementptr i8, ptr %i.zz, i64 %index584
  %i.afc = getelementptr i8, ptr %i.zz, i64 %index584
  %i.afd = getelementptr i8, ptr %i.zz, i64 %index584
  %i.afe = getelementptr i8, ptr %i.zz, i64 %index584
  %i.aff = getelementptr inbounds i8, ptr %i.aex, i64 -2
  %i.afg = getelementptr i8, ptr %i.aey, i64 -1
  %i.afh = getelementptr i8, ptr %i.afa, i64 1
  %i.afi = getelementptr i8, ptr %i.afb, i64 2
  %i.afj = getelementptr i8, ptr %i.afc, i64 3
  %i.afk = getelementptr i8, ptr %i.afd, i64 4
  %i.afl = getelementptr i8, ptr %i.afe, i64 5
  %i.afm = load i16, ptr %i.aff, align 2, !tbaa !40, !alias.scope !213
  %i.afn = load i16, ptr %i.afg, align 2, !tbaa !40, !alias.scope !213
  %i.afo = load i16, ptr %i.aez, align 2, !tbaa !40, !alias.scope !213
  %i.afp = load i16, ptr %i.afh, align 2, !tbaa !40, !alias.scope !213
  %i.afq = load i16, ptr %i.afi, align 2, !tbaa !40, !alias.scope !213
  %i.afr = load i16, ptr %i.afj, align 2, !tbaa !40, !alias.scope !213
  %i.afs = load i16, ptr %i.afk, align 2, !tbaa !40, !alias.scope !213
  %i.aft = load i16, ptr %i.afl, align 2, !tbaa !40, !alias.scope !213
  %i.afu = insertelement <8 x i16> poison, i16 %i.afm, i64 0
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 1
  %i.afw = insertelement <8 x i16> %i.afv, i16 %i.afo, i64 2
  %i.afx = insertelement <8 x i16> %i.afw, i16 %i.afp, i64 3
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 4
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 5
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 6
  %i.agb = insertelement <8 x i16> %i.aga, i16 %i.aft, i64 7
  %i.agc = shl nuw nsw i64 %index584, 1
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agc
  store <8 x i16> %i.agb, ptr %i.agd, align 16, !tbaa !40, !alias.scope !214, !noalias !213
  %index.next585 = add nuw i64 %index584, 8       ; 2 uses
  %i.age = icmp eq i64 %index.next585, %n.vec582
  br i1 %i.age, label %middle.block586, label %vector.body583, !llvm.loop !198

middle.block586:                                  ; preds = %vector.body583
  %cmp.n587 = icmp eq i64 %n.vec582, %wide.trip.count292
  br i1 %cmp.n587, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us.preheader753

.lr.ph171.us.us.preheader753:                     ; preds = %vector.memcheck571, %.lr.ph171.us.us.preheader, %middle.block586
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck571 ], [ 0, %.lr.ph171.us.us.preheader ], [ %n.vec582, %middle.block586 ]
  br label %.lr.ph171.us.us

.lr.ph171.us.us:                                  ; preds = %.lr.ph171.us.us, %.lr.ph171.us.us.preheader753
  %indvars.iv289 = phi i64 [ %indvars.iv289.ph, %.lr.ph171.us.us.preheader753 ], [ %indvars.iv.next290.3, %.lr.ph171.us.us ] ; 6 uses
  %i.agf = mul nsw i64 %i.aaa, %indvars.iv289
  %i.agg = getelementptr inbounds i8, ptr %i.zz, i64 %i.agf
  %i.agh = getelementptr inbounds i8, ptr %i.agg, i64 -2
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !40
  %i.agj = shl nuw nsw i64 %indvars.iv289, 1
  %i.agk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agj
  store i16 %i.agi, ptr %i.agk, align 8, !tbaa !40
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.agl = mul nsw i64 %i.aaa, %indvars.iv.next290
  %i.agm = getelementptr inbounds i8, ptr %i.zz, i64 %i.agl
  %i.agn = getelementptr inbounds i8, ptr %i.agm, i64 -2
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !40
  %i.agp = shl nuw nsw i64 %indvars.iv.next290, 1
  %i.agq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agp
  store i16 %i.ago, ptr %i.agq, align 2, !tbaa !40
  %indvars.iv.next290.1 = or disjoint i64 %indvars.iv289, 2 ; 2 uses
  %i.agr = mul nsw i64 %i.aaa, %indvars.iv.next290.1
  %i.ags = getelementptr inbounds i8, ptr %i.zz, i64 %i.agr
  %i.agt = getelementptr inbounds i8, ptr %i.ags, i64 -2
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !40
  %i.agv = shl nuw nsw i64 %indvars.iv.next290.1, 1
  %i.agw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agv
  store i16 %i.agu, ptr %i.agw, align 4, !tbaa !40
  %indvars.iv.next290.2 = or disjoint i64 %indvars.iv289, 3 ; 2 uses
  %i.agx = mul nsw i64 %i.aaa, %indvars.iv.next290.2
  %i.agy = getelementptr inbounds i8, ptr %i.zz, i64 %i.agx
  %i.agz = getelementptr inbounds i8, ptr %i.agy, i64 -2
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !40
  %i.ahb = shl nuw nsw i64 %indvars.iv.next290.2, 1
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahb
  store i16 %i.aha, ptr %i.ahc, align 2, !tbaa !40
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %wide.trip.count292
  br i1 %exitcond293.not.3, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us, !llvm.loop !199

.preheader.us.us:                                 ; preds = %bb.ba
  %i.ahd = icmp sgt i32 %i.zx, 0
  br i1 %i.ahd, label %.lr.ph173.us.us.preheader, label %._crit_edge174.us.us

.lr.ph173.us.us.preheader:                        ; preds = %.preheader.us.us
  %i.ahe = zext nneg i32 %i.zx to i64             ; 5 uses
  %min.iters.check560 = icmp ugt i32 %i.zx, 7
  %ident.check555.not = icmp eq i64 %i.aaa, 1
  %or.cond750 = select i1 %min.iters.check560, i1 %ident.check555.not, i1 false
  br i1 %or.cond750, label %vector.memcheck, label %.lr.ph173.us.us.preheader752

vector.memcheck:                                  ; preds = %.lr.ph173.us.us.preheader
  %i.ahf = shl nuw nsw i64 %i.ahe, 1
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ahf
  %scevgep556 = getelementptr i8, ptr %i.zz, i64 -2
  %scevgep557 = getelementptr i8, ptr %i.zz, i64 -1
  %scevgep558 = getelementptr i8, ptr %scevgep557, i64 %i.ahe
end_hunk_0
