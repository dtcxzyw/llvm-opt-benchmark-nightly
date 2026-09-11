Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9recon?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_vp9_intra_recon_8bpp:bb.a
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  store <16 x i8> %wide.load366, ptr %i.ye, align 16, !tbaa !40
  store <16 x i8> %wide.load367, ptr %i.yf, align 16, !tbaa !40
  %index.next368 = add nuw i64 %index365, 32      ; 2 uses
  %i.yg = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.yg, label %middle.block369, label %vector.body364, !llvm.loop !147

middle.block369:                                  ; preds = %vector.body364
  %cmp.n370 = icmp eq i64 %n.vec363, %i.xy
  br i1 %cmp.n370, label %._crit_edge126.us.us, label %vec.epilog.iter.check374

vec.epilog.iter.check374:                         ; preds = %middle.block369
  %min.epilog.iters.check375 = icmp eq i64 %i.ya, 0
  br i1 %min.epilog.iters.check375, label %.lr.ph125.us.us.preheader, label %vec.epilog.vector.body378.preheader, !prof !150

vec.epilog.vector.body378.preheader:              ; preds = %vector.main.loop.iter.check360, %vec.epilog.iter.check374
  %index379.ph = phi i64 [ 0, %vector.main.loop.iter.check360 ], [ %n.vec363, %vec.epilog.iter.check374 ]
  br label %vec.epilog.vector.body378

.lr.ph125.us.us.preheader:                        ; preds = %iter.check372, %vec.epilog.iter.check374
  %indvars.iv192.ph = phi i64 [ %n.vec363, %vec.epilog.iter.check374 ], [ 0, %iter.check372 ]
  br label %.lr.ph125.us.us

vec.epilog.vector.body378:                        ; preds = %vec.epilog.vector.body378.preheader, %vec.epilog.vector.body378
  %index379 = phi i64 [ %index.next381, %vec.epilog.vector.body378 ], [ %index379.ph, %vec.epilog.vector.body378.preheader ] ; 3 uses
  %i.yh = getelementptr inbounds i8, ptr %i.tb, i64 %index379
  %i.yi = getelementptr inbounds i8, ptr %i.yh, i64 -1
  %wide.load380 = load <4 x i8>, ptr %i.yi, align 1, !tbaa !40
  %i.yj = getelementptr inbounds nuw i8, ptr %i.b, i64 %index379
  store <4 x i8> %wide.load380, ptr %i.yj, align 4, !tbaa !40
  %index.next381 = add nuw i64 %index379, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next381, %i.xy
  br i1 %i.yk, label %._crit_edge126.us.us, label %vec.epilog.vector.body378, !llvm.loop !148

.lr.ph125.us.us:                                  ; preds = %.lr.ph125.us.us.preheader, %.lr.ph125.us.us
  %indvars.iv192 = phi i64 [ %indvars.iv.next193, %.lr.ph125.us.us ], [ %indvars.iv192.ph, %.lr.ph125.us.us.preheader ] ; 3 uses
  %i.yl = mul nsw i64 %i.td, %indvars.iv192
  %i.ym = getelementptr inbounds i8, ptr %i.tb, i64 %i.yl
  %i.yn = getelementptr inbounds i8, ptr %i.ym, i64 -1
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !40
  %i.yp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv192
  store i8 %i.yo, ptr %i.yp, align 1, !tbaa !40
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.yq = icmp samesign ult i64 %indvars.iv.next193, %i.xy
  br i1 %i.yq, label %.lr.ph125.us.us, label %._crit_edge126.us.us, !llvm.loop !149

._crit_edge126.us.us:                             ; preds = %vec.epilog.vector.body378, %.lr.ph125.us.us, %middle.block369, %.preheader.us.us.._crit_edge126.us.us_crit_edge
  %.pre-phi208 = phi i64 [ %.pre207, %.preheader.us.us.._crit_edge126.us.us_crit_edge ], [ %i.xy, %middle.block369 ], [ %i.xy, %.lr.ph125.us.us ], [ %i.xy, %vec.epilog.vector.body378 ]
  %i.yr = getelementptr i8, ptr %i.b, i64 %.pre-phi208 ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 -1
  %i.yt = load i8, ptr %i.ys, align 1, !tbaa !40
  %i.yu = sub nsw i32 %i.ss, %i.sz
  %i.yv = sext i32 %i.yu to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.yr, i8 %i.yt, i64 %i.yv, i1 false)
  br label %check_intra_mode.exit42.us.us

check_intra_mode.exit42.us.us:                    ; preds = %.lr.ph.us143.us, %vec.epilog.vector.body407, %.lr.ph123.us.us, %middle.block475, %vec.epilog.middle.block489, %middle.block398, %.preheader83.us.us, %.preheader85.us.us, %._crit_edge126.us.us, %._crit_edge.us144.us, %bb.bf, %bb.bd
  %i.yw = zext i32 %.pre202 to i64
  %i.yx = getelementptr inbounds nuw [120 x i8], ptr %i.oc, i64 %i.yw
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %i.qi
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !85
  call void %i.yz(ptr noundef %.0175.i131.us.us, i64 noundef %i.pp, ptr noundef nonnull %i.b, ptr noundef %.0.us.us) #5, !inline_history !0
  %.not195.i.us.us = icmp eq i32 %i.pk, 0
  br i1 %.not195.i.us.us, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %check_intra_mode.exit42.us.us
  %i.za = load ptr, ptr %i.of, align 8, !tbaa !85
  %i.zb = load i64, ptr %i.nv, align 8, !tbaa !91
  %i.zc = load ptr, ptr %i.ou, align 8, !tbaa !92
  %.idx234 = shl nsw i64 %indvars.iv195, 5
  %i.zd = getelementptr inbounds i8, ptr %i.zc, i64 %.idx234
  call void %i.za(ptr noundef %.0175.i131.us.us, i64 noundef %i.zb, ptr noundef %i.zd, i32 noundef %i.pk) #5, !inline_history !0
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %check_intra_mode.exit42.us.us
  %i.ze = add nsw i32 %.1185.i128.us.us, %i.aq    ; 2 uses
  %i.zf = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.oi
  %i.zg = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.oi
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, %i.ol ; 2 uses
  %i.zh = icmp slt i32 %i.ze, %i.nm
  br i1 %i.zh, label %bb.ag, label %._crit_edge138.us.us, !llvm.loop !3

._crit_edge138.us.us:                             ; preds = %bb.bk
  %i.zi = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 68
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !77
  %i.zl = mul nsw i32 %i.zk, %i.oh
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %.1.i142.us.us, i64 %i.zm
  %i.zo = load i64, ptr %i.nv, align 8, !tbaa !91
  %i.zp = mul nsw i64 %i.zo, %i.oi
  %i.zq = getelementptr inbounds i8, ptr %.1180.i141.us.us, i64 %i.zp
  %i.zr = add nsw i32 %.1183.i140.us.us, %i.aq    ; 2 uses
  %i.zs = icmp slt i32 %i.zr, %i.nq
  br i1 %i.zs, label %.preheader87.us.us, label %..loopexit_crit_edge.split.us.us, !llvm.loop !4

..loopexit_crit_edge.split.us.us:                 ; preds = %._crit_edge138.us.us
  br i1 %i.on, label %.preheader87.lr.ph.us, label %intra_recon.exit.split, !llvm.loop !5

intra_recon.exit.split:                           ; preds = %..loopexit_crit_edge.split.us.us, %._crit_edge118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @ff_vp9_intra_recon_16bpp(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 12 uses
  %i.b = alloca [64 x i8], align 16               ; 66 uses
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
  %scevgep436 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep438 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep436.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep438.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader, %._crit_edge151.us
  %indvars.iv258 = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next259, %._crit_edge151.us ] ; 5 uses
  %.0178.i155.us = phi ptr [ %i.bs, %.preheader118.us.preheader ], [ %i.sp, %._crit_edge151.us ] ; 2 uses
  %.0179.i154.us = phi ptr [ %i.ar, %.preheader118.us.preheader ], [ %i.ss, %._crit_edge151.us ] ; 2 uses
  %.0186.i152.us = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next254, %._crit_edge151.us ]
  %i.bz = shl nsw i64 %indvars.iv258, 1
  %i.ca = icmp sgt i64 %indvars.iv258, 0
  %i.cb = or i1 %i.bb, %i.ca                      ; 5 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = trunc i64 %indvars.iv258 to i32         ; 2 uses
  %i.ce = or i32 %i.bd, %i.cd
  %or.cond3.not.i.us = icmp eq i32 %i.ce, 0
  %i.cf = icmp eq i64 %indvars.iv258, 0           ; 2 uses
  %i.cg = select i1 %i.cb, i32 1, i32 65535
  %invariant.gep = getelementptr i8, ptr %i.aw, i64 %i.bz
  br label %bb.b

bb.b:                                             ; preds = %.preheader118.us, %bb.ab
  %indvars.iv253 = phi i64 [ %.0186.i152.us, %.preheader118.us ], [ %indvars.iv.next254, %bb.ab ] ; 4 uses
  %indvars.iv251 = phi i64 [ 0, %.preheader118.us ], [ %indvars.iv.next252, %bb.ab ] ; 7 uses
  %.0176.i147.us = phi ptr [ %.0178.i155.us, %.preheader118.us ], [ %i.lf, %bb.ab ] ; 3 uses
  %.0177.i144.us = phi ptr [ %.0179.i154.us, %.preheader118.us ], [ %i.le, %bb.ab ] ; 5 uses
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !41 ; 11 uses
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
  %.not196.i.us337 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us337, label %.thread338, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread338

.thread338:                                       ; preds = %.thread, %bb.d
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

bb.f:                                             ; preds = %.thread, %bb.e, %.thread338, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread338 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread338 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread338 ], [ 0, %.thread ] ; 2 uses
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
  %i.en = and i8 %i.ea, -5                        ; 2 uses
  %i.eo = icmp eq i8 %i.en, 3                     ; 2 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.cb, label %bb.h, label %.critedge.i.preheader.us

.critedge.i.us:                                   ; preds = %vec.epilog.iter.check543, %.critedge.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.i.us ], [ %n.vec532, %vec.epilog.iter.check543 ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ep
  store i16 %i.rp, ptr %i.eq, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit116.us, label %.critedge.i.us, !llvm.loop !160

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
  %i.ff = icmp ne i8 %i.en, 3
  %or.cond9.i.us = select i1 %i.ff, i1 true, i1 %i.ds
  %i.fg = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.fg, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %.loopexit115.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread72.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = shl i32 8, %.pre.pre
  %i.fi = sext i32 %i.fh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fi, i1 false)
  br label %.loopexit116.us

bb.p:                                             ; preds = %bb.n
  %i.fj = shl i32 %i.ek, 3                        ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fk, i1 false)
  %i.fl = add i32 %i.fj, -2
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.ax, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !40 ; 3 uses
  %i.fp = sub nsw i32 %i.ee, %i.el                ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, 0
  br i1 %i.fq, label %iter.check514, label %.loopexit116.us

iter.check514:                                    ; preds = %bb.p
  %i.fr = sext i32 %i.el to i64                   ; 3 uses
  %i.fs = zext nneg i32 %i.fp to i64              ; 5 uses
  %min.iters.check503 = icmp ult i32 %i.fp, 16
  br i1 %min.iters.check503, label %vec.epilog.ph518, label %vector.ph504

vector.ph504:                                     ; preds = %iter.check514
  %i.ft = and i64 %i.fs, 12
  %n.vec505 = and i64 %i.fs, 2147483632           ; 4 uses
  %broadcast.splatinsert506 = insertelement <8 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat507 = shufflevector <8 x i16> %broadcast.splatinsert506, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body508

vector.body508:                                   ; preds = %vector.body508, %vector.ph504
  %index509 = phi i64 [ 0, %vector.ph504 ], [ %index.next510, %vector.body508 ] ; 2 uses
  %i.fu = add nsw i64 %index509, %i.fr
  %i.fv = shl nsw i64 %i.fu, 1
  %i.fw = getelementptr inbounds i8, ptr %i.ax, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store <8 x i16> %broadcast.splat507, ptr %i.fw, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat507, ptr %i.fx, align 8, !tbaa !40
  %index.next510 = add nuw i64 %index509, 16      ; 2 uses
  %i.fy = icmp eq i64 %index.next510, %n.vec505
  br i1 %i.fy, label %middle.block511, label %vector.body508, !llvm.loop !161

middle.block511:                                  ; preds = %vector.body508
  %cmp.n512 = icmp eq i64 %n.vec505, %i.fs
  br i1 %cmp.n512, label %.loopexit116.us, label %vec.epilog.iter.check516

vec.epilog.iter.check516:                         ; preds = %middle.block511
  %min.epilog.iters.check517 = icmp eq i64 %i.ft, 0
  br i1 %min.epilog.iters.check517, label %.lr.ph121.us, label %vec.epilog.ph518, !prof !230

vec.epilog.ph518:                                 ; preds = %iter.check514, %vec.epilog.iter.check516
  %vec.epilog.resume.val513 = phi i64 [ %n.vec505, %vec.epilog.iter.check516 ], [ 0, %iter.check514 ]
  %broadcast.splatinsert520 = insertelement <4 x i16> poison, i16 %i.fo, i64 0
  %broadcast.splat521 = shufflevector <4 x i16> %broadcast.splatinsert520, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body522

vec.epilog.vector.body522:                        ; preds = %vec.epilog.vector.body522, %vec.epilog.ph518
  %index523 = phi i64 [ %vec.epilog.resume.val513, %vec.epilog.ph518 ], [ %index.next524, %vec.epilog.vector.body522 ] ; 2 uses
  %i.fz = add nsw i64 %index523, %i.fr
  %i.ga = shl nsw i64 %i.fz, 1
  %i.gb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ga
  store <4 x i16> %broadcast.splat521, ptr %i.gb, align 8, !tbaa !40
  %index.next524 = add nuw i64 %index523, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next524, %i.fs
  br i1 %i.gc, label %.loopexit116.us, label %vec.epilog.vector.body522, !llvm.loop !162

.lr.ph121.us:                                     ; preds = %vec.epilog.iter.check516, %.lr.ph121.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph121.us ], [ %n.vec505, %vec.epilog.iter.check516 ] ; 2 uses
  %i.gd = add nsw i64 %indvars.iv217, %i.fr
  %i.ge = shl nsw i64 %i.gd, 1
  %i.gf = getelementptr inbounds i8, ptr %i.ax, i64 %i.ge
  store i16 %i.fo, ptr %i.gf, align 2, !tbaa !40
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gg = icmp samesign ult i64 %indvars.iv.next218, %i.fs
  br i1 %i.gg, label %.lr.ph121.us, label %.loopexit116.us, !llvm.loop !163

.loopexit116.us:                                  ; preds = %.critedge.i.us, %vec.epilog.vector.body549, %.lr.ph121.us, %vec.epilog.vector.body522, %middle.block538, %middle.block511, %.critedge.i.preheader.us, %bb.p, %bb.o
  %.0279.i79.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ %.0279.i.ph.us, %middle.block511 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body549 ], [ %.0279.i.ph.us, %vec.epilog.vector.body522 ], [ %.0279.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block538 ], [ undef, %.critedge.i.us ]
  %.0280.i76.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ %.0280.i.ph.us, %middle.block511 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body549 ], [ %.0280.i.ph.us, %vec.epilog.vector.body522 ], [ %.0280.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block538 ], [ undef, %.critedge.i.us ]
  %i.gh = and i64 %i.ec, 2189
  %.not293.not.i.us = icmp eq i64 %i.gh, 0
  br i1 %.not293.not.i.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.loopexit116.us
  %or.cond11.i.us = and i1 %i.cb, %i.dr
  br i1 %or.cond11.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gi = add nsw i32 %i.dv, -8
  %i.gj = shl i32 128, %i.gi
  %i.gk = add nuw i32 %i.gj, %i.cg
  %i.gl = trunc i32 %i.gk to i16
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.gm = getelementptr inbounds i8, ptr %.0279.i79.us, i64 -2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i16 [ %i.gn, %bb.s ], [ %i.gl, %bb.r ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %.loopexit116.us
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.u, label %.loopexit115.us

bb.u:                                             ; preds = %bb.t
  %or.cond13.i.us = select i1 %i.cb, i1 %i.ds, i1 false
  %i.go = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.go, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.v, label %.loopexit115.us.loopexit

.loopexit115.us.loopexit:                         ; preds = %bb.u
  %i.gp = load <8 x i16>, ptr %i.bg, align 2
  %i.gq = shufflevector <8 x i16> %i.gp, <8 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.gq, ptr %i.by, align 8, !tbaa !40
  br label %.loopexit115.us

bb.v:                                             ; preds = %bb.u
  %i.gr = getelementptr inbounds nuw i8, ptr %.0280.i76.us, i64 8
  %i.gs = load i64, ptr %i.gr, align 1
  store i64 %i.gs, ptr %i.bh, align 8
  br label %.loopexit115.us

.loopexit115.us:                                  ; preds = %.loopexit115.us.loopexit, %bb.v, %bb.t, %bb.m, %bb.l, %bb.f
  %.071.us = phi ptr [ %.0280.i.ph.us, %bb.m ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %i.ax, %.loopexit115.us.loopexit ]
  %i.gt = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.gt, 0
  br i1 %.not296.not.i.us, label %bb.w, label %check_intra_mode.exit.us

bb.w:                                             ; preds = %.loopexit115.us
  %i.gu = shl i32 4, %.pre.pre                    ; 17 uses
  br i1 %i.dr, label %bb.x, label %.preheader113.us

vec.epilog.scalar.ph488:                          ; preds = %vec.epilog.iter.check489, %vec.epilog.scalar.ph488
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph488 ], [ %n.vec478, %vec.epilog.iter.check489 ] ; 2 uses
  %i.gv = shl nuw nsw i64 %indvars.iv224, 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gv
  store i16 %i.sb, ptr %i.gw, align 2, !tbaa !40
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %check_intra_mode.exit.us, label %vec.epilog.scalar.ph488, !llvm.loop !164

bb.x:                                             ; preds = %bb.w
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !67
  %i.gz = sub i32 %i.gy, %i.g
  %i.ha = shl i32 %i.gz, 1
  %i.hb = sub i32 %i.ha, %i.cd                    ; 2 uses
  %i.hc = shl i32 %i.hb, 2                        ; 10 uses
  %i.hd = icmp eq i64 %indvars.iv251, 0           ; 2 uses
  %i.he = select i1 %i.hd, ptr %.0176.i147.us, ptr %.0177.i144.us ; 48 uses
  %i.hf = select i1 %i.hd, i64 %i.dl, i64 %i.dm   ; 12 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gu, %i.hc       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader110.us, label %.preheader111.us

.lr.ph126.us:                                     ; preds = %.lr.ph126.us, %.lr.ph126.us.preheader805
  %indvars.iv229 = phi i64 [ %indvars.iv229.ph, %.lr.ph126.us.preheader805 ], [ %indvars.iv.next230.1, %.lr.ph126.us ] ; 4 uses
  %i.hg = mul nsw i64 %i.hf, %indvars.iv229
  %i.hh = getelementptr inbounds i8, ptr %i.he, i64 %i.hg
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !40
  %3 = trunc nuw nsw i64 %indvars.iv229 to i32
  %4 = xor i32 %3, -1
  %5 = add nsw i32 %i.gu, %4
  %6 = shl nuw nsw i32 %5, 1
  %7 = zext nneg i32 %6 to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 %7
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !40
  %indvars.iv.next230 = or disjoint i64 %indvars.iv229, 1 ; 2 uses
  %i.hl = mul nsw i64 %i.hf, %indvars.iv.next230
  %i.hm = getelementptr inbounds i8, ptr %i.he, i64 %i.hl
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -2
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !40
  %8 = trunc nuw nsw i64 %indvars.iv.next230 to i32
  %9 = xor i32 %8, -1
  %10 = add nsw i32 %i.gu, %9
  %11 = shl nuw nsw i32 %10, 1
  %12 = zext nneg i32 %11 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 %12
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !40
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 2 uses
  %exitcond233.not.1 = icmp eq i64 %indvars.iv.next230.1, %wide.trip.count232
  br i1 %exitcond233.not.1, label %check_intra_mode.exit.us, label %.lr.ph126.us, !llvm.loop !165

.lr.ph128.us:                                     ; preds = %.lr.ph128.us.preheader804, %.lr.ph128.us
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph128.us ], [ %indvars.iv234.ph, %.lr.ph128.us.preheader804 ] ; 3 uses
  %i.hq = mul nsw i64 %i.hf, %indvars.iv234
  %i.hr = getelementptr inbounds i8, ptr %i.he, i64 %i.hq
  %i.hs = getelementptr inbounds i8, ptr %i.hr, i64 -2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !40
  %i.hu = trunc nuw nsw i64 %indvars.iv234 to i32
  %i.hv = xor i32 %i.hu, -1
  %i.hw = add i32 %i.gu, %i.hv
  %i.hx = shl nuw nsw i32 %i.hw, 1
  %13 = zext nneg i32 %i.hx to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 %13
  store i16 %i.ht, ptr %i.hy, align 2, !tbaa !40
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next235, %i.od
  br i1 %i.hz, label %.lr.ph128.us, label %._crit_edge.us, !llvm.loop !166

._crit_edge.us:                                   ; preds = %.lr.ph128.us, %middle.block450, %.preheader110.us
  %i.ia = sub nsw i32 %i.gu, %i.hc                ; 4 uses
  %i.ib = shl nuw nsw i32 %i.ia, 1
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ic
  %i.ie = load i16, ptr %i.id, align 8, !tbaa !40 ; 3 uses
  %i.if = icmp sgt i32 %i.ia, 0
  br i1 %i.if, label %iter.check416, label %check_intra_mode.exit.us

iter.check416:                                    ; preds = %._crit_edge.us
  %i.ig = zext nneg i32 %i.ia to i64              ; 5 uses
  %min.iters.check405 = icmp ult i32 %i.ia, 16
  br i1 %min.iters.check405, label %vec.epilog.ph420, label %vector.ph406

vector.ph406:                                     ; preds = %iter.check416
  %i.ih = and i64 %i.ig, 12
  %n.vec407 = and i64 %i.ig, 2147483632           ; 4 uses
  %broadcast.splatinsert408 = insertelement <8 x i16> poison, i16 %i.ie, i64 0
  %broadcast.splat409 = shufflevector <8 x i16> %broadcast.splatinsert408, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next412, %vector.body410 ] ; 2 uses
  %i.ii = shl nuw nsw i64 %index411, 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ii ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store <8 x i16> %broadcast.splat409, ptr %i.ij, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat409, ptr %i.ik, align 16, !tbaa !40
  %index.next412 = add nuw i64 %index411, 16      ; 2 uses
  %i.il = icmp eq i64 %index.next412, %n.vec407
  br i1 %i.il, label %middle.block413, label %vector.body410, !llvm.loop !167

middle.block413:                                  ; preds = %vector.body410
  %cmp.n414 = icmp eq i64 %n.vec407, %i.ig
  br i1 %cmp.n414, label %check_intra_mode.exit.us, label %vec.epilog.iter.check418

vec.epilog.iter.check418:                         ; preds = %middle.block413
  %min.epilog.iters.check419 = icmp eq i64 %i.ih, 0
  br i1 %min.epilog.iters.check419, label %.lr.ph131.us, label %vec.epilog.ph420, !prof !230

vec.epilog.ph420:                                 ; preds = %iter.check416, %vec.epilog.iter.check418
  %vec.epilog.resume.val415 = phi i64 [ %n.vec407, %vec.epilog.iter.check418 ], [ 0, %iter.check416 ]
  %broadcast.splatinsert422 = insertelement <4 x i16> poison, i16 %i.ie, i64 0
  %broadcast.splat423 = shufflevector <4 x i16> %broadcast.splatinsert422, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body424

vec.epilog.vector.body424:                        ; preds = %vec.epilog.vector.body424, %vec.epilog.ph420
  %index425 = phi i64 [ %vec.epilog.resume.val415, %vec.epilog.ph420 ], [ %index.next426, %vec.epilog.vector.body424 ] ; 2 uses
  %i.im = shl nuw nsw i64 %index425, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.im
  store <4 x i16> %broadcast.splat423, ptr %i.in, align 8, !tbaa !40
  %index.next426 = add nuw i64 %index425, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next426, %i.ig
  br i1 %i.io, label %check_intra_mode.exit.us, label %vec.epilog.vector.body424, !llvm.loop !168

.lr.ph131.us:                                     ; preds = %vec.epilog.iter.check418, %.lr.ph131.us
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph131.us ], [ %n.vec407, %vec.epilog.iter.check418 ] ; 2 uses
  %i.ip = shl nuw nsw i64 %indvars.iv237, 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ip
  store i16 %i.ie, ptr %i.iq, align 2, !tbaa !40
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.ir = icmp samesign ult i64 %indvars.iv.next238, %i.ig
  br i1 %i.ir, label %.lr.ph131.us, label %check_intra_mode.exit.us, !llvm.loop !169

bb.z:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader106.us, label %.preheader107.us

.lr.ph133.us:                                     ; preds = %.lr.ph133.us, %.lr.ph133.us.preheader800
  %indvars.iv240 = phi i64 [ %indvars.iv240.ph, %.lr.ph133.us.preheader800 ], [ %indvars.iv.next241.3, %.lr.ph133.us ] ; 6 uses
  %i.is = mul nsw i64 %i.hf, %indvars.iv240
  %i.it = getelementptr inbounds i8, ptr %i.he, i64 %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -2
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !40
  %i.iw = shl nuw nsw i64 %indvars.iv240, 1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.iw
  store i16 %i.iv, ptr %i.ix, align 8, !tbaa !40
  %indvars.iv.next241 = or disjoint i64 %indvars.iv240, 1 ; 2 uses
  %i.iy = mul nsw i64 %i.hf, %indvars.iv.next241
  %i.iz = getelementptr inbounds i8, ptr %i.he, i64 %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !40
  %i.jc = shl nuw nsw i64 %indvars.iv.next241, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jc
  store i16 %i.jb, ptr %i.jd, align 2, !tbaa !40
  %indvars.iv.next241.1 = or disjoint i64 %indvars.iv240, 2 ; 2 uses
  %i.je = mul nsw i64 %i.hf, %indvars.iv.next241.1
  %i.jf = getelementptr inbounds i8, ptr %i.he, i64 %i.je
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !40
  %i.ji = shl nuw nsw i64 %indvars.iv.next241.1, 1
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ji
  store i16 %i.jh, ptr %i.jj, align 4, !tbaa !40
  %indvars.iv.next241.2 = or disjoint i64 %indvars.iv240, 3 ; 2 uses
  %i.jk = mul nsw i64 %i.hf, %indvars.iv.next241.2
  %i.jl = getelementptr inbounds i8, ptr %i.he, i64 %i.jk
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 -2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !40
  %i.jo = shl nuw nsw i64 %indvars.iv.next241.2, 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.jo
  store i16 %i.jn, ptr %i.jp, align 2, !tbaa !40
  %indvars.iv.next241.3 = add nuw nsw i64 %indvars.iv240, 4 ; 2 uses
  %exitcond244.not.3 = icmp eq i64 %indvars.iv.next241.3, %wide.trip.count243
  br i1 %exitcond244.not.3, label %check_intra_mode.exit.us, label %.lr.ph133.us, !llvm.loop !170

.lr.ph135.us:                                     ; preds = %.lr.ph135.us.preheader799, %.lr.ph135.us
  %indvars.iv245 = phi i64 [ %indvars.iv.next246, %.lr.ph135.us ], [ %indvars.iv245.ph, %.lr.ph135.us.preheader799 ] ; 3 uses
  %i.jq = mul nsw i64 %i.hf, %indvars.iv245
  %i.jr = getelementptr inbounds i8, ptr %i.he, i64 %i.jq
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !40
  %i.ju = shl nuw nsw i64 %indvars.iv245, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ju
  store i16 %i.jt, ptr %i.jv, align 2, !tbaa !40
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %i.jw = icmp samesign ult i64 %indvars.iv.next246, %i.li
  br i1 %i.jw, label %.lr.ph135.us, label %._crit_edge136.us, !llvm.loop !171

._crit_edge136.us:                                ; preds = %.lr.ph135.us, %middle.block380, %.preheader106.us
  %i.jx = shl i32 %i.hb, 3
  %i.jy = add i32 %i.jx, -2
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds i8, ptr %i.b, i64 %i.jz
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !40 ; 3 uses
  %i.kc = sub nsw i32 %i.gu, %i.hc                ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %iter.check, label %check_intra_mode.exit.us

iter.check:                                       ; preds = %._crit_edge136.us
  %i.ke = sext i32 %i.hc to i64                   ; 3 uses
  %i.kf = zext nneg i32 %i.kc to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.kc, 16
  br i1 %min.iters.check, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %i.kg = and i64 %i.kf, 12
  %n.vec = and i64 %i.kf, 2147483632              ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kh = add nsw i64 %index, %i.ke
  %i.ki = shl nsw i64 %i.kh, 1
  %i.kj = getelementptr inbounds i8, ptr %i.b, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.kj, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat, ptr %i.kk, align 8, !tbaa !40
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kl = icmp eq i64 %index.next, %n.vec
  br i1 %i.kl, label %middle.block, label %vector.body, !llvm.loop !172

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.kf
  br i1 %cmp.n, label %check_intra_mode.exit.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph139.us, label %vec.epilog.ph, !prof !230

vec.epilog.ph:                                    ; preds = %iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %iter.check ]
  %broadcast.splatinsert366 = insertelement <4 x i16> poison, i16 %i.kb, i64 0
  %broadcast.splat367 = shufflevector <4 x i16> %broadcast.splatinsert366, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index368 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next369, %vec.epilog.vector.body ] ; 2 uses
  %i.km = add nsw i64 %index368, %i.ke
  %i.kn = shl nsw i64 %i.km, 1
  %i.ko = getelementptr inbounds i8, ptr %i.b, i64 %i.kn
  store <4 x i16> %broadcast.splat367, ptr %i.ko, align 8, !tbaa !40
  %index.next369 = add nuw i64 %index368, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next369, %i.kf
  br i1 %i.kp, label %check_intra_mode.exit.us, label %vec.epilog.vector.body, !llvm.loop !173

.lr.ph139.us:                                     ; preds = %vec.epilog.iter.check, %.lr.ph139.us
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %.lr.ph139.us ], [ %n.vec, %vec.epilog.iter.check ] ; 2 uses
  %i.kq = add nsw i64 %indvars.iv248, %i.ke
  %i.kr = shl nsw i64 %i.kq, 1
  %i.ks = getelementptr inbounds i8, ptr %i.b, i64 %i.kr
  store i16 %i.kb, ptr %i.ks, align 2, !tbaa !40
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %i.kt = icmp samesign ult i64 %indvars.iv.next249, %i.kf
  br i1 %i.kt, label %.lr.ph139.us, label %check_intra_mode.exit.us, !llvm.loop !174

check_intra_mode.exit.us:                         ; preds = %vec.epilog.scalar.ph488, %vec.epilog.vector.body495, %.lr.ph126.us, %.lr.ph131.us, %vec.epilog.vector.body424, %.lr.ph133.us, %.lr.ph139.us, %vec.epilog.vector.body, %middle.block484, %middle.block471, %middle.block413, %middle.block400, %middle.block, %.preheader113.us, %.preheader111.us, %._crit_edge.us, %.preheader107.us, %._crit_edge136.us, %.loopexit115.us
  %i.ku = zext i32 %.pre.pre to i64
  %i.kv = getelementptr inbounds nuw [120 x i8], ptr %i.bi, i64 %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.eb
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !85
  call void %i.kx(ptr noundef %.0177.i144.us, i64 noundef %i.dm, ptr noundef nonnull %i.b, ptr noundef %.071.us) #5, !inline_history !0
  %.not197.i.us = icmp eq i32 %i.dh, 0
  br i1 %.not197.i.us, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %check_intra_mode.exit.us
  %i.ky = zext i32 %i.df to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ky
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !85
  %i.lb = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.lc = load ptr, ptr %i.bm, align 8, !tbaa !86
  %.idx = shl nsw i64 %indvars.iv253, 6
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 %.idx
  call void %i.la(ptr noundef %.0177.i144.us, i64 noundef %i.lb, ptr noundef %i.ld, i32 noundef %i.dh) #5, !inline_history !0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %check_intra_mode.exit.us
  %indvars.iv.next252 = add nsw i64 %indvars.iv251, %i.bt ; 2 uses
  %i.le = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.bo
  %i.lf = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.bo
  %indvars.iv.next254 = add nsw i64 %indvars.iv253, %i.bw ; 2 uses
  %i.lg = icmp slt i64 %indvars.iv.next252, %i.bv
  br i1 %i.lg, label %bb.b, label %._crit_edge151.us, !llvm.loop !1

.preheader106.us:                                 ; preds = %bb.z
  %i.lh = icmp sgt i32 %i.hc, 0
  br i1 %i.lh, label %.lr.ph135.us.preheader, label %._crit_edge136.us

.lr.ph135.us.preheader:                           ; preds = %.preheader106.us
  %i.li = zext nneg i32 %i.hc to i64              ; 5 uses
  %min.iters.check374 = icmp ugt i32 %i.hc, 7
  %ident.check.not = icmp eq i64 %i.hf, 1
  %or.cond778 = select i1 %min.iters.check374, i1 %ident.check.not, i1 false
  br i1 %or.cond778, label %vector.memcheck, label %.lr.ph135.us.preheader799

vector.memcheck:                                  ; preds = %.lr.ph135.us.preheader
  %i.lj = shl nuw nsw i64 %i.li, 1
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.lj
  %scevgep371 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep372 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep373 = getelementptr i8, ptr %scevgep372, i64 %i.li
  %bound0 = icmp ult ptr %i.b, %scevgep373
  %bound1 = icmp ult ptr %scevgep371, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph135.us.preheader799, label %vector.ph375

vector.ph375:                                     ; preds = %vector.memcheck
  %n.vec376 = and i64 %i.li, 2147483640           ; 3 uses
  br label %vector.body377

vector.body377:                                   ; preds = %vector.body377, %vector.ph375
  %index378 = phi i64 [ 0, %vector.ph375 ], [ %index.next379, %vector.body377 ] ; 10 uses
  %i.lk = getelementptr inbounds i8, ptr %i.he, i64 %index378
  %i.ll = getelementptr i8, ptr %i.he, i64 %index378
  %i.lm = getelementptr i8, ptr %i.he, i64 %index378
  %i.ln = getelementptr i8, ptr %i.he, i64 %index378
  %i.lo = getelementptr i8, ptr %i.he, i64 %index378
  %i.lp = getelementptr i8, ptr %i.he, i64 %index378
  %i.lq = getelementptr i8, ptr %i.he, i64 %index378
  %i.lr = getelementptr i8, ptr %i.he, i64 %index378
  %i.ls = getelementptr inbounds i8, ptr %i.lk, i64 -2
  %i.lt = getelementptr i8, ptr %i.ll, i64 -1
  %i.lu = getelementptr i8, ptr %i.ln, i64 1
  %i.lv = getelementptr i8, ptr %i.lo, i64 2
  %i.lw = getelementptr i8, ptr %i.lp, i64 3
  %i.lx = getelementptr i8, ptr %i.lq, i64 4
  %i.ly = getelementptr i8, ptr %i.lr, i64 5
  %i.lz = load i16, ptr %i.ls, align 2, !tbaa !40, !alias.scope !231
  %i.ma = load i16, ptr %i.lt, align 2, !tbaa !40, !alias.scope !231
  %i.mb = load i16, ptr %i.lm, align 2, !tbaa !40, !alias.scope !231
  %i.mc = load i16, ptr %i.lu, align 2, !tbaa !40, !alias.scope !231
  %i.md = load i16, ptr %i.lv, align 2, !tbaa !40, !alias.scope !231
  %i.me = load i16, ptr %i.lw, align 2, !tbaa !40, !alias.scope !231
  %i.mf = load i16, ptr %i.lx, align 2, !tbaa !40, !alias.scope !231
  %i.mg = load i16, ptr %i.ly, align 2, !tbaa !40, !alias.scope !231
  %i.mh = insertelement <8 x i16> poison, i16 %i.lz, i64 0
  %i.mi = insertelement <8 x i16> %i.mh, i16 %i.ma, i64 1
  %i.mj = insertelement <8 x i16> %i.mi, i16 %i.mb, i64 2
  %i.mk = insertelement <8 x i16> %i.mj, i16 %i.mc, i64 3
  %i.ml = insertelement <8 x i16> %i.mk, i16 %i.md, i64 4
  %i.mm = insertelement <8 x i16> %i.ml, i16 %i.me, i64 5
  %i.mn = insertelement <8 x i16> %i.mm, i16 %i.mf, i64 6
  %i.mo = insertelement <8 x i16> %i.mn, i16 %i.mg, i64 7
  %i.mp = shl nuw nsw i64 %index378, 1
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mp
  store <8 x i16> %i.mo, ptr %i.mq, align 16, !tbaa !40, !alias.scope !232, !noalias !231
  %index.next379 = add nuw i64 %index378, 8       ; 2 uses
  %i.mr = icmp eq i64 %index.next379, %n.vec376
  br i1 %i.mr, label %middle.block380, label %vector.body377, !llvm.loop !178

middle.block380:                                  ; preds = %vector.body377
  %cmp.n381 = icmp eq i64 %n.vec376, %i.li
  br i1 %cmp.n381, label %._crit_edge136.us, label %.lr.ph135.us.preheader799

.lr.ph135.us.preheader799:                        ; preds = %vector.memcheck, %.lr.ph135.us.preheader, %middle.block380
  %indvars.iv245.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph135.us.preheader ], [ %n.vec376, %middle.block380 ]
  br label %.lr.ph135.us

.preheader107.us:                                 ; preds = %bb.z
  %i.ms = icmp sgt i32 %i.gu, 0
  br i1 %i.ms, label %.lr.ph133.us.preheader, label %check_intra_mode.exit.us

.lr.ph133.us.preheader:                           ; preds = %.preheader107.us
  %wide.trip.count243 = zext nneg i32 %i.gu to i64 ; 5 uses
  %min.iters.check394 = icmp ugt i32 %i.gu, 7
  %ident.check384.not = icmp eq i64 %i.hf, 1
  %or.cond779 = select i1 %min.iters.check394, i1 %ident.check384.not, i1 false
  br i1 %or.cond779, label %vector.memcheck385, label %.lr.ph133.us.preheader800

vector.memcheck385:                               ; preds = %.lr.ph133.us.preheader
  %i.mt = shl nuw nsw i64 %wide.trip.count243, 1
  %scevgep386 = getelementptr i8, ptr %i.b, i64 %i.mt
  %scevgep387 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep388 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep389 = getelementptr i8, ptr %scevgep388, i64 %wide.trip.count243
  %bound0390 = icmp ult ptr %i.b, %scevgep389
  %bound1391 = icmp ult ptr %scevgep387, %scevgep386
  %found.conflict392 = and i1 %bound0390, %bound1391
  br i1 %found.conflict392, label %.lr.ph133.us.preheader800, label %vector.ph395

vector.ph395:                                     ; preds = %vector.memcheck385
  %n.vec396 = and i64 %wide.trip.count243, 2147483640 ; 3 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next399, %vector.body397 ] ; 10 uses
  %i.mu = getelementptr inbounds i8, ptr %i.he, i64 %index398
  %i.mv = getelementptr i8, ptr %i.he, i64 %index398
  %i.mw = getelementptr i8, ptr %i.he, i64 %index398
  %i.mx = getelementptr i8, ptr %i.he, i64 %index398
  %i.my = getelementptr i8, ptr %i.he, i64 %index398
  %i.mz = getelementptr i8, ptr %i.he, i64 %index398
  %i.na = getelementptr i8, ptr %i.he, i64 %index398
  %i.nb = getelementptr i8, ptr %i.he, i64 %index398
  %i.nc = getelementptr inbounds i8, ptr %i.mu, i64 -2
  %i.nd = getelementptr i8, ptr %i.mv, i64 -1
  %i.ne = getelementptr i8, ptr %i.mx, i64 1
  %i.nf = getelementptr i8, ptr %i.my, i64 2
  %i.ng = getelementptr i8, ptr %i.mz, i64 3
  %i.nh = getelementptr i8, ptr %i.na, i64 4
  %i.ni = getelementptr i8, ptr %i.nb, i64 5
  %i.nj = load i16, ptr %i.nc, align 2, !tbaa !40, !alias.scope !233
  %i.nk = load i16, ptr %i.nd, align 2, !tbaa !40, !alias.scope !233
  %i.nl = load i16, ptr %i.mw, align 2, !tbaa !40, !alias.scope !233
  %i.nm = load i16, ptr %i.ne, align 2, !tbaa !40, !alias.scope !233
  %i.nn = load i16, ptr %i.nf, align 2, !tbaa !40, !alias.scope !233
  %i.no = load i16, ptr %i.ng, align 2, !tbaa !40, !alias.scope !233
  %i.np = load i16, ptr %i.nh, align 2, !tbaa !40, !alias.scope !233
  %i.nq = load i16, ptr %i.ni, align 2, !tbaa !40, !alias.scope !233
  %i.nr = insertelement <8 x i16> poison, i16 %i.nj, i64 0
  %i.ns = insertelement <8 x i16> %i.nr, i16 %i.nk, i64 1
  %i.nt = insertelement <8 x i16> %i.ns, i16 %i.nl, i64 2
  %i.nu = insertelement <8 x i16> %i.nt, i16 %i.nm, i64 3
  %i.nv = insertelement <8 x i16> %i.nu, i16 %i.nn, i64 4
  %i.nw = insertelement <8 x i16> %i.nv, i16 %i.no, i64 5
  %i.nx = insertelement <8 x i16> %i.nw, i16 %i.np, i64 6
  %i.ny = insertelement <8 x i16> %i.nx, i16 %i.nq, i64 7
  %i.nz = shl nuw nsw i64 %index398, 1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nz
  store <8 x i16> %i.ny, ptr %i.oa, align 16, !tbaa !40, !alias.scope !234, !noalias !233
  %index.next399 = add nuw i64 %index398, 8       ; 2 uses
  %i.ob = icmp eq i64 %index.next399, %n.vec396
  br i1 %i.ob, label %middle.block400, label %vector.body397, !llvm.loop !182

middle.block400:                                  ; preds = %vector.body397
  %cmp.n401 = icmp eq i64 %n.vec396, %wide.trip.count243
  br i1 %cmp.n401, label %check_intra_mode.exit.us, label %.lr.ph133.us.preheader800

.lr.ph133.us.preheader800:                        ; preds = %vector.memcheck385, %.lr.ph133.us.preheader, %middle.block400
  %indvars.iv240.ph = phi i64 [ 0, %vector.memcheck385 ], [ 0, %.lr.ph133.us.preheader ], [ %n.vec396, %middle.block400 ]
  br label %.lr.ph133.us

.preheader110.us:                                 ; preds = %bb.y
  %i.oc = icmp sgt i32 %i.hc, 0
  br i1 %i.oc, label %.lr.ph128.us.preheader, label %._crit_edge.us

.lr.ph128.us.preheader:                           ; preds = %.preheader110.us
  %i.od = zext nneg i32 %i.hc to i64              ; 6 uses
  %min.iters.check444 = icmp ult i32 %i.hc, 32
  br i1 %min.iters.check444, label %.lr.ph128.us.preheader804, label %vector.scevcheck430

vector.scevcheck430:                              ; preds = %.lr.ph128.us.preheader
  %ident.check431 = icmp ne i64 %i.hf, 1
  %i.oe = add nsw i64 %i.od, -1                   ; 2 uses
  %i.of = shl i32 8, %.pre.pre
  %i.og = add i32 %i.of, -2
  %i.oh = trunc nsw i64 %i.oe to i32
  %mul.result = shl i32 %i.oh, 1
  %14 = icmp ugt i32 %mul.result, %i.og
  %i.oi = icmp ugt i64 %i.oe, 4294967295
  %i.oj = or i1 %14, %i.oi
  %i.ok = or i1 %ident.check431, %i.oj
  br i1 %i.ok, label %.lr.ph128.us.preheader804, label %vector.memcheck432

vector.memcheck432:                               ; preds = %vector.scevcheck430
  %scevgep433 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep434 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep435 = getelementptr i8, ptr %scevgep434, i64 %i.od
  %i.ol = shl i32 8, %.pre.pre
  %i.om = add i32 %i.ol, -8
  %15 = zext i32 %i.om to i64                     ; 2 uses
  %i.on = shl nuw nsw i64 %i.od, 1
  %i.oo = sub nsw i64 %15, %i.on
  %scevgep437 = getelementptr i8, ptr %scevgep436, i64 %i.oo
  %scevgep439 = getelementptr i8, ptr %scevgep438, i64 %15
  %bound0440 = icmp ult ptr %scevgep433, %scevgep439
  %bound1441 = icmp ult ptr %scevgep437, %scevgep435
  %found.conflict442 = and i1 %bound0440, %bound1441
  br i1 %found.conflict442, label %.lr.ph128.us.preheader804, label %vector.ph445

vector.ph445:                                     ; preds = %vector.memcheck432
  %n.vec446 = and i64 %i.od, 2147483640           ; 3 uses
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next449, %vector.body447 ] ; 10 uses
  %i.op = getelementptr inbounds i8, ptr %i.he, i64 %index448
  %i.oq = getelementptr i8, ptr %i.he, i64 %index448
  %i.or = getelementptr i8, ptr %i.he, i64 %index448
  %i.os = getelementptr i8, ptr %i.he, i64 %index448
  %i.ot = getelementptr i8, ptr %i.he, i64 %index448
  %i.ou = getelementptr i8, ptr %i.he, i64 %index448
  %i.ov = getelementptr i8, ptr %i.he, i64 %index448
  %i.ow = getelementptr i8, ptr %i.he, i64 %index448
  %i.ox = getelementptr inbounds i8, ptr %i.op, i64 -2
  %i.oy = getelementptr i8, ptr %i.oq, i64 -1
  %i.oz = getelementptr i8, ptr %i.os, i64 1
  %i.pa = getelementptr i8, ptr %i.ot, i64 2
  %i.pb = getelementptr i8, ptr %i.ou, i64 3
  %i.pc = getelementptr i8, ptr %i.ov, i64 4
  %i.pd = getelementptr i8, ptr %i.ow, i64 5
  %i.pe = load i16, ptr %i.ox, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pf = load i16, ptr %i.oy, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pg = load i16, ptr %i.or, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.ph = load i16, ptr %i.oz, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pi = load i16, ptr %i.pa, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pj = load i16, ptr %i.pb, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pk = load i16, ptr %i.pc, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pl = load i16, ptr %i.pd, align 2, !tbaa !40, !alias.scope !235, !noalias !236
  %i.pm = insertelement <8 x i16> poison, i16 %i.pe, i64 0
  %i.pn = insertelement <8 x i16> %i.pm, i16 %i.pf, i64 1
  %i.po = insertelement <8 x i16> %i.pn, i16 %i.pg, i64 2
  %i.pp = insertelement <8 x i16> %i.po, i16 %i.ph, i64 3
  %i.pq = insertelement <8 x i16> %i.pp, i16 %i.pi, i64 4
  %i.pr = insertelement <8 x i16> %i.pq, i16 %i.pj, i64 5
  %i.ps = insertelement <8 x i16> %i.pr, i16 %i.pk, i64 6
  %i.pt = insertelement <8 x i16> %i.ps, i16 %i.pl, i64 7
  %i.pu = trunc nuw nsw i64 %index448 to i32
  %i.pv = xor i32 %i.pu, -1
  %i.pw = add i32 %i.gu, %i.pv
  %i.px = shl nuw nsw i32 %i.pw, 1
  %16 = zext nneg i32 %i.px to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.b, i64 %16
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 -14
  %reverse = shufflevector <8 x i16> %i.pt, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.pz, align 2, !tbaa !40, !alias.scope !236
  %index.next449 = add nuw i64 %index448, 8       ; 2 uses
  %i.qa = icmp eq i64 %index.next449, %n.vec446
  br i1 %i.qa, label %middle.block450, label %vector.body447, !llvm.loop !186

middle.block450:                                  ; preds = %vector.body447
  %cmp.n451 = icmp eq i64 %n.vec446, %i.od
  br i1 %cmp.n451, label %._crit_edge.us, label %.lr.ph128.us.preheader804

.lr.ph128.us.preheader804:                        ; preds = %vector.memcheck432, %vector.scevcheck430, %.lr.ph128.us.preheader, %middle.block450
  %indvars.iv234.ph = phi i64 [ 0, %vector.memcheck432 ], [ 0, %vector.scevcheck430 ], [ 0, %.lr.ph128.us.preheader ], [ %n.vec446, %middle.block450 ]
  br label %.lr.ph128.us

.preheader111.us:                                 ; preds = %bb.y
  %i.qb = icmp sgt i32 %i.gu, 0
  br i1 %i.qb, label %.lr.ph126.us.preheader, label %check_intra_mode.exit.us

.lr.ph126.us.preheader:                           ; preds = %.preheader111.us
  %wide.trip.count232 = zext nneg i32 %i.gu to i64 ; 6 uses
  %min.iters.check470 = icmp ult i32 %i.gu, 32
  br i1 %min.iters.check470, label %.lr.ph126.us.preheader805, label %.lr.ph126.us.preheader.a

.lr.ph126.us.preheader.a:                         ; preds = %.lr.ph126.us.preheader
  %ident.check454 = icmp ne i64 %i.hf, 1
  %17 = add nsw i64 %wide.trip.count232, -1       ; 2 uses
  %18 = shl i32 8, %.pre.pre
  %19 = add i32 %18, -2
  %20 = trunc nsw i64 %17 to i32
  %mul.result456 = shl i32 %20, 1
  %21 = icmp ugt i32 %mul.result456, %19
  %min.iters.check464 = icmp ugt i64 %17, 4294967295
  %22 = or i1 %21, %min.iters.check464
  %23 = or i1 %ident.check454, %22
  br i1 %23, label %.lr.ph126.us.preheader805, label %vector.memcheck455

vector.memcheck455:                               ; preds = %.lr.ph126.us.preheader.a
  %scevgep459 = getelementptr i8, ptr %i.he, i64 -2
  %scevgep456 = getelementptr i8, ptr %i.he, i64 -1
  %scevgep457 = getelementptr i8, ptr %scevgep456, i64 %wide.trip.count232
  %24 = shl i32 8, %.pre.pre
  %25 = add i32 %24, -8
  %26 = zext i32 %25 to i64                       ; 2 uses
  %27 = shl nuw nsw i64 %wide.trip.count232, 1
  %28 = sub nsw i64 %26, %27
  %scevgep458 = getelementptr i8, ptr %scevgep436.a, i64 %28
  %scevgep459.a = getelementptr i8, ptr %scevgep438.a, i64 %26
  %bound0460 = icmp ult ptr %scevgep459, %scevgep459.a
  %bound1461 = icmp ult ptr %scevgep458, %scevgep457
  %found.conflict462 = and i1 %bound0460, %bound1461
  br i1 %found.conflict462, label %.lr.ph126.us.preheader805, label %vector.ph465

vector.ph465:                                     ; preds = %vector.memcheck455
  %n.vec466 = and i64 %wide.trip.count232, 2147483640 ; 3 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next470, %vector.body467 ] ; 10 uses
  %i.qc = getelementptr inbounds i8, ptr %i.he, i64 %index468
  %i.qd = getelementptr i8, ptr %i.he, i64 %index468
  %i.qe = getelementptr i8, ptr %i.he, i64 %index468
  %i.qf = getelementptr i8, ptr %i.he, i64 %index468
  %i.qg = getelementptr i8, ptr %i.he, i64 %index468
  %i.qh = getelementptr i8, ptr %i.he, i64 %index468
  %i.qi = getelementptr i8, ptr %i.he, i64 %index468
  %i.qj = getelementptr i8, ptr %i.he, i64 %index468
  %i.qk = getelementptr inbounds i8, ptr %i.qc, i64 -2
  %i.ql = getelementptr i8, ptr %i.qd, i64 -1
  %i.qm = getelementptr i8, ptr %i.qf, i64 1
  %i.qn = getelementptr i8, ptr %i.qg, i64 2
  %i.qo = getelementptr i8, ptr %i.qh, i64 3
  %i.qp = getelementptr i8, ptr %i.qi, i64 4
  %i.qq = getelementptr i8, ptr %i.qj, i64 5
  %i.qr = load i16, ptr %i.qk, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qs = load i16, ptr %i.ql, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qt = load i16, ptr %i.qe, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qu = load i16, ptr %i.qm, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qv = load i16, ptr %i.qn, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qw = load i16, ptr %i.qo, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qx = load i16, ptr %i.qp, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qy = load i16, ptr %i.qq, align 2, !tbaa !40, !alias.scope !237, !noalias !238
  %i.qz = insertelement <8 x i16> poison, i16 %i.qr, i64 0
  %i.ra = insertelement <8 x i16> %i.qz, i16 %i.qs, i64 1
  %i.rb = insertelement <8 x i16> %i.ra, i16 %i.qt, i64 2
  %i.rc = insertelement <8 x i16> %i.rb, i16 %i.qu, i64 3
  %i.rd = insertelement <8 x i16> %i.rc, i16 %i.qv, i64 4
  %i.re = insertelement <8 x i16> %i.rd, i16 %i.qw, i64 5
  %i.rf = insertelement <8 x i16> %i.re, i16 %i.qx, i64 6
  %i.rg = insertelement <8 x i16> %i.rf, i16 %i.qy, i64 7
  %29 = trunc nuw nsw i64 %index468 to i32
  %30 = xor i32 %29, -1
  %31 = add nsw i32 %i.gu, %30
  %32 = shl nuw nsw i32 %31, 1
  %33 = zext nneg i32 %32 to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.b, i64 %33
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -14
  %reverse469 = shufflevector <8 x i16> %i.rg, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse469, ptr %i.ri, align 2, !tbaa !40, !alias.scope !238
  %index.next470 = add nuw i64 %index468, 8       ; 2 uses
  %i.rj = icmp eq i64 %index.next470, %n.vec466
  br i1 %i.rj, label %middle.block471, label %vector.body467, !llvm.loop !190

middle.block471:                                  ; preds = %vector.body467
  %cmp.n472 = icmp eq i64 %n.vec466, %wide.trip.count232
  br i1 %cmp.n472, label %check_intra_mode.exit.us, label %.lr.ph126.us.preheader805

.lr.ph126.us.preheader805:                        ; preds = %vector.memcheck455, %.lr.ph126.us.preheader.a, %.lr.ph126.us.preheader, %middle.block471
  %indvars.iv229.ph = phi i64 [ 0, %vector.memcheck455 ], [ 0, %.lr.ph126.us.preheader.a ], [ 0, %.lr.ph126.us.preheader ], [ %n.vec466, %middle.block471 ]
  br label %.lr.ph126.us

.preheader113.us:                                 ; preds = %bb.w
  %i.rk = icmp sgt i32 %i.gu, 0
  br i1 %i.rk, label %iter.check487, label %check_intra_mode.exit.us

.critedge.i.preheader.us:                         ; preds = %bb.g
  %i.rl = icmp sgt i32 %i.ee, 0
  br i1 %i.rl, label %iter.check541, label %.loopexit116.us

iter.check541:                                    ; preds = %.critedge.i.preheader.us
  %i.rm = add nsw i32 %i.dv, -8
  %i.rn = shl i32 128, %i.rm
  %i.ro = trunc i32 %i.rn to i16
  %i.rp = add i16 %i.ro, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 5 uses
  %min.iters.check530 = icmp ult i32 %i.ee, 16
  br i1 %min.iters.check530, label %vec.epilog.ph545, label %vector.ph531

vector.ph531:                                     ; preds = %iter.check541
  %i.rq = and i64 %wide.trip.count, 12
  %n.vec532 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %broadcast.splatinsert533 = insertelement <8 x i16> poison, i16 %i.rp, i64 0
  %broadcast.splat534 = shufflevector <8 x i16> %broadcast.splatinsert533, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body535

vector.body535:                                   ; preds = %vector.body535, %vector.ph531
  %index536 = phi i64 [ 0, %vector.ph531 ], [ %index.next537, %vector.body535 ] ; 2 uses
  %i.rr = shl nuw nsw i64 %index536, 1
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rr ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  store <8 x i16> %broadcast.splat534, ptr %i.rs, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat534, ptr %i.rt, align 16, !tbaa !40
  %index.next537 = add nuw i64 %index536, 16      ; 2 uses
  %i.ru = icmp eq i64 %index.next537, %n.vec532
  br i1 %i.ru, label %middle.block538, label %vector.body535, !llvm.loop !191

middle.block538:                                  ; preds = %vector.body535
  %cmp.n539 = icmp eq i64 %n.vec532, %wide.trip.count
  br i1 %cmp.n539, label %.loopexit116.us, label %vec.epilog.iter.check543

vec.epilog.iter.check543:                         ; preds = %middle.block538
  %min.epilog.iters.check544 = icmp eq i64 %i.rq, 0
  br i1 %min.epilog.iters.check544, label %.critedge.i.us, label %vec.epilog.ph545, !prof !230

vec.epilog.ph545:                                 ; preds = %iter.check541, %vec.epilog.iter.check543
  %vec.epilog.resume.val540 = phi i64 [ %n.vec532, %vec.epilog.iter.check543 ], [ 0, %iter.check541 ]
  %broadcast.splatinsert547 = insertelement <4 x i16> poison, i16 %i.rp, i64 0
  %broadcast.splat548 = shufflevector <4 x i16> %broadcast.splatinsert547, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body549

vec.epilog.vector.body549:                        ; preds = %vec.epilog.vector.body549, %vec.epilog.ph545
  %index550 = phi i64 [ %vec.epilog.resume.val540, %vec.epilog.ph545 ], [ %index.next551, %vec.epilog.vector.body549 ] ; 2 uses
  %i.rv = shl nuw nsw i64 %index550, 1
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.rv
  store <4 x i16> %broadcast.splat548, ptr %i.rw, align 8, !tbaa !40
  %index.next551 = add nuw i64 %index550, 4       ; 2 uses
  %i.rx = icmp eq i64 %index.next551, %wide.trip.count
  br i1 %i.rx, label %.loopexit116.us, label %vec.epilog.vector.body549, !llvm.loop !192

iter.check487:                                    ; preds = %.preheader113.us
  %i.ry = add nsw i32 %i.dv, -8
  %i.rz = shl i32 128, %i.ry
  %i.sa = trunc i32 %i.rz to i16
  %i.sb = or disjoint i16 %i.sa, 1                ; 3 uses
  %wide.trip.count227 = zext nneg i32 %i.gu to i64 ; 5 uses
  %min.iters.check476 = icmp ult i32 %i.gu, 16
  br i1 %min.iters.check476, label %vec.epilog.ph491, label %vector.ph477

vector.ph477:                                     ; preds = %iter.check487
  %i.sc = and i64 %wide.trip.count227, 12
  %n.vec478 = and i64 %wide.trip.count227, 2147483632 ; 4 uses
  %broadcast.splatinsert479 = insertelement <8 x i16> poison, i16 %i.sb, i64 0
  %broadcast.splat480 = shufflevector <8 x i16> %broadcast.splatinsert479, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body481

vector.body481:                                   ; preds = %vector.body481, %vector.ph477
  %index482 = phi i64 [ 0, %vector.ph477 ], [ %index.next483, %vector.body481 ] ; 2 uses
  %i.sd = shl nuw nsw i64 %index482, 1
  %i.se = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sd ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store <8 x i16> %broadcast.splat480, ptr %i.se, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat480, ptr %i.sf, align 16, !tbaa !40
  %index.next483 = add nuw i64 %index482, 16      ; 2 uses
  %i.sg = icmp eq i64 %index.next483, %n.vec478
  br i1 %i.sg, label %middle.block484, label %vector.body481, !llvm.loop !193

middle.block484:                                  ; preds = %vector.body481
  %cmp.n485 = icmp eq i64 %n.vec478, %wide.trip.count227
  br i1 %cmp.n485, label %check_intra_mode.exit.us, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block484
  %min.epilog.iters.check490 = icmp eq i64 %i.sc, 0
  br i1 %min.epilog.iters.check490, label %vec.epilog.scalar.ph488, label %vec.epilog.ph491, !prof !230

vec.epilog.ph491:                                 ; preds = %iter.check487, %vec.epilog.iter.check489
  %vec.epilog.resume.val486 = phi i64 [ %n.vec478, %vec.epilog.iter.check489 ], [ 0, %iter.check487 ]
  %broadcast.splatinsert493 = insertelement <4 x i16> poison, i16 %i.sb, i64 0
  %broadcast.splat494 = shufflevector <4 x i16> %broadcast.splatinsert493, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph491
  %index496 = phi i64 [ %vec.epilog.resume.val486, %vec.epilog.ph491 ], [ %index.next497, %vec.epilog.vector.body495 ] ; 2 uses
  %i.sh = shl nuw nsw i64 %index496, 1
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.sh
  store <4 x i16> %broadcast.splat494, ptr %i.si, align 8, !tbaa !40
  %index.next497 = add nuw i64 %index496, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next497, %wide.trip.count227
  br i1 %i.sj, label %check_intra_mode.exit.us, label %vec.epilog.vector.body495, !llvm.loop !194

._crit_edge151.us:                                ; preds = %bb.ab
  %i.sk = load ptr, ptr %i.as, align 8, !tbaa !76 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !77
  %i.sn = mul nsw i32 %i.sm, %i.bp
  %i.so = sext i32 %i.sn to i64
  %i.sp = getelementptr inbounds i8, ptr %.0178.i155.us, i64 %i.so
  %i.sq = load i64, ptr %i.ba, align 16, !tbaa !80
  %i.sr = mul nsw i64 %i.sq, %i.bq
  %i.ss = getelementptr inbounds i8, ptr %.0179.i154.us, i64 %i.sr
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, %i.bt ; 2 uses
  %i.st = icmp slt i64 %indvars.iv.next259, %i.bx
  br i1 %i.st, label %.preheader118.us, label %._crit_edge156.loopexit214, !llvm.loop !2

._crit_edge156.loopexit214:                       ; preds = %._crit_edge151.us
  %.pre306 = load i32, ptr %i.am, align 4, !tbaa !69
  br label %._crit_edge156

._crit_edge156:                                   ; preds = %.preheader118.lr.ph, %.._crit_edge156_crit_edge, %._crit_edge156.loopexit214
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge156_crit_edge ], [ %i.bd, %._crit_edge156.loopexit214 ], [ %i.bd, %.preheader118.lr.ph ]
  %i.su = phi ptr [ %i.at, %.._crit_edge156_crit_edge ], [ %i.sk, %._crit_edge156.loopexit214 ], [ %i.at, %.preheader118.lr.ph ]
  %i.sv = phi i32 [ %i.an, %.._crit_edge156_crit_edge ], [ %.pre306, %._crit_edge156.loopexit214 ], [ %i.an, %.preheader118.lr.ph ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.c, i64 3924 ; 2 uses
  %i.sx = load i8, ptr %i.sw, align 4, !tbaa !88
  %i.sy = zext i8 %i.sx to i32                    ; 2 uses
  %i.sz = lshr i32 %i.p, %i.sy
  %i.ta = lshr i32 %..i, %i.sy                    ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.c, i64 3925 ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !89
  %i.td = zext nneg i8 %i.tc to i32
  %i.te = lshr i32 %i.ah, %i.td                   ; 2 uses
  %.not201 = icmp eq i32 %i.te, 0
  %i.tf = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.tk = icmp sgt i32 %i.g, 0
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tm = add nsw i32 %i.sz, -1
  %i.tn = shl i32 %i.i, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.tp = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.tr = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.tt = sext i32 %i.ao to i64
  %i.tu = getelementptr inbounds [32 x i8], ptr %i.ts, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.tw = shl i32 8, %i.an
  %i.tx = sext i32 %i.tw to i64                   ; 2 uses
  %i.ty = shl i32 4, %i.an                        ; 2 uses
  %i.tz = sext i32 %i.ty to i64
  %.not202 = icmp eq i32 %i.ta, 0
  %or.cond350 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond350, label %intra_recon.exit.split, label %.preheader104.lr.ph.us.preheader

.preheader104.lr.ph.us.preheader:                 ; preds = %._crit_edge156
  %i.ua = shl i32 %i.sv, 1
  %i.ub = shl nuw i32 1, %i.ua
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep664 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep666 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep658 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep660 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader104.lr.ph.us

.preheader104.lr.ph.us:                           ; preds = %.preheader104.lr.ph.us.preheader, %..loopexit105_crit_edge.split.us.us
  %i.ue = phi ptr [ %i.su, %.preheader104.lr.ph.us.preheader ], [ %i.akm, %..loopexit105_crit_edge.split.us.us ]
  %i.uf = phi i1 [ true, %.preheader104.lr.ph.us.preheader ], [ false, %..loopexit105_crit_edge.split.us.us ]
  %indvars.iv303 = phi i64 [ 0, %.preheader104.lr.ph.us.preheader ], [ 1, %..loopexit105_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next304
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !70
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %indvars.iv.next304
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !70
  %i.uk = getelementptr inbounds i8, ptr %i.uj, i64 %2
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %indvars.iv303
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv303
  br label %.preheader104.us.us

.preheader104.us.us:                              ; preds = %._crit_edge189.us.us, %.preheader104.lr.ph.us
  %.1.i193.us.us = phi ptr [ %i.uk, %.preheader104.lr.ph.us ], [ %i.akr, %._crit_edge189.us.us ] ; 2 uses
  %.1180.i192.us.us = phi ptr [ %i.uh, %.preheader104.lr.ph.us ], [ %i.aku, %._crit_edge189.us.us ] ; 2 uses
  %.1183.i191.us.us = phi i32 [ 0, %.preheader104.lr.ph.us ], [ %i.akv, %._crit_edge189.us.us ] ; 5 uses
  %.2.i190.us.us = phi i64 [ 0, %.preheader104.lr.ph.us ], [ %indvars.iv.next301, %._crit_edge189.us.us ]
  %i.un = icmp sgt i32 %.1183.i191.us.us, 0
  %i.uo = or i1 %i.tk, %i.un                      ; 5 uses
  %i.up = zext i1 %i.uo to i64
  %i.uq = or i32 %.1183.i191.us.us, %.pre-phi
  %or.cond3.not.i47.us.us = icmp eq i32 %i.uq, 0
  %i.ur = icmp eq i32 %.1183.i191.us.us, 0        ; 2 uses
  %i.us = select i1 %i.uo, i32 1, i32 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bc, %.preheader104.us.us
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.bc ], [ %.2.i190.us.us, %.preheader104.us.us ] ; 3 uses
  %.0.i185.us.us = phi ptr [ %i.akk, %bb.bc ], [ %.1.i193.us.us, %.preheader104.us.us ] ; 3 uses
  %.0175.i182.us.us = phi ptr [ %i.akj, %bb.bc ], [ %.1180.i192.us.us, %.preheader104.us.us ] ; 5 uses
  %.1185.i179.us.us = phi i32 [ %i.aki, %bb.bc ], [ 0, %.preheader104.us.us ] ; 7 uses
  %i.ut = load i8, ptr %i.tf, align 1, !tbaa !90
  %i.uu = load i8, ptr %i.th, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.uu, 0
  %.pre307 = load i32, ptr %i.am, align 4, !tbaa !69 ; 10 uses
  br i1 %.not.i.us.us, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.uv = icmp ugt i32 %.pre307, 1
  %i.uw = load ptr, ptr %i.ul, align 8, !tbaa !70
  %i.ux = getelementptr inbounds i8, ptr %i.uw, i64 %indvars.iv300 ; 2 uses
  br i1 %i.uv, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !40
  %i.uz = zext i8 %i.uy to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.va = load i16, ptr %i.ux, align 2, !tbaa !40
  %i.vb = zext i16 %i.va to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.vc = phi i32 [ 0, %bb.ac ], [ %i.vb, %bb.af ], [ %i.uz, %bb.ae ] ; 2 uses
  %i.vd = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 68
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !77
  %i.vg = sext i32 %i.vf to i64                   ; 2 uses
  %i.vh = load i64, ptr %i.tj, align 8, !tbaa !91 ; 3 uses
  %i.vi = load i8, ptr %i.sw, align 4, !tbaa !88  ; 2 uses
  %i.vj = zext nneg i8 %i.vi to i32
  %i.vk = load i8, ptr %i.tb, align 1, !tbaa !89
  %i.vl = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.vm = load i32, ptr %i.tl, align 16, !tbaa !81
  %i.vn = icmp ugt i32 %i.i, %i.vm
  %i.vo = icmp sgt i32 %.1185.i179.us.us, 0
  %i.vp = or i1 %i.vo, %i.vn                      ; 5 uses
  %i.vq = icmp slt i32 %.1185.i179.us.us, %i.tm   ; 3 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vl, i64 1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !82
  %i.vt = zext i8 %i.vs to i32                    ; 3 uses
  %i.vu = zext i8 %i.ut to i64
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.vu
  %i.vw = zext i1 %i.vp to i64
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %i.vv, i64 %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 %i.up
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !40  ; 3 uses
  %i.wa = zext i8 %i.vz to i64                    ; 2 uses
  %i.wb = shl nuw i64 1, %i.wa                    ; 4 uses
  %i.wc = and i64 %i.wb, 29954
  %.not.not.i6.us.us = icmp eq i64 %i.wc, 0
  br i1 %.not.not.i6.us.us, label %bb.ah, label %.loopexit.us.us

bb.ah:                                            ; preds = %bb.ag
  %i.wd = shl i32 4, %.pre307                     ; 8 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.vl, i64 3964
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !66
  %i.wg = sub i32 %i.wf, %i.i
  %.not.i18.us.us = icmp eq i8 %i.vi, 0
  %i.wh = zext i1 %.not.i18.us.us to i32
  %i.wi = shl i32 %i.wg, %i.wh
  %i.wj = sub i32 %i.wi, %.1185.i179.us.us        ; 2 uses
  %i.wk = shl i32 %i.wj, 2                        ; 6 uses
  %i.wl = icmp eq i32 %.pre307, 0                 ; 2 uses
  %i.wm = and i8 %i.vz, -5                        ; 2 uses
  %i.wn = icmp eq i8 %i.wm, 3                     ; 2 uses
  %or.cond.i19.us.us = select i1 %i.wn, i1 %i.vq, i1 false
  %spec.select.i20.us.us = select i1 %or.cond.i19.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.uo, label %bb.ai, label %.critedge.i24.preheader.us.us

.critedge.i24.preheader.us.us:                    ; preds = %bb.ah
  %i.wo = icmp sgt i32 %i.wd, 0
  br i1 %i.wo, label %iter.check764, label %.loopexit103.us.us

iter.check764:                                    ; preds = %.critedge.i24.preheader.us.us
  %i.wp = add nsw i32 %i.vt, -8
  %i.wq = shl i32 128, %i.wp
  %i.wr = trunc i32 %i.wq to i16
  %i.ws = add i16 %i.wr, -1                       ; 3 uses
  %wide.trip.count264 = zext nneg i32 %i.wd to i64 ; 5 uses
  %min.iters.check753 = icmp ult i32 %i.wd, 16
  br i1 %min.iters.check753, label %vec.epilog.ph768, label %vector.ph754

vector.ph754:                                     ; preds = %iter.check764
  %i.wt = and i64 %wide.trip.count264, 12
  %n.vec755 = and i64 %wide.trip.count264, 2147483632 ; 4 uses
  %broadcast.splatinsert756 = insertelement <8 x i16> poison, i16 %i.ws, i64 0
  %broadcast.splat757 = shufflevector <8 x i16> %broadcast.splatinsert756, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body758

vector.body758:                                   ; preds = %vector.body758, %vector.ph754
  %index759 = phi i64 [ 0, %vector.ph754 ], [ %index.next760, %vector.body758 ] ; 2 uses
  %i.wu = shl nuw nsw i64 %index759, 1
  %i.wv = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.wu ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store <8 x i16> %broadcast.splat757, ptr %i.wv, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat757, ptr %i.ww, align 16, !tbaa !40
  %index.next760 = add nuw i64 %index759, 16      ; 2 uses
  %i.wx = icmp eq i64 %index.next760, %n.vec755
  br i1 %i.wx, label %middle.block761, label %vector.body758, !llvm.loop !195

middle.block761:                                  ; preds = %vector.body758
  %cmp.n762 = icmp eq i64 %n.vec755, %wide.trip.count264
  br i1 %cmp.n762, label %.loopexit103.us.us, label %vec.epilog.iter.check766

vec.epilog.iter.check766:                         ; preds = %middle.block761
  %min.epilog.iters.check767 = icmp eq i64 %i.wt, 0
  br i1 %min.epilog.iters.check767, label %.critedge.i24.us.us, label %vec.epilog.ph768, !prof !230

vec.epilog.ph768:                                 ; preds = %iter.check764, %vec.epilog.iter.check766
  %vec.epilog.resume.val763 = phi i64 [ %n.vec755, %vec.epilog.iter.check766 ], [ 0, %iter.check764 ]
  %broadcast.splatinsert770 = insertelement <4 x i16> poison, i16 %i.ws, i64 0
  %broadcast.splat771 = shufflevector <4 x i16> %broadcast.splatinsert770, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body772

vec.epilog.vector.body772:                        ; preds = %vec.epilog.vector.body772, %vec.epilog.ph768
  %index773 = phi i64 [ %vec.epilog.resume.val763, %vec.epilog.ph768 ], [ %index.next774, %vec.epilog.vector.body772 ] ; 2 uses
  %i.wy = shl nuw nsw i64 %index773, 1
  %i.wz = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.wy
  store <4 x i16> %broadcast.splat771, ptr %i.wz, align 8, !tbaa !40
  %index.next774 = add nuw i64 %index773, 4       ; 2 uses
  %i.xa = icmp eq i64 %index.next774, %wide.trip.count264
  br i1 %i.xa, label %.loopexit103.us.us, label %vec.epilog.vector.body772, !llvm.loop !196

.critedge.i24.us.us:                              ; preds = %vec.epilog.iter.check766, %.critedge.i24.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge.i24.us.us ], [ %n.vec755, %vec.epilog.iter.check766 ] ; 2 uses
  %i.xb = shl nuw nsw i64 %indvars.iv261, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.tg, i64 %i.xb
  store i16 %i.ws, ptr %i.xc, align 2, !tbaa !40
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit103.us.us, label %.critedge.i24.us.us, !llvm.loop !197

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond3.not.i47.us.us, label %.thread82.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.xd = sub nsw i64 0, %i.vh
  %i.xe = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.xd ; 2 uses
  %i.xf = sub nsw i64 0, %i.vg
  %i.xg = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.xf ; 2 uses
  %i.xh = select i1 %i.ur, ptr %i.xg, ptr %i.xe   ; 2 uses
  br i1 %i.vp, label %bb.ak, label %.thread83.us.us

bb.ak:                                            ; preds = %bb.aj
  %i.xi = icmp eq i32 %.1185.i179.us.us, 0
  %or.cond7.i48.us.us = or i1 %i.ur, %i.xi
  %spec.select351 = select i1 %or.cond7.i48.us.us, ptr %i.xg, ptr %i.xe
  br label %.thread83.us.us

.thread82.us.us:                                  ; preds = %bb.ai
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vl, i64 19136
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %indvars.iv.next304
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !70
  %i.xm = lshr i32 8, %i.vj
  %i.xn = shl i32 %.1185.i179.us.us, 3
  %i.xo = mul i32 %i.tn, %i.xm
  %i.xp = add i32 %i.xo, %i.xn
  %i.xq = sext i32 %i.xp to i64
  %i.xr = getelementptr inbounds i8, ptr %i.xl, i64 %i.xq ; 2 uses
  br label %.thread83.us.us

.thread83.us.us:                                  ; preds = %bb.ak, %.thread82.us.us, %bb.aj
  %.0280.i22.ph.us.us = phi ptr [ %i.xr, %.thread82.us.us ], [ %i.xh, %bb.ak ], [ %i.xh, %bb.aj ] ; 10 uses
  %.0279.i23.ph.us.us = phi ptr [ %i.xr, %.thread82.us.us ], [ %spec.select351, %bb.ak ], [ undef, %bb.aj ] ; 6 uses
  %i.xs = and i64 %i.wb, 2189
  %.not289.not.i35.us.us = icmp ne i64 %i.xs, 0
  %i.xt = icmp eq ptr %.0280.i22.ph.us.us, %.0279.i23.ph.us.us
  %or.cond301.i36.us.us = select i1 %i.vp, i1 %i.xt, i1 false
  %or.cond308.i37.us.us = select i1 %.not289.not.i35.us.us, i1 true, i1 %or.cond301.i36.us.us
  br i1 %or.cond308.i37.us.us, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread83.us.us
  br i1 %i.wl, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not291.old.i42.us.us = icmp sgt i32 %i.wd, %i.wk
  br i1 %.not291.old.i42.us.us, label %bb.ao, label %.loopexit.us.us

bb.an:                                            ; preds = %bb.al
  %i.xu = icmp ne i8 %i.wm, 3
  %or.cond9.i43.us.us = select i1 %i.xu, i1 true, i1 %i.vq
  %i.xv = add nuw nsw i32 %spec.select.i20.us.us, %i.wd
  %.not291.i45.us.us = icmp sle i32 %i.xv, %i.wk
  %or.cond302.i46.not.us.us = select i1 %or.cond9.i43.us.us, i1 %.not291.i45.us.us, i1 false
  br i1 %or.cond302.i46.not.us.us, label %.loopexit.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread83.us.us
  %.not292.i38.us.us = icmp sgt i32 %i.wd, %i.wk
  br i1 %.not292.i38.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.xw = shl i32 8, %.pre307
  %i.xx = sext i32 %i.xw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tg, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xx, i1 false)
  br label %.loopexit103.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.xy = shl i32 %i.wj, 3                        ; 2 uses
  %i.xz = sext i32 %i.xy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tg, ptr align 1 %.0280.i22.ph.us.us, i64 %i.xz, i1 false)
  %i.ya = add i32 %i.xy, -2
  %i.yb = sext i32 %i.ya to i64
  %i.yc = getelementptr inbounds i8, ptr %i.tg, i64 %i.yb
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !40 ; 3 uses
  %i.ye = sub nsw i32 %i.wd, %i.wk                ; 3 uses
  %i.yf = icmp sgt i32 %i.ye, 0
  br i1 %i.yf, label %iter.check737, label %.loopexit103.us.us

iter.check737:                                    ; preds = %bb.aq
  %i.yg = sext i32 %i.wk to i64                   ; 3 uses
  %i.yh = zext nneg i32 %i.ye to i64              ; 5 uses
  %min.iters.check726 = icmp ult i32 %i.ye, 16
  br i1 %min.iters.check726, label %vec.epilog.ph741, label %vector.ph727

vector.ph727:                                     ; preds = %iter.check737
  %i.yi = and i64 %i.yh, 12
  %n.vec728 = and i64 %i.yh, 2147483632           ; 4 uses
  %broadcast.splatinsert729 = insertelement <8 x i16> poison, i16 %i.yd, i64 0
  %broadcast.splat730 = shufflevector <8 x i16> %broadcast.splatinsert729, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body731

vector.body731:                                   ; preds = %vector.body731, %vector.ph727
  %index732 = phi i64 [ 0, %vector.ph727 ], [ %index.next733, %vector.body731 ] ; 2 uses
  %i.yj = add nsw i64 %index732, %i.yg
  %i.yk = shl nsw i64 %i.yj, 1
  %i.yl = getelementptr inbounds i8, ptr %i.tg, i64 %i.yk ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  store <8 x i16> %broadcast.splat730, ptr %i.yl, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat730, ptr %i.ym, align 8, !tbaa !40
  %index.next733 = add nuw i64 %index732, 16      ; 2 uses
  %i.yn = icmp eq i64 %index.next733, %n.vec728
  br i1 %i.yn, label %middle.block734, label %vector.body731, !llvm.loop !198

middle.block734:                                  ; preds = %vector.body731
  %cmp.n735 = icmp eq i64 %n.vec728, %i.yh
  br i1 %cmp.n735, label %.loopexit103.us.us, label %vec.epilog.iter.check739

vec.epilog.iter.check739:                         ; preds = %middle.block734
  %min.epilog.iters.check740 = icmp eq i64 %i.yi, 0
  br i1 %min.epilog.iters.check740, label %.lr.ph159.us.us, label %vec.epilog.ph741, !prof !230

vec.epilog.ph741:                                 ; preds = %iter.check737, %vec.epilog.iter.check739
  %vec.epilog.resume.val736 = phi i64 [ %n.vec728, %vec.epilog.iter.check739 ], [ 0, %iter.check737 ]
  %broadcast.splatinsert743 = insertelement <4 x i16> poison, i16 %i.yd, i64 0
  %broadcast.splat744 = shufflevector <4 x i16> %broadcast.splatinsert743, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body745

vec.epilog.vector.body745:                        ; preds = %vec.epilog.vector.body745, %vec.epilog.ph741
  %index746 = phi i64 [ %vec.epilog.resume.val736, %vec.epilog.ph741 ], [ %index.next747, %vec.epilog.vector.body745 ] ; 2 uses
  %i.yo = add nsw i64 %index746, %i.yg
  %i.yp = shl nsw i64 %i.yo, 1
  %i.yq = getelementptr inbounds i8, ptr %i.tg, i64 %i.yp
  store <4 x i16> %broadcast.splat744, ptr %i.yq, align 8, !tbaa !40
  %index.next747 = add nuw i64 %index746, 4       ; 2 uses
  %i.yr = icmp eq i64 %index.next747, %i.yh
  br i1 %i.yr, label %.loopexit103.us.us, label %vec.epilog.vector.body745, !llvm.loop !199

.lr.ph159.us.us:                                  ; preds = %vec.epilog.iter.check739, %.lr.ph159.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph159.us.us ], [ %n.vec728, %vec.epilog.iter.check739 ] ; 2 uses
  %i.ys = add nsw i64 %indvars.iv266, %i.yg
  %i.yt = shl nsw i64 %i.ys, 1
  %i.yu = getelementptr inbounds i8, ptr %i.tg, i64 %i.yt
  store i16 %i.yd, ptr %i.yu, align 2, !tbaa !40
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.yv = icmp samesign ult i64 %indvars.iv.next267, %i.yh
  br i1 %i.yv, label %.lr.ph159.us.us, label %.loopexit103.us.us, !llvm.loop !200

.loopexit103.us.us:                               ; preds = %.critedge.i24.us.us, %vec.epilog.vector.body772, %.lr.ph159.us.us, %vec.epilog.vector.body745, %middle.block761, %middle.block734, %bb.aq, %.critedge.i24.preheader.us.us, %bb.ap
  %.0279.i2391.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0279.i23.ph.us.us, %bb.ap ], [ %.0279.i23.ph.us.us, %middle.block734 ], [ %.0279.i23.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body772 ], [ undef, %middle.block761 ], [ %.0279.i23.ph.us.us, %.lr.ph159.us.us ], [ %.0279.i23.ph.us.us, %vec.epilog.vector.body745 ], [ undef, %.critedge.i24.us.us ]
  %.0280.i2288.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0280.i22.ph.us.us, %bb.ap ], [ %.0280.i22.ph.us.us, %middle.block734 ], [ %.0280.i22.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body772 ], [ undef, %middle.block761 ], [ %.0280.i22.ph.us.us, %.lr.ph159.us.us ], [ %.0280.i22.ph.us.us, %vec.epilog.vector.body745 ], [ undef, %.critedge.i24.us.us ]
  %i.yw = and i64 %i.wb, 2189
  %.not293.not.i26.us.us = icmp eq i64 %i.yw, 0
  br i1 %.not293.not.i26.us.us, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit103.us.us
  %or.cond11.i34.us.us = and i1 %i.uo, %i.vp
  br i1 %or.cond11.i34.us.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.yx = add nsw i32 %i.vt, -8
  %i.yy = shl i32 128, %i.yx
  %i.yz = add nuw i32 %i.yy, %i.us
  %i.za = trunc i32 %i.yz to i16
  br label %.sink.split352

bb.at:                                            ; preds = %bb.ar
  %i.zb = getelementptr inbounds i8, ptr %.0279.i2391.us.us, i64 -2
  %i.zc = load i16, ptr %i.zb, align 2, !tbaa !40
  br label %.sink.split352

.sink.split352:                                   ; preds = %bb.as, %bb.at
  %.sink353 = phi i16 [ %i.zc, %bb.at ], [ %i.za, %bb.as ]
  store i16 %.sink353, ptr %i.to, align 2, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %.sink.split352, %.loopexit103.us.us
  %or.cond304.i28.us.us = and i1 %i.wl, %i.wn
  br i1 %or.cond304.i28.us.us, label %bb.av, label %.loopexit.us.us

bb.av:                                            ; preds = %bb.au
  %or.cond13.i29.us.us = select i1 %i.uo, i1 %i.vq, i1 false
  %i.zd = add nuw nsw i32 %spec.select.i20.us.us, %i.wd
  %.not295.i31.us.us = icmp sle i32 %i.zd, %i.wk
  %or.cond306.i32.not.us.us = select i1 %or.cond13.i29.us.us, i1 %.not295.i31.us.us, i1 false
  br i1 %or.cond306.i32.not.us.us, label %bb.aw, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.av
  %i.ze = load <8 x i16>, ptr %i.tp, align 2
  %i.zf = shufflevector <8 x i16> %i.ze, <8 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.zf, ptr %i.ud, align 8, !tbaa !40
  br label %.loopexit.us.us

bb.aw:                                            ; preds = %bb.av
  %i.zg = getelementptr inbounds nuw i8, ptr %.0280.i2288.us.us, i64 8
  %i.zh = load i64, ptr %i.zg, align 1
  store i64 %i.zh, ptr %i.tq, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.aw, %bb.au, %bb.an, %bb.am, %bb.ag
  %.0.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.an ], [ %i.tg, %bb.aw ], [ %i.tg, %bb.au ], [ %i.tg, %bb.ag ], [ %.0280.i22.ph.us.us, %bb.am ], [ %i.tg, %.loopexit.us.us.loopexit ]
  %i.zi = and i64 %i.wb, 30857
  %.not296.not.i7.us.us = icmp eq i64 %i.zi, 0
  br i1 %.not296.not.i7.us.us, label %bb.ax, label %check_intra_mode.exit49.us.us

bb.ax:                                            ; preds = %.loopexit.us.us
  %i.zj = shl i32 4, %.pre307                     ; 17 uses
  br i1 %i.vp, label %bb.ay, label %.preheader100.us.us

.preheader100.us.us:                              ; preds = %bb.ax
  %i.zk = icmp sgt i32 %i.zj, 0
  br i1 %i.zk, label %iter.check710, label %check_intra_mode.exit49.us.us

iter.check710:                                    ; preds = %.preheader100.us.us
  %i.zl = add nsw i32 %i.vt, -8
  %i.zm = shl i32 128, %i.zl
  %i.zn = trunc i32 %i.zm to i16
  %i.zo = or disjoint i16 %i.zn, 1                ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.zj to i64 ; 5 uses
  %min.iters.check699.a = icmp ult i32 %i.zj, 16
  br i1 %min.iters.check699.a, label %vec.epilog.ph714, label %vector.ph700.a

vector.ph700.a:                                   ; preds = %iter.check710
  %i.zp = and i64 %wide.trip.count276, 12
  %n.vec701.a = and i64 %wide.trip.count276, 2147483632 ; 4 uses
  %broadcast.splatinsert702 = insertelement <8 x i16> poison, i16 %i.zo, i64 0
  %broadcast.splat703 = shufflevector <8 x i16> %broadcast.splatinsert702, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body704

vector.body704:                                   ; preds = %vector.body704, %vector.ph700.a
  %index705 = phi i64 [ 0, %vector.ph700.a ], [ %index.next706, %vector.body704 ] ; 2 uses
  %i.zq = shl nuw nsw i64 %index705, 1
  %i.zr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zq ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  store <8 x i16> %broadcast.splat703, ptr %i.zr, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat703, ptr %i.zs, align 16, !tbaa !40
  %index.next706 = add nuw i64 %index705, 16      ; 2 uses
  %i.zt = icmp eq i64 %index.next706, %n.vec701.a
  br i1 %i.zt, label %middle.block707, label %vector.body704, !llvm.loop !201

middle.block707:                                  ; preds = %vector.body704
  %cmp.n708 = icmp eq i64 %n.vec701.a, %wide.trip.count276
  br i1 %cmp.n708, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check712

vec.epilog.iter.check712:                         ; preds = %middle.block707
  %min.epilog.iters.check713 = icmp eq i64 %i.zp, 0
  br i1 %min.epilog.iters.check713, label %vec.epilog.scalar.ph711, label %vec.epilog.ph714, !prof !230

vec.epilog.ph714:                                 ; preds = %iter.check710, %vec.epilog.iter.check712
  %vec.epilog.resume.val709 = phi i64 [ %n.vec701.a, %vec.epilog.iter.check712 ], [ 0, %iter.check710 ]
  %broadcast.splatinsert716 = insertelement <4 x i16> poison, i16 %i.zo, i64 0
  %broadcast.splat717 = shufflevector <4 x i16> %broadcast.splatinsert716, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body718

vec.epilog.vector.body718:                        ; preds = %vec.epilog.vector.body718, %vec.epilog.ph714
  %index719 = phi i64 [ %vec.epilog.resume.val709, %vec.epilog.ph714 ], [ %index.next720, %vec.epilog.vector.body718 ] ; 2 uses
  %i.zu = shl nuw nsw i64 %index719, 1
  %i.zv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zu
  store <4 x i16> %broadcast.splat717, ptr %i.zv, align 8, !tbaa !40
  %index.next720 = add nuw i64 %index719, 4       ; 2 uses
  %i.zw = icmp eq i64 %index.next720, %wide.trip.count276
  br i1 %i.zw, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body718, !llvm.loop !202

vec.epilog.scalar.ph711:                          ; preds = %vec.epilog.iter.check712, %vec.epilog.scalar.ph711
  %indvars.iv273 = phi i64 [ %indvars.iv.next274, %vec.epilog.scalar.ph711 ], [ %n.vec701.a, %vec.epilog.iter.check712 ] ; 2 uses
  %i.zx = shl nuw nsw i64 %indvars.iv273, 1
  %i.zy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zx
  store i16 %i.zo, ptr %i.zy, align 2, !tbaa !40
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %check_intra_mode.exit49.us.us, label %vec.epilog.scalar.ph711, !llvm.loop !203

bb.ay:                                            ; preds = %bb.ax
  %i.zz = getelementptr inbounds nuw i8, ptr %i.vl, i64 3960
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !67
  %i.aab = sub i32 %i.aaa, %i.g
  %.not297.i.us.us = icmp eq i8 %i.vk, 0
  %i.aac = zext i1 %.not297.i.us.us to i32
  %i.aad = shl i32 %i.aab, %i.aac
  %i.aae = sub i32 %i.aad, %.1183.i191.us.us      ; 2 uses
  %i.aaf = shl i32 %i.aae, 2                      ; 10 uses
  %i.aag = icmp eq i32 %.1185.i179.us.us, 0       ; 2 uses
  %i.aah = select i1 %i.aag, ptr %.0.i185.us.us, ptr %.0175.i182.us.us ; 48 uses
  %i.aai = select i1 %i.aag, i64 %i.vg, i64 %i.vh ; 12 uses
  %.not298.not.i9.us.us = icmp eq i8 %i.vz, 8
  %.not300.i14.us.us = icmp sgt i32 %i.zj, %i.aaf ; 2 uses
  br i1 %.not298.not.i9.us.us, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader97.us.us, label %.preheader98.us.us

.preheader98.us.us:                               ; preds = %bb.az
  %i.aaj = icmp sgt i32 %i.zj, 0
  br i1 %i.aaj, label %.lr.ph164.us.us.preheader, label %check_intra_mode.exit49.us.us

.lr.ph164.us.us.preheader:                        ; preds = %.preheader98.us.us
  %wide.trip.count281 = zext nneg i32 %i.zj to i64 ; 6 uses
  %min.iters.check699 = icmp ult i32 %i.zj, 32
  br i1 %min.iters.check699, label %.lr.ph164.us.us.preheader791, label %.lr.ph164.us.us.preheader.a

.lr.ph164.us.us.preheader.a:                      ; preds = %.lr.ph164.us.us.preheader
  %ident.check683 = icmp ne i64 %i.aai, 1
  %34 = add nsw i64 %wide.trip.count281, -1       ; 2 uses
  %35 = shl i32 8, %.pre307
  %36 = add i32 %35, -2
  %37 = trunc nsw i64 %34 to i32
  %mul.result685 = shl i32 %37, 1
  %38 = icmp ugt i32 %mul.result685, %36
  %min.iters.check687 = icmp ugt i64 %34, 4294967295
  %39 = or i1 %38, %min.iters.check687
  %40 = or i1 %ident.check683, %39
  br i1 %40, label %.lr.ph164.us.us.preheader791, label %vector.memcheck678

vector.memcheck678:                               ; preds = %.lr.ph164.us.us.preheader.a
  %scevgep688 = getelementptr i8, ptr %i.aah, i64 -2
  %scevgep679 = getelementptr i8, ptr %i.aah, i64 -1
  %scevgep680 = getelementptr i8, ptr %scevgep679, i64 %wide.trip.count281
  %41 = shl i32 8, %.pre307
  %42 = add i32 %41, -8
  %43 = zext i32 %42 to i64                       ; 2 uses
  %44 = shl nuw nsw i64 %wide.trip.count281, 1
  %45 = sub nsw i64 %43, %44
  %scevgep681 = getelementptr i8, ptr %scevgep658, i64 %45
  %scevgep682 = getelementptr i8, ptr %scevgep660, i64 %43
  %bound0683 = icmp ult ptr %scevgep688, %scevgep682
  %bound1684 = icmp ult ptr %scevgep681, %scevgep680
  %found.conflict685 = and i1 %bound0683, %bound1684
  br i1 %found.conflict685, label %.lr.ph164.us.us.preheader791, label %vector.ph688

vector.ph688:                                     ; preds = %vector.memcheck678
  %n.vec689 = and i64 %wide.trip.count281, 2147483640 ; 3 uses
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph688
  %index691 = phi i64 [ 0, %vector.ph688 ], [ %index.next693, %vector.body690 ] ; 10 uses
  %i.aak = getelementptr inbounds i8, ptr %i.aah, i64 %index691
  %i.aal = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aam = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aan = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aao = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aap = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aaq = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aar = getelementptr i8, ptr %i.aah, i64 %index691
  %i.aas = getelementptr inbounds i8, ptr %i.aak, i64 -2
  %i.aat = getelementptr i8, ptr %i.aal, i64 -1
  %i.aau = getelementptr i8, ptr %i.aan, i64 1
  %i.aav = getelementptr i8, ptr %i.aao, i64 2
  %i.aaw = getelementptr i8, ptr %i.aap, i64 3
  %i.aax = getelementptr i8, ptr %i.aaq, i64 4
  %i.aay = getelementptr i8, ptr %i.aar, i64 5
  %i.aaz = load i16, ptr %i.aas, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.aba = load i16, ptr %i.aat, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abb = load i16, ptr %i.aam, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abc = load i16, ptr %i.aau, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abd = load i16, ptr %i.aav, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abe = load i16, ptr %i.aaw, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abf = load i16, ptr %i.aax, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abg = load i16, ptr %i.aay, align 2, !tbaa !40, !alias.scope !239, !noalias !240
  %i.abh = insertelement <8 x i16> poison, i16 %i.aaz, i64 0
  %i.abi = insertelement <8 x i16> %i.abh, i16 %i.aba, i64 1
  %i.abj = insertelement <8 x i16> %i.abi, i16 %i.abb, i64 2
  %i.abk = insertelement <8 x i16> %i.abj, i16 %i.abc, i64 3
  %i.abl = insertelement <8 x i16> %i.abk, i16 %i.abd, i64 4
  %i.abm = insertelement <8 x i16> %i.abl, i16 %i.abe, i64 5
  %i.abn = insertelement <8 x i16> %i.abm, i16 %i.abf, i64 6
  %i.abo = insertelement <8 x i16> %i.abn, i16 %i.abg, i64 7
  %46 = trunc nuw nsw i64 %index691 to i32
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %i.zj, %47
  %49 = shl nuw nsw i32 %48, 1
  %50 = zext nneg i32 %49 to i64
  %i.abp = getelementptr inbounds nuw i8, ptr %i.b, i64 %50
  %i.abq = getelementptr inbounds i8, ptr %i.abp, i64 -14
  %reverse692 = shufflevector <8 x i16> %i.abo, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse692, ptr %i.abq, align 2, !tbaa !40, !alias.scope !240
  %index.next693 = add nuw i64 %index691, 8       ; 2 uses
  %i.abr = icmp eq i64 %index.next693, %n.vec689
  br i1 %i.abr, label %middle.block694, label %vector.body690, !llvm.loop !207

middle.block694:                                  ; preds = %vector.body690
  %cmp.n695 = icmp eq i64 %n.vec689, %wide.trip.count281
  br i1 %cmp.n695, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us.preheader791

.lr.ph164.us.us.preheader791:                     ; preds = %vector.memcheck678, %.lr.ph164.us.us.preheader.a, %.lr.ph164.us.us.preheader, %middle.block694
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck678 ], [ 0, %.lr.ph164.us.us.preheader.a ], [ 0, %.lr.ph164.us.us.preheader ], [ %n.vec689, %middle.block694 ]
  br label %.lr.ph164.us.us

.lr.ph164.us.us:                                  ; preds = %.lr.ph164.us.us, %.lr.ph164.us.us.preheader791
  %indvars.iv278 = phi i64 [ %indvars.iv278.ph, %.lr.ph164.us.us.preheader791 ], [ %indvars.iv.next279.1, %.lr.ph164.us.us ] ; 4 uses
  %i.abs = mul nsw i64 %i.aai, %indvars.iv278
  %i.abt = getelementptr inbounds i8, ptr %i.aah, i64 %i.abs
  %i.abu = getelementptr inbounds i8, ptr %i.abt, i64 -2
  %i.abv = load i16, ptr %i.abu, align 2, !tbaa !40
  %51 = trunc nuw nsw i64 %indvars.iv278 to i32
  %52 = xor i32 %51, -1
  %53 = add nsw i32 %i.zj, %52
  %54 = shl nuw nsw i32 %53, 1
  %55 = zext nneg i32 %54 to i64
  %i.abw = getelementptr inbounds nuw i8, ptr %i.b, i64 %55
  store i16 %i.abv, ptr %i.abw, align 2, !tbaa !40
  %indvars.iv.next279 = or disjoint i64 %indvars.iv278, 1 ; 2 uses
  %i.abx = mul nsw i64 %i.aai, %indvars.iv.next279
  %i.aby = getelementptr inbounds i8, ptr %i.aah, i64 %i.abx
  %i.abz = getelementptr inbounds i8, ptr %i.aby, i64 -2
  %i.aca = load i16, ptr %i.abz, align 2, !tbaa !40
  %56 = trunc nuw nsw i64 %indvars.iv.next279 to i32
  %57 = xor i32 %56, -1
  %58 = add nsw i32 %i.zj, %57
  %59 = shl nuw nsw i32 %58, 1
  %60 = zext nneg i32 %59 to i64
  %i.acb = getelementptr inbounds nuw i8, ptr %i.b, i64 %60
  store i16 %i.aca, ptr %i.acb, align 2, !tbaa !40
  %indvars.iv.next279.1 = add nuw nsw i64 %indvars.iv278, 2 ; 2 uses
  %exitcond282.not.1 = icmp eq i64 %indvars.iv.next279.1, %wide.trip.count281
  br i1 %exitcond282.not.1, label %check_intra_mode.exit49.us.us, label %.lr.ph164.us.us, !llvm.loop !208

.preheader97.us.us:                               ; preds = %bb.az
  %i.acc = icmp sgt i32 %i.aaf, 0
  br i1 %i.acc, label %.lr.ph166.us.us.preheader, label %._crit_edge.us195.us

.lr.ph166.us.us.preheader:                        ; preds = %.preheader97.us.us
  %i.acd = zext nneg i32 %i.aaf to i64            ; 6 uses
  %min.iters.check666 = icmp ult i32 %i.aaf, 32
  br i1 %min.iters.check666, label %.lr.ph166.us.us.preheader790, label %vector.scevcheck649

vector.scevcheck649:                              ; preds = %.lr.ph166.us.us.preheader
  %ident.check650 = icmp ne i64 %i.aai, 1
  %i.ace = add nsw i64 %i.acd, -1                 ; 2 uses
  %i.acf = shl i32 8, %.pre307
  %i.acg = add i32 %i.acf, -2
  %i.ach = trunc nsw i64 %i.ace to i32
  %mul.result652 = shl i32 %i.ach, 1
  %61 = icmp ugt i32 %mul.result652, %i.acg
  %i.aci = icmp ugt i64 %i.ace, 4294967295
  %i.acj = or i1 %61, %i.aci
  %i.ack = or i1 %ident.check650, %i.acj
  br i1 %i.ack, label %.lr.ph166.us.us.preheader790, label %vector.memcheck654

vector.memcheck654:                               ; preds = %vector.scevcheck649
  %scevgep655 = getelementptr i8, ptr %i.aah, i64 -2
  %scevgep656 = getelementptr i8, ptr %i.aah, i64 -1
  %scevgep657 = getelementptr i8, ptr %scevgep656, i64 %i.acd
  %i.acl = shl i32 8, %.pre307
  %i.acm = add i32 %i.acl, -8
  %62 = zext i32 %i.acm to i64                    ; 2 uses
  %i.acn = shl nuw nsw i64 %i.acd, 1
  %i.aco = sub nsw i64 %62, %i.acn
  %scevgep659 = getelementptr i8, ptr %scevgep664, i64 %i.aco
  %scevgep661 = getelementptr i8, ptr %scevgep666, i64 %62
  %bound0662 = icmp ult ptr %scevgep655, %scevgep661
  %bound1663 = icmp ult ptr %scevgep659, %scevgep657
  %found.conflict664 = and i1 %bound0662, %bound1663
  br i1 %found.conflict664, label %.lr.ph166.us.us.preheader790, label %vector.ph667

vector.ph667:                                     ; preds = %vector.memcheck654
  %n.vec668 = and i64 %i.acd, 2147483640          ; 3 uses
  br label %vector.body669

vector.body669:                                   ; preds = %vector.body669, %vector.ph667
  %index670 = phi i64 [ 0, %vector.ph667 ], [ %index.next672, %vector.body669 ] ; 10 uses
  %i.acp = getelementptr inbounds i8, ptr %i.aah, i64 %index670
  %i.acq = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acr = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acs = getelementptr i8, ptr %i.aah, i64 %index670
  %i.act = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acu = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acv = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acw = getelementptr i8, ptr %i.aah, i64 %index670
  %i.acx = getelementptr inbounds i8, ptr %i.acp, i64 -2
  %i.acy = getelementptr i8, ptr %i.acq, i64 -1
  %i.acz = getelementptr i8, ptr %i.acs, i64 1
  %i.ada = getelementptr i8, ptr %i.act, i64 2
  %i.adb = getelementptr i8, ptr %i.acu, i64 3
  %i.adc = getelementptr i8, ptr %i.acv, i64 4
  %i.add = getelementptr i8, ptr %i.acw, i64 5
  %i.ade = load i16, ptr %i.acx, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adf = load i16, ptr %i.acy, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adg = load i16, ptr %i.acr, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adh = load i16, ptr %i.acz, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adi = load i16, ptr %i.ada, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adj = load i16, ptr %i.adb, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adk = load i16, ptr %i.adc, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adl = load i16, ptr %i.add, align 2, !tbaa !40, !alias.scope !241, !noalias !242
  %i.adm = insertelement <8 x i16> poison, i16 %i.ade, i64 0
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 1
  %i.ado = insertelement <8 x i16> %i.adn, i16 %i.adg, i64 2
  %i.adp = insertelement <8 x i16> %i.ado, i16 %i.adh, i64 3
  %i.adq = insertelement <8 x i16> %i.adp, i16 %i.adi, i64 4
  %i.adr = insertelement <8 x i16> %i.adq, i16 %i.adj, i64 5
  %i.ads = insertelement <8 x i16> %i.adr, i16 %i.adk, i64 6
  %i.adt = insertelement <8 x i16> %i.ads, i16 %i.adl, i64 7
  %i.adu = trunc nuw nsw i64 %index670 to i32
  %i.adv = xor i32 %i.adu, -1
  %i.adw = add i32 %i.zj, %i.adv
  %i.adx = shl nuw nsw i32 %i.adw, 1
  %63 = zext nneg i32 %i.adx to i64
  %i.ady = getelementptr inbounds nuw i8, ptr %i.b, i64 %63
  %i.adz = getelementptr inbounds i8, ptr %i.ady, i64 -14
  %reverse671 = shufflevector <8 x i16> %i.adt, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse671, ptr %i.adz, align 2, !tbaa !40, !alias.scope !242
  %index.next672 = add nuw i64 %index670, 8       ; 2 uses
  %i.aea = icmp eq i64 %index.next672, %n.vec668
  br i1 %i.aea, label %middle.block673, label %vector.body669, !llvm.loop !212

middle.block673:                                  ; preds = %vector.body669
  %cmp.n674 = icmp eq i64 %n.vec668, %i.acd
  br i1 %cmp.n674, label %._crit_edge.us195.us, label %.lr.ph166.us.us.preheader790

.lr.ph166.us.us.preheader790:                     ; preds = %vector.memcheck654, %vector.scevcheck649, %.lr.ph166.us.us.preheader, %middle.block673
  %indvars.iv283.ph = phi i64 [ 0, %vector.memcheck654 ], [ 0, %vector.scevcheck649 ], [ 0, %.lr.ph166.us.us.preheader ], [ %n.vec668, %middle.block673 ]
  br label %.lr.ph166.us.us

.lr.ph166.us.us:                                  ; preds = %.lr.ph166.us.us.preheader790, %.lr.ph166.us.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph166.us.us ], [ %indvars.iv283.ph, %.lr.ph166.us.us.preheader790 ] ; 3 uses
  %i.aeb = mul nsw i64 %i.aai, %indvars.iv283
  %i.aec = getelementptr inbounds i8, ptr %i.aah, i64 %i.aeb
  %i.aed = getelementptr inbounds i8, ptr %i.aec, i64 -2
  %i.aee = load i16, ptr %i.aed, align 2, !tbaa !40
  %i.aef = trunc nuw nsw i64 %indvars.iv283 to i32
  %i.aeg = xor i32 %i.aef, -1
  %i.aeh = add i32 %i.zj, %i.aeg
  %i.aei = shl nuw nsw i32 %i.aeh, 1
  %64 = zext nneg i32 %i.aei to i64
  %i.aej = getelementptr inbounds nuw i8, ptr %i.b, i64 %64
  store i16 %i.aee, ptr %i.aej, align 2, !tbaa !40
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.aek = icmp samesign ult i64 %indvars.iv.next284, %i.acd
  br i1 %i.aek, label %.lr.ph166.us.us, label %._crit_edge.us195.us, !llvm.loop !213

._crit_edge.us195.us:                             ; preds = %.lr.ph166.us.us, %middle.block673, %.preheader97.us.us
  %i.ael = sub nsw i32 %i.zj, %i.aaf              ; 4 uses
  %i.aem = shl nuw nsw i32 %i.ael, 1
  %i.aen = zext nneg i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aen
  %i.aep = load i16, ptr %i.aeo, align 8, !tbaa !40 ; 3 uses
  %i.aeq = icmp sgt i32 %i.ael, 0
  br i1 %i.aeq, label %iter.check635, label %check_intra_mode.exit49.us.us

iter.check635:                                    ; preds = %._crit_edge.us195.us
  %i.aer = zext nneg i32 %i.ael to i64            ; 5 uses
  %min.iters.check624 = icmp ult i32 %i.ael, 16
  br i1 %min.iters.check624, label %vec.epilog.ph639, label %vector.ph625

vector.ph625:                                     ; preds = %iter.check635
  %i.aes = and i64 %i.aer, 12
  %n.vec626 = and i64 %i.aer, 2147483632          ; 4 uses
  %broadcast.splatinsert627 = insertelement <8 x i16> poison, i16 %i.aep, i64 0
  %broadcast.splat628 = shufflevector <8 x i16> %broadcast.splatinsert627, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body629

vector.body629:                                   ; preds = %vector.body629, %vector.ph625
  %index630 = phi i64 [ 0, %vector.ph625 ], [ %index.next631, %vector.body629 ] ; 2 uses
  %i.aet = shl nuw nsw i64 %index630, 1
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aet ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  store <8 x i16> %broadcast.splat628, ptr %i.aeu, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat628, ptr %i.aev, align 16, !tbaa !40
  %index.next631 = add nuw i64 %index630, 16      ; 2 uses
  %i.aew = icmp eq i64 %index.next631, %n.vec626
  br i1 %i.aew, label %middle.block632, label %vector.body629, !llvm.loop !214

middle.block632:                                  ; preds = %vector.body629
  %cmp.n633 = icmp eq i64 %n.vec626, %i.aer
  br i1 %cmp.n633, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check637

vec.epilog.iter.check637:                         ; preds = %middle.block632
  %min.epilog.iters.check638 = icmp eq i64 %i.aes, 0
  br i1 %min.epilog.iters.check638, label %.lr.ph169.us.us, label %vec.epilog.ph639, !prof !230

vec.epilog.ph639:                                 ; preds = %iter.check635, %vec.epilog.iter.check637
  %vec.epilog.resume.val634 = phi i64 [ %n.vec626, %vec.epilog.iter.check637 ], [ 0, %iter.check635 ]
  %broadcast.splatinsert641 = insertelement <4 x i16> poison, i16 %i.aep, i64 0
  %broadcast.splat642 = shufflevector <4 x i16> %broadcast.splatinsert641, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body643

vec.epilog.vector.body643:                        ; preds = %vec.epilog.vector.body643, %vec.epilog.ph639
  %index644 = phi i64 [ %vec.epilog.resume.val634, %vec.epilog.ph639 ], [ %index.next645, %vec.epilog.vector.body643 ] ; 2 uses
  %i.aex = shl nuw nsw i64 %index644, 1
  %i.aey = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aex
  store <4 x i16> %broadcast.splat642, ptr %i.aey, align 8, !tbaa !40
  %index.next645 = add nuw i64 %index644, 4       ; 2 uses
  %i.aez = icmp eq i64 %index.next645, %i.aer
  br i1 %i.aez, label %check_intra_mode.exit49.us.us, label %vec.epilog.vector.body643, !llvm.loop !215

.lr.ph169.us.us:                                  ; preds = %vec.epilog.iter.check637, %.lr.ph169.us.us
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph169.us.us ], [ %n.vec626, %vec.epilog.iter.check637 ] ; 2 uses
  %i.afa = shl nuw nsw i64 %indvars.iv286, 1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.afa
  store i16 %i.aep, ptr %i.afb, align 2, !tbaa !40
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.afc = icmp samesign ult i64 %indvars.iv.next287, %i.aer
  br i1 %i.afc, label %.lr.ph169.us.us, label %check_intra_mode.exit49.us.us, !llvm.loop !216

bb.ba:                                            ; preds = %bb.ay
  br i1 %.not300.i14.us.us, label %.preheader.us.us, label %.preheader94.us.us

.preheader94.us.us:                               ; preds = %bb.ba
  %i.afd = icmp sgt i32 %i.zj, 0
  br i1 %i.afd, label %.lr.ph171.us.us.preheader, label %check_intra_mode.exit49.us.us

.lr.ph171.us.us.preheader:                        ; preds = %.preheader94.us.us
  %wide.trip.count292 = zext nneg i32 %i.zj to i64 ; 5 uses
  %min.iters.check613 = icmp ugt i32 %i.zj, 7
  %ident.check603.not = icmp eq i64 %i.aai, 1
  %or.cond782 = select i1 %min.iters.check613, i1 %ident.check603.not, i1 false
  br i1 %or.cond782, label %vector.memcheck604, label %.lr.ph171.us.us.preheader786

vector.memcheck604:                               ; preds = %.lr.ph171.us.us.preheader
  %i.afe = shl nuw nsw i64 %wide.trip.count292, 1
  %scevgep605 = getelementptr i8, ptr %i.b, i64 %i.afe
  %scevgep606 = getelementptr i8, ptr %i.aah, i64 -2
  %scevgep607 = getelementptr i8, ptr %i.aah, i64 -1
  %scevgep608 = getelementptr i8, ptr %scevgep607, i64 %wide.trip.count292
  %bound0609 = icmp ult ptr %i.b, %scevgep608
  %bound1610 = icmp ult ptr %scevgep606, %scevgep605
  %found.conflict611 = and i1 %bound0609, %bound1610
  br i1 %found.conflict611, label %.lr.ph171.us.us.preheader786, label %vector.ph614

vector.ph614:                                     ; preds = %vector.memcheck604
  %n.vec615 = and i64 %wide.trip.count292, 2147483640 ; 3 uses
  br label %vector.body616

vector.body616:                                   ; preds = %vector.body616, %vector.ph614
  %index617 = phi i64 [ 0, %vector.ph614 ], [ %index.next618, %vector.body616 ] ; 10 uses
  %i.aff = getelementptr inbounds i8, ptr %i.aah, i64 %index617
  %i.afg = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afh = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afi = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afj = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afk = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afl = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afm = getelementptr i8, ptr %i.aah, i64 %index617
  %i.afn = getelementptr inbounds i8, ptr %i.aff, i64 -2
  %i.afo = getelementptr i8, ptr %i.afg, i64 -1
  %i.afp = getelementptr i8, ptr %i.afi, i64 1
  %i.afq = getelementptr i8, ptr %i.afj, i64 2
  %i.afr = getelementptr i8, ptr %i.afk, i64 3
  %i.afs = getelementptr i8, ptr %i.afl, i64 4
  %i.aft = getelementptr i8, ptr %i.afm, i64 5
  %i.afu = load i16, ptr %i.afn, align 2, !tbaa !40, !alias.scope !243
  %i.afv = load i16, ptr %i.afo, align 2, !tbaa !40, !alias.scope !243
  %i.afw = load i16, ptr %i.afh, align 2, !tbaa !40, !alias.scope !243
  %i.afx = load i16, ptr %i.afp, align 2, !tbaa !40, !alias.scope !243
  %i.afy = load i16, ptr %i.afq, align 2, !tbaa !40, !alias.scope !243
  %i.afz = load i16, ptr %i.afr, align 2, !tbaa !40, !alias.scope !243
  %i.aga = load i16, ptr %i.afs, align 2, !tbaa !40, !alias.scope !243
  %i.agb = load i16, ptr %i.aft, align 2, !tbaa !40, !alias.scope !243
  %i.agc = insertelement <8 x i16> poison, i16 %i.afu, i64 0
  %i.agd = insertelement <8 x i16> %i.agc, i16 %i.afv, i64 1
  %i.age = insertelement <8 x i16> %i.agd, i16 %i.afw, i64 2
  %i.agf = insertelement <8 x i16> %i.age, i16 %i.afx, i64 3
  %i.agg = insertelement <8 x i16> %i.agf, i16 %i.afy, i64 4
  %i.agh = insertelement <8 x i16> %i.agg, i16 %i.afz, i64 5
  %i.agi = insertelement <8 x i16> %i.agh, i16 %i.aga, i64 6
  %i.agj = insertelement <8 x i16> %i.agi, i16 %i.agb, i64 7
  %i.agk = shl nuw nsw i64 %index617, 1
  %i.agl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agk
  store <8 x i16> %i.agj, ptr %i.agl, align 16, !tbaa !40, !alias.scope !244, !noalias !243
  %index.next618 = add nuw i64 %index617, 8       ; 2 uses
  %i.agm = icmp eq i64 %index.next618, %n.vec615
  br i1 %i.agm, label %middle.block619, label %vector.body616, !llvm.loop !220

middle.block619:                                  ; preds = %vector.body616
  %cmp.n620 = icmp eq i64 %n.vec615, %wide.trip.count292
  br i1 %cmp.n620, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us.preheader786

.lr.ph171.us.us.preheader786:                     ; preds = %vector.memcheck604, %.lr.ph171.us.us.preheader, %middle.block619
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck604 ], [ 0, %.lr.ph171.us.us.preheader ], [ %n.vec615, %middle.block619 ]
  br label %.lr.ph171.us.us

.lr.ph171.us.us:                                  ; preds = %.lr.ph171.us.us, %.lr.ph171.us.us.preheader786
  %indvars.iv289 = phi i64 [ %indvars.iv289.ph, %.lr.ph171.us.us.preheader786 ], [ %indvars.iv.next290.3, %.lr.ph171.us.us ] ; 6 uses
  %i.agn = mul nsw i64 %i.aai, %indvars.iv289
  %i.ago = getelementptr inbounds i8, ptr %i.aah, i64 %i.agn
  %i.agp = getelementptr inbounds i8, ptr %i.ago, i64 -2
  %i.agq = load i16, ptr %i.agp, align 2, !tbaa !40
  %i.agr = shl nuw nsw i64 %indvars.iv289, 1
  %i.ags = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agr
  store i16 %i.agq, ptr %i.ags, align 8, !tbaa !40
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.agt = mul nsw i64 %i.aai, %indvars.iv.next290
  %i.agu = getelementptr inbounds i8, ptr %i.aah, i64 %i.agt
  %i.agv = getelementptr inbounds i8, ptr %i.agu, i64 -2
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !40
  %i.agx = shl nuw nsw i64 %indvars.iv.next290, 1
  %i.agy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agx
  store i16 %i.agw, ptr %i.agy, align 2, !tbaa !40
  %indvars.iv.next290.1 = or disjoint i64 %indvars.iv289, 2 ; 2 uses
  %i.agz = mul nsw i64 %i.aai, %indvars.iv.next290.1
  %i.aha = getelementptr inbounds i8, ptr %i.aah, i64 %i.agz
  %i.ahb = getelementptr inbounds i8, ptr %i.aha, i64 -2
  %i.ahc = load i16, ptr %i.ahb, align 2, !tbaa !40
  %i.ahd = shl nuw nsw i64 %indvars.iv.next290.1, 1
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahd
  store i16 %i.ahc, ptr %i.ahe, align 4, !tbaa !40
  %indvars.iv.next290.2 = or disjoint i64 %indvars.iv289, 3 ; 2 uses
  %i.ahf = mul nsw i64 %i.aai, %indvars.iv.next290.2
  %i.ahg = getelementptr inbounds i8, ptr %i.aah, i64 %i.ahf
  %i.ahh = getelementptr inbounds i8, ptr %i.ahg, i64 -2
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !40
  %i.ahj = shl nuw nsw i64 %indvars.iv.next290.2, 1
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ahj
  store i16 %i.ahi, ptr %i.ahk, align 2, !tbaa !40
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.not.3 = icmp eq i64 %indvars.iv.next290.3, %wide.trip.count292
  br i1 %exitcond293.not.3, label %check_intra_mode.exit49.us.us, label %.lr.ph171.us.us, !llvm.loop !221

.preheader.us.us:                                 ; preds = %bb.ba
  %i.ahl = icmp sgt i32 %i.aaf, 0
  br i1 %i.ahl, label %.lr.ph173.us.us.preheader, label %._crit_edge174.us.us

.lr.ph173.us.us.preheader:                        ; preds = %.preheader.us.us
  %i.ahm = zext nneg i32 %i.aaf to i64            ; 5 uses
  %min.iters.check593 = icmp ugt i32 %i.aaf, 7
  %ident.check583.not = icmp eq i64 %i.aai, 1
  %or.cond783 = select i1 %min.iters.check593, i1 %ident.check583.not, i1 false
  br i1 %or.cond783, label %vector.memcheck584, label %.lr.ph173.us.us.preheader785

vector.memcheck584:                               ; preds = %.lr.ph173.us.us.preheader
  %i.ahn = shl nuw nsw i64 %i.ahm, 1
  %scevgep585 = getelementptr i8, ptr %i.b, i64 %i.ahn
  %scevgep586 = getelementptr i8, ptr %i.aah, i64 -2
  %scevgep587 = getelementptr i8, ptr %i.aah, i64 -1
  %scevgep588 = getelementptr i8, ptr %scevgep587, i64 %i.ahm
end_hunk_0
