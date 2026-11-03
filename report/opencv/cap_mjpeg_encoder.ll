Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_mjpeg_encoder?download=true
inline.NumInlined: 516
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv5mjpeg12convertToYUVEiiiPsS1_PKhiiiii:bb.a
  %i.uv = getelementptr i8, ptr %i.us, i64 1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !10
  %i.ux = zext i8 %i.uw to i16
  %i.uy = or disjoint i16 %i.uo, -512
  %i.uz = add nuw nsw i16 %i.uy, %i.ur
  %i.va = add nsw i16 %i.uz, %i.uu
  %i.vb = add nsw i16 %i.va, %i.ux
  %i.vc = getelementptr inbounds nuw i8, ptr %.0211, i64 30
  store i16 %i.vb, ptr %i.vc, align 2, !tbaa !55
  %i.vd = getelementptr inbounds nuw i8, ptr %.0145209, i64 16
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %i.ef
  %i.vf = add nuw nsw i32 %.0148208, 2
  %i.vg = getelementptr inbounds i8, ptr %i.ve, i64 %i.eh
  %i.vh = getelementptr inbounds nuw i8, ptr %.0142210, i64 64
  %i.vi = getelementptr inbounds nuw i8, ptr %.0211, i64 32
  %i.vj = icmp samesign ult i32 %.0148208, 14
  br i1 %i.vj, label %.preheader, label %.loopexit, !llvm.loop !183

.preheader162:                                    ; preds = %.preheader162.lr.ph.split, %._crit_edge174.split.split
  %.1188 = phi ptr [ %spec.select, %._crit_edge174.split.split ], [ %3, %.preheader162.lr.ph.split ] ; 2 uses
  %.1143185 = phi ptr [ %i.wk, %._crit_edge174.split.split ], [ %4, %.preheader162.lr.ph.split ] ; 2 uses
  %.2147184 = phi ptr [ %i.wj, %._crit_edge174.split.split ], [ %5, %.preheader162.lr.ph.split ]
  %.1149183 = phi i32 [ %i.wg, %._crit_edge174.split.split ], [ 0, %.preheader162.lr.ph.split ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader162, %bb.e
  %indvars.iv233 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next234, %bb.e ] ; 3 uses
  %.3173 = phi ptr [ %.2147184, %.preheader162 ], [ %i.we, %bb.e ] ; 4 uses
  %i.vk = load i8, ptr %.3173, align 1, !tbaa !10
  %i.vl = getelementptr inbounds i8, ptr %.3173, i64 %i.u
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !10
  %i.vn = zext i8 %i.vm to i16
  %i.vo = add nsw i16 %i.vn, -128
  %i.vp = getelementptr inbounds i8, ptr %.3173, i64 %i.v
  %i.vq = load i8, ptr %i.vp, align 1, !tbaa !10
  %i.vr = zext i8 %i.vq to i16
  %i.vs = add nsw i16 %i.vr, -128
  %i.vt = lshr i64 %indvars.iv233, 1
  %i.vu = zext i8 %i.vk to i16
  %i.vv = add nsw i16 %i.vu, -128
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %.1143185, i64 %indvars.iv233
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !55
  %i.vx = and i64 %i.vt, 2147483647
  %i.vy = getelementptr inbounds nuw [2 x i8], ptr %.1188, i64 %i.vx ; 3 uses
  %i.vz = load i16, ptr %i.vy, align 2, !tbaa !55
  %i.wa = add i16 %i.vz, %i.vo
  store i16 %i.wa, ptr %i.vy, align 2, !tbaa !55
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vy, i64 16 ; 2 uses
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !55
  %i.wd = add i16 %i.wc, %i.vs
  store i16 %i.wd, ptr %i.wb, align 2, !tbaa !55
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %i.we = getelementptr inbounds i8, ptr %.3173, i64 %i.w ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %._crit_edge174.split.split, label %bb.e, !llvm.loop !181

._crit_edge174.split.split:                       ; preds = %bb.e
  %i.wf = getelementptr inbounds i8, ptr %i.we, i64 %i.z
  %i.wg = add nuw nsw i32 %.1149183, 1            ; 2 uses
  %i.wh = shl i32 %.1149183, 5
  %i.wi = and i32 %i.wh, 32
  %spec.select.idx = zext nneg i32 %i.wi to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.1188, i64 %spec.select.idx
  %i.wj = getelementptr inbounds i8, ptr %i.wf, i64 %i.aa
  %i.wk = getelementptr inbounds nuw [2 x i8], ptr %.1143185, i64 %i.ab
  %exitcond238.not = icmp eq i32 %i.wg, %6
  br i1 %exitcond238.not, label %.loopexit, label %.preheader162, !llvm.loop !182

iter.check:                                       ; preds = %.preheader165.preheader, %._crit_edge
  %.2144171 = phi ptr [ %i.yk, %._crit_edge ], [ %4, %.preheader165.preheader ] ; 8 uses
  %.4170 = phi ptr [ %i.yj, %._crit_edge ], [ %5, %.preheader165.preheader ] ; 8 uses
  %.2150169 = phi i32 [ %i.yi, %._crit_edge ], [ 0, %.preheader165.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.n
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check262, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %.4170, i64 %index ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %wide.load = load <8 x i8>, ptr %i.wl, align 1, !tbaa !10, !alias.scope !192
  %wide.load263 = load <8 x i8>, ptr %i.wm, align 1, !tbaa !10, !alias.scope !192
  %i.wn = zext <8 x i8> %wide.load to <8 x i16>
  %i.wo = zext <8 x i8> %wide.load263 to <8 x i16>
  %i.wp = shl nuw nsw <8 x i16> %i.wn, splat (i16 2)
  %i.wq = shl nuw nsw <8 x i16> %i.wo, splat (i16 2)
  %i.wr = add nsw <8 x i16> %i.wp, splat (i16 -512)
  %i.ws = add nsw <8 x i16> %i.wq, splat (i16 -512)
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %index ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store <8 x i16> %i.wr, ptr %i.wt, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  store <8 x i16> %i.ws, ptr %i.wu, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.wv = icmp eq i64 %index.next, %n.vec
  br i1 %i.wv, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !194

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index265 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 3 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.4170, i64 %index265
  %wide.load266 = load <4 x i8>, ptr %i.ww, align 1, !tbaa !10, !alias.scope !192
  %i.wx = zext <4 x i8> %wide.load266 to <4 x i16>
  %i.wy = shl nuw nsw <4 x i16> %i.wx, splat (i16 2)
  %i.wz = add nsw <4 x i16> %i.wy, splat (i16 -512)
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %index265
  store <4 x i16> %i.wz, ptr %i.xa, align 2, !tbaa !55, !alias.scope !193, !noalias !192
  %index.next267 = add nuw i64 %index265, 4       ; 2 uses
  %i.xb = icmp eq i64 %index.next267, %n.vec264
  br i1 %i.xb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !188

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n268, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec264, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.xc = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.prol
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !10
  %i.xe = zext i8 %i.xd to i16
  %i.xf = shl nuw nsw i16 %i.xe, 2
  %i.xg = add nsw i16 %i.xf, -512
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.prol
  store i16 %i.xg, ptr %i.xh, align 2, !tbaa !55
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !189

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.xi = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.xj = icmp ugt i64 %i.xi, -4
  br i1 %i.xj, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !10
  %i.xm = zext i8 %i.xl to i16
  %i.xn = shl nuw nsw i16 %i.xm, 2
  %i.xo = add nsw i16 %i.xn, -512
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv
  store i16 %i.xo, ptr %i.xp, align 2, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !10
  %i.xs = zext i8 %i.xr to i16
  %i.xt = shl nuw nsw i16 %i.xs, 2
  %i.xu = add nsw i16 %i.xt, -512
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next
  store i16 %i.xu, ptr %i.xv, align 2, !tbaa !55
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next.1
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !10
  %i.xy = zext i8 %i.xx to i16
  %i.xz = shl nuw nsw i16 %i.xy, 2
  %i.ya = add nsw i16 %i.xz, -512
  %i.yb = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next.1
  store i16 %i.ya, ptr %i.yb, align 2, !tbaa !55
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.4170, i64 %indvars.iv.next.2
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !10
  %i.ye = zext i8 %i.yd to i16
  %i.yf = shl nuw nsw i16 %i.ye, 2
  %i.yg = add nsw i16 %i.yf, -512
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %indvars.iv.next.2
  store i16 %i.yg, ptr %i.yh, align 2, !tbaa !55
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.yi = add nuw nsw i32 %.2150169, 1            ; 2 uses
  %i.yj = getelementptr inbounds i8, ptr %.4170, i64 %i.e
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %.2144171, i64 %i.f
  %exitcond220.not = icmp eq i32 %i.yi, %6
  br i1 %exitcond220.not, label %.loopexit, label %iter.check, !llvm.loop !191

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge174.split.split.us.us, %._crit_edge174.split.us.us, %._crit_edge174.split.split, %.preheader, %.preheader166, %.preheader165.lr.ph, %.preheader163, %.preheader162.lr.ph
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN2cv5mjpegL11aan_fdct8x8EPKsPsiS2_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, i32 noundef range(i32 8, 17) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = zext nneg i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.0217 = phi ptr [ %0, %bb.a ], [ %i.bw, %bb.b ] ; 9 uses
  %.0207216 = phi ptr [ %i.a, %bb.a ], [ %i.bx, %bb.b ] ; 9 uses
  %.0208215 = phi i32 [ 8, %bb.a ], [ %i.bv, %bb.b ] ; 2 uses
  %i.c = load i16, ptr %.0217, align 2, !tbaa !55
  %i.d = sext i16 %i.c to i32                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0217, i64 14
  %i.f = load i16, ptr %i.e, align 2, !tbaa !55
  %i.g = sext i16 %i.f to i32                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0217, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !55
  %i.j = sext i16 %i.i to i32                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0217, i64 8
  %i.l = load i16, ptr %i.k, align 2, !tbaa !55
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  %i.n = add nsw i32 %i.g, %i.d                   ; 2 uses
  %i.o = sub nsw i32 %i.d, %i.g                   ; 3 uses
  %i.p = add nsw i32 %i.m, %i.j                   ; 2 uses
  %i.q = sub nsw i32 %i.j, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %.0207216, i64 28
  %i.s = getelementptr inbounds nuw i8, ptr %.0207216, i64 4
  %i.t = add nsw i32 %i.p, %i.n                   ; 2 uses
  %i.u = sub nsw i32 %i.n, %i.p                   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0217, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !55
  %i.x = sext i16 %i.w to i32                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0217, i64 12
  %i.z = load i16, ptr %i.y, align 2, !tbaa !55
  %i.aa = sext i16 %i.z to i32                    ; 2 uses
  %i.ab = add nsw i32 %i.aa, %i.x                 ; 2 uses
  %i.ac = sub nsw i32 %i.x, %i.aa                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0207216, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %.0217, i64 4
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !55
  %i.ag = sext i16 %i.af to i32                   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0217, i64 10
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !55
  %i.aj = sext i16 %i.ai to i32                   ; 2 uses
  %i.ak = sub nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0207216, i64 12
  %i.am = add nsw i32 %i.aj, %i.ag                ; 2 uses
  %i.an = add nsw i32 %i.am, %i.ab                ; 2 uses
  %i.ao = add nsw i32 %i.an, %i.t
  %i.ap = sub nsw i32 %i.t, %i.an
  store i32 %i.ao, ptr %.0207216, align 4, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %.0207216, i64 16
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !53
  %i.ar = add nsw i32 %i.ab, %i.u
  %i.as = sub nsw i32 %i.am, %i.ar
  %i.at = mul nsw i32 %i.as, 11585
  %i.au = add nsw i32 %i.at, 8192
  %i.av = ashr i32 %i.au, 14                      ; 2 uses
  %i.aw = add nsw i32 %i.av, %i.u
  %i.ax = sub nsw i32 %i.u, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %.0207216, i64 8
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %.0207216, i64 24
  store i32 %i.aw, ptr %i.az, align 4, !tbaa !53
  %i.ba = add nsw i32 %i.ak, %i.q                 ; 2 uses
  %i.bb = add nsw i32 %i.ak, %i.ac
  %i.bc = add nsw i32 %i.ac, %i.o                 ; 2 uses
  %i.bd = mul nsw i32 %i.bb, 11585
  %i.be = add nsw i32 %i.bd, 8192
  %i.bf = ashr i32 %i.be, 14                      ; 2 uses
  %i.bg = add nsw i32 %i.bf, %i.o                 ; 2 uses
  %i.bh = sub nsw i32 %i.o, %i.bf                 ; 2 uses
  %i.bi = sub nsw i32 %i.ba, %i.bc
  %i.bj = mul nsw i32 %i.bi, 6270
  %i.bk = mul nsw i32 %i.ba, 8867
  %i.bl = add nsw i32 %i.bj, 8192                 ; 2 uses
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = ashr i32 %i.bm, 14                      ; 2 uses
  %i.bo = mul nsw i32 %i.bc, 21407
  %i.bp = add i32 %i.bl, %i.bo
  %i.bq = ashr i32 %i.bp, 14                      ; 2 uses
  %i.br = add nsw i32 %i.bn, %i.bh
  %i.bs = sub nsw i32 %i.bh, %i.bn
  %i.bt = add nsw i32 %i.bq, %i.bg
  %i.bu = sub nsw i32 %i.bg, %i.bq
  store i32 %i.br, ptr %i.ad, align 4, !tbaa !53
  store i32 %i.bt, ptr %i.s, align 4, !tbaa !53
  store i32 %i.bu, ptr %i.r, align 4, !tbaa !53
  store i32 %i.bs, ptr %i.al, align 4, !tbaa !53
  %i.bv = add nsw i32 %.0208215, -1
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.0217, i64 %i.b
  %i.bx = getelementptr inbounds nuw i8, ptr %.0207216, i64 32
  %i.by = icmp samesign ugt i32 %.0208215, 1
  br i1 %i.by, label %bb.b, label %vector.memcheck, !llvm.loop !196

vector.memcheck:                                  ; preds = %bb.b
  %4 = getelementptr i8, ptr %1, i64 128
  %5 = getelementptr i8, ptr %3, i64 128
  %bound0 = icmp ult ptr %1, %5
  %bound1 = icmp ult ptr %3, %4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %6 = shl i64 %index, 4                          ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %6
  %next.gep223 = getelementptr i8, ptr %3, i64 %6 ; 8 uses
  %7 = getelementptr i8, ptr %3, i64 %6           ; 8 uses
  %next.gep224 = getelementptr i8, ptr %7, i64 16
  %8 = getelementptr i8, ptr %3, i64 %6           ; 8 uses
  %next.gep225 = getelementptr i8, ptr %8, i64 32
  %9 = getelementptr i8, ptr %3, i64 %6           ; 8 uses
  %next.gep226 = getelementptr i8, ptr %9, i64 48
  %10 = shl i64 %index, 2
  %next.gep227 = getelementptr i8, ptr %i.a, i64 %10 ; 9 uses
  %wide.load = load <4 x i32>, ptr %next.gep227, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 224 ; 2 uses
  %wide.load228 = load <4 x i32>, ptr %11, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 96 ; 2 uses
  %wide.load229 = load <4 x i32>, ptr %12, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 128 ; 2 uses
  %wide.load230 = load <4 x i32>, ptr %13, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %14 = add nsw <4 x i32> %wide.load228, %wide.load ; 2 uses
  %15 = sub nsw <4 x i32> %wide.load, %wide.load228 ; 4 uses
  %16 = add nsw <4 x i32> %wide.load230, %wide.load229 ; 2 uses
  %17 = sub nsw <4 x i32> %wide.load229, %wide.load230 ; 2 uses
  store <4 x i32> %15, ptr %11, align 16, !tbaa !53, !alias.scope !203
  store <4 x i32> %17, ptr %next.gep227, align 16, !tbaa !53, !alias.scope !203
  %18 = add nsw <4 x i32> %16, %14                ; 2 uses
  %19 = sub nsw <4 x i32> %14, %16                ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 32
  %wide.load231 = load <4 x i32>, ptr %20, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 192
  %wide.load232 = load <4 x i32>, ptr %21, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %22 = add nsw <4 x i32> %wide.load232, %wide.load231 ; 2 uses
  %23 = sub nsw <4 x i32> %wide.load231, %wide.load232 ; 3 uses
  store <4 x i32> %23, ptr %13, align 16, !tbaa !53, !alias.scope !203
  %24 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 64
  %wide.load233 = load <4 x i32>, ptr %24, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %next.gep227, i64 160
  %wide.load234 = load <4 x i32>, ptr %25, align 16, !tbaa !53, !alias.scope !203 ; 2 uses
  %26 = sub nsw <4 x i32> %wide.load233, %wide.load234 ; 3 uses
  store <4 x i32> %26, ptr %12, align 16, !tbaa !53, !alias.scope !203
  %27 = add nsw <4 x i32> %wide.load234, %wide.load233 ; 2 uses
  %28 = add nsw <4 x i32> %27, %22                ; 2 uses
  %29 = add nsw <4 x i32> %28, %18
  %30 = sub nsw <4 x i32> %18, %28
  %31 = load i16, ptr %next.gep223, align 2, !tbaa !55, !alias.scope !204
  %32 = load i16, ptr %next.gep224, align 2, !tbaa !55, !alias.scope !204
  %33 = load i16, ptr %next.gep225, align 2, !tbaa !55, !alias.scope !204
  %34 = load i16, ptr %next.gep226, align 2, !tbaa !55, !alias.scope !204
  %35 = insertelement <4 x i16> poison, i16 %31, i64 0
  %36 = insertelement <4 x i16> %35, i16 %32, i64 1
  %37 = insertelement <4 x i16> %36, i16 %33, i64 2
  %38 = insertelement <4 x i16> %37, i16 %34, i64 3
  %39 = sext <4 x i16> %38 to <4 x i32>
  %40 = mul nsw <4 x i32> %29, %39
  %41 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 8
  %42 = getelementptr i8, ptr %7, i64 24
  %43 = getelementptr i8, ptr %8, i64 40
  %44 = getelementptr i8, ptr %9, i64 56
  %45 = load i16, ptr %41, align 2, !tbaa !55, !alias.scope !204
  %46 = load i16, ptr %42, align 2, !tbaa !55, !alias.scope !204
  %47 = load i16, ptr %43, align 2, !tbaa !55, !alias.scope !204
  %48 = load i16, ptr %44, align 2, !tbaa !55, !alias.scope !204
  %49 = insertelement <4 x i16> poison, i16 %45, i64 0
  %50 = insertelement <4 x i16> %49, i16 %46, i64 1
  %51 = insertelement <4 x i16> %50, i16 %47, i64 2
  %52 = insertelement <4 x i16> %51, i16 %48, i64 3
  %53 = sext <4 x i16> %52 to <4 x i32>
  %54 = mul nsw <4 x i32> %30, %53
  %55 = add <4 x i32> %22, %19
  %56 = sub <4 x i32> %27, %55
  %57 = mul nsw <4 x i32> %56, splat (i32 11585)
  %58 = add nsw <4 x i32> %57, splat (i32 8192)
  %59 = ashr <4 x i32> %58, splat (i32 14)        ; 2 uses
  %60 = add nsw <4 x i32> %59, %19
  %61 = sub nsw <4 x i32> %19, %59
  %62 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 4
  %63 = getelementptr i8, ptr %7, i64 20
  %64 = getelementptr i8, ptr %8, i64 36
  %65 = getelementptr i8, ptr %9, i64 52
  %66 = load i16, ptr %62, align 2, !tbaa !55, !alias.scope !204
  %67 = load i16, ptr %63, align 2, !tbaa !55, !alias.scope !204
  %68 = load i16, ptr %64, align 2, !tbaa !55, !alias.scope !204
  %69 = load i16, ptr %65, align 2, !tbaa !55, !alias.scope !204
  %70 = insertelement <4 x i16> poison, i16 %66, i64 0
  %71 = insertelement <4 x i16> %70, i16 %67, i64 1
  %72 = insertelement <4 x i16> %71, i16 %68, i64 2
  %73 = insertelement <4 x i16> %72, i16 %69, i64 3
  %74 = sext <4 x i16> %73 to <4 x i32>
  %75 = mul nsw <4 x i32> %61, %74
  %76 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 12
  %77 = getelementptr i8, ptr %7, i64 28
  %78 = getelementptr i8, ptr %8, i64 44
  %79 = getelementptr i8, ptr %9, i64 60
  %80 = load i16, ptr %76, align 2, !tbaa !55, !alias.scope !204
  %81 = load i16, ptr %77, align 2, !tbaa !55, !alias.scope !204
  %82 = load i16, ptr %78, align 2, !tbaa !55, !alias.scope !204
  %83 = load i16, ptr %79, align 2, !tbaa !55, !alias.scope !204
  %84 = insertelement <4 x i16> poison, i16 %80, i64 0
  %85 = insertelement <4 x i16> %84, i16 %81, i64 1
  %86 = insertelement <4 x i16> %85, i16 %82, i64 2
  %87 = insertelement <4 x i16> %86, i16 %83, i64 3
  %88 = sext <4 x i16> %87 to <4 x i32>
  %89 = mul nsw <4 x i32> %60, %88
  %90 = add nsw <4 x i32> %26, %17                ; 2 uses
  %91 = add nsw <4 x i32> %26, %23
  %92 = add nsw <4 x i32> %23, %15                ; 2 uses
  %93 = mul nsw <4 x i32> %91, splat (i32 11585)
  %94 = add nsw <4 x i32> %93, splat (i32 8192)
  %95 = ashr <4 x i32> %94, splat (i32 14)        ; 2 uses
  %96 = add nsw <4 x i32> %95, %15                ; 2 uses
  %97 = sub nsw <4 x i32> %15, %95                ; 2 uses
  %98 = sub nsw <4 x i32> %90, %92
  %99 = mul nsw <4 x i32> %98, splat (i32 6270)
  %100 = mul nsw <4 x i32> %90, splat (i32 8867)
  %101 = add <4 x i32> %99, splat (i32 8192)      ; 2 uses
  %102 = add <4 x i32> %101, %100
  %103 = ashr <4 x i32> %102, splat (i32 14)      ; 2 uses
  %104 = mul nsw <4 x i32> %92, splat (i32 21407)
  %105 = add <4 x i32> %101, %104
  %106 = ashr <4 x i32> %105, splat (i32 14)      ; 2 uses
  %107 = add nsw <4 x i32> %103, %97
  %108 = sub nsw <4 x i32> %97, %103
  %109 = add nsw <4 x i32> %106, %96
  %110 = sub nsw <4 x i32> %96, %106
  %111 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 10
  %112 = getelementptr i8, ptr %7, i64 26
  %113 = getelementptr i8, ptr %8, i64 42
  %114 = getelementptr i8, ptr %9, i64 58
  %115 = load i16, ptr %111, align 2, !tbaa !55, !alias.scope !204
  %116 = load i16, ptr %112, align 2, !tbaa !55, !alias.scope !204
  %117 = load i16, ptr %113, align 2, !tbaa !55, !alias.scope !204
  %118 = load i16, ptr %114, align 2, !tbaa !55, !alias.scope !204
  %119 = insertelement <4 x i16> poison, i16 %115, i64 0
  %120 = insertelement <4 x i16> %119, i16 %116, i64 1
  %121 = insertelement <4 x i16> %120, i16 %117, i64 2
  %122 = insertelement <4 x i16> %121, i16 %118, i64 3
  %123 = sext <4 x i16> %122 to <4 x i32>
  %124 = mul nsw <4 x i32> %107, %123
  %125 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 2
  %126 = getelementptr i8, ptr %7, i64 18
  %127 = getelementptr i8, ptr %8, i64 34
  %128 = getelementptr i8, ptr %9, i64 50
  %129 = load i16, ptr %125, align 2, !tbaa !55, !alias.scope !204
  %130 = load i16, ptr %126, align 2, !tbaa !55, !alias.scope !204
  %131 = load i16, ptr %127, align 2, !tbaa !55, !alias.scope !204
  %132 = load i16, ptr %128, align 2, !tbaa !55, !alias.scope !204
  %133 = insertelement <4 x i16> poison, i16 %129, i64 0
  %134 = insertelement <4 x i16> %133, i16 %130, i64 1
  %135 = insertelement <4 x i16> %134, i16 %131, i64 2
  %136 = insertelement <4 x i16> %135, i16 %132, i64 3
  %137 = sext <4 x i16> %136 to <4 x i32>
  %138 = mul nsw <4 x i32> %109, %137
  %139 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 14
  %140 = getelementptr i8, ptr %7, i64 30
  %141 = getelementptr i8, ptr %8, i64 46
  %142 = getelementptr i8, ptr %9, i64 62
  %143 = load i16, ptr %139, align 2, !tbaa !55, !alias.scope !204
  %144 = load i16, ptr %140, align 2, !tbaa !55, !alias.scope !204
  %145 = load i16, ptr %141, align 2, !tbaa !55, !alias.scope !204
  %146 = load i16, ptr %142, align 2, !tbaa !55, !alias.scope !204
  %147 = insertelement <4 x i16> poison, i16 %143, i64 0
  %148 = insertelement <4 x i16> %147, i16 %144, i64 1
  %149 = insertelement <4 x i16> %148, i16 %145, i64 2
  %150 = insertelement <4 x i16> %149, i16 %146, i64 3
  %151 = sext <4 x i16> %150 to <4 x i32>
  %152 = mul nsw <4 x i32> %110, %151
  %153 = getelementptr inbounds nuw i8, ptr %next.gep223, i64 6
  %154 = getelementptr i8, ptr %7, i64 22
  %155 = getelementptr i8, ptr %8, i64 38
  %156 = getelementptr i8, ptr %9, i64 54
  %157 = load i16, ptr %153, align 2, !tbaa !55, !alias.scope !204
  %158 = load i16, ptr %154, align 2, !tbaa !55, !alias.scope !204
  %159 = load i16, ptr %155, align 2, !tbaa !55, !alias.scope !204
  %160 = load i16, ptr %156, align 2, !tbaa !55, !alias.scope !204
  %161 = insertelement <4 x i16> poison, i16 %157, i64 0
  %162 = insertelement <4 x i16> %161, i16 %158, i64 1
  %163 = insertelement <4 x i16> %162, i16 %159, i64 2
  %164 = insertelement <4 x i16> %163, i16 %160, i64 3
  %165 = sext <4 x i16> %164 to <4 x i32>
  %166 = mul nsw <4 x i32> %108, %165
  %167 = shufflevector <4 x i32> %40, <4 x i32> %138, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %168 = shufflevector <4 x i32> %75, <4 x i32> %166, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %169 = shufflevector <4 x i32> %54, <4 x i32> %124, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %170 = shufflevector <4 x i32> %89, <4 x i32> %152, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %171 = shufflevector <8 x i32> %167, <8 x i32> %168, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %172 = shufflevector <8 x i32> %169, <8 x i32> %170, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %173 = shufflevector <16 x i32> %171, <16 x i32> %172, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %174 = add nsw <32 x i32> %173, splat (i32 8192)
  %175 = lshr <32 x i32> %174, splat (i32 14)
  %interleaved.vec = trunc <32 x i32> %175 to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !55, !alias.scope !205, !noalias !204
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %176 = icmp eq i64 %index.next, 8
  br i1 %176, label %bb.c, label %vector.body, !llvm.loop !201

.preheader:                                       ; preds = %vector.memcheck, %.preheader
  %.0205221 = phi ptr [ %i.gq, %.preheader ], [ %1, %vector.memcheck ] ; 9 uses
  %.0206220 = phi ptr [ %i.gp, %.preheader ], [ %3, %vector.memcheck ] ; 9 uses
  %.1219 = phi ptr [ %i.go, %.preheader ], [ %i.a, %vector.memcheck ] ; 10 uses
  %.1209218 = phi i32 [ %i.gn, %.preheader ], [ 8, %vector.memcheck ] ; 2 uses
  %i.bz = load i32, ptr %.1219, align 4, !tbaa !53 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.1219, i64 224 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !53 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1219, i64 96 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !53 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1219, i64 128 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !53 ; 2 uses
  %i.cg = add nsw i32 %i.cb, %i.bz                ; 2 uses
  %i.ch = sub nsw i32 %i.bz, %i.cb                ; 4 uses
  %i.ci = add nsw i32 %i.cf, %i.cd                ; 2 uses
  %i.cj = sub nsw i32 %i.cd, %i.cf                ; 2 uses
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !53
  store i32 %i.cj, ptr %.1219, align 4, !tbaa !53
  %i.ck = add nsw i32 %i.ci, %i.cg                ; 2 uses
  %i.cl = sub nsw i32 %i.cg, %i.ci                ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.1219, i64 32
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !53 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1219, i64 192
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !53 ; 2 uses
  %i.cq = add nsw i32 %i.cp, %i.cn                ; 2 uses
  %i.cr = sub nsw i32 %i.cn, %i.cp                ; 3 uses
  store i32 %i.cr, ptr %i.ce, align 4, !tbaa !53
  %i.cs = getelementptr inbounds nuw i8, ptr %.1219, i64 64
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !53 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1219, i64 160
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !53 ; 2 uses
  %i.cw = sub nsw i32 %i.ct, %i.cv                ; 3 uses
  store i32 %i.cw, ptr %i.cc, align 4, !tbaa !53
  %i.cx = add nsw i32 %i.cv, %i.ct                ; 2 uses
  %i.cy = add nsw i32 %i.cx, %i.cq                ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.ck
  %i.da = sub nsw i32 %i.ck, %i.cy
  %i.db = load i16, ptr %.0206220, align 2, !tbaa !55
  %i.dc = sext i16 %i.db to i32
  %i.dd = mul nsw i32 %i.cz, %i.dc
  %i.de = add nsw i32 %i.dd, 8192
  %i.df = lshr i32 %i.de, 14
  %i.dg = trunc i32 %i.df to i16
  store i16 %i.dg, ptr %.0205221, align 2, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %.0206220, i64 8
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !55
  %i.dj = sext i16 %i.di to i32
  %i.dk = mul nsw i32 %i.da, %i.dj
  %i.dl = add nsw i32 %i.dk, 8192
  %i.dm = lshr i32 %i.dl, 14
  %i.dn = trunc i32 %i.dm to i16
  %i.do = getelementptr inbounds nuw i8, ptr %.0205221, i64 8
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !55
  %i.dp = add i32 %i.cq, %i.cl
  %i.dq = sub i32 %i.cx, %i.dp
  %i.dr = mul nsw i32 %i.dq, 11585
  %i.ds = add nsw i32 %i.dr, 8192
  %i.dt = ashr i32 %i.ds, 14                      ; 2 uses
  %i.du = add nsw i32 %i.dt, %i.cl
  %i.dv = sub nsw i32 %i.cl, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %.0206220, i64 4
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !55
  %i.dy = sext i16 %i.dx to i32
  %i.dz = mul nsw i32 %i.dv, %i.dy
  %i.ea = add nsw i32 %i.dz, 8192
  %i.eb = lshr i32 %i.ea, 14
  %i.ec = trunc i32 %i.eb to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0205221, i64 4
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !55
  %i.ee = getelementptr inbounds nuw i8, ptr %.0206220, i64 12
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !55
  %i.eg = sext i16 %i.ef to i32
  %i.eh = mul nsw i32 %i.du, %i.eg
  %i.ei = add nsw i32 %i.eh, 8192
  %i.ej = lshr i32 %i.ei, 14
  %i.ek = trunc i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw i8, ptr %.0205221, i64 12
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !55
  %i.em = add nsw i32 %i.cw, %i.cj                ; 2 uses
  %i.en = add nsw i32 %i.cw, %i.cr
  %i.eo = add nsw i32 %i.cr, %i.ch                ; 2 uses
  %i.ep = mul nsw i32 %i.en, 11585
  %i.eq = add nsw i32 %i.ep, 8192
  %i.er = ashr i32 %i.eq, 14                      ; 2 uses
  %i.es = add nsw i32 %i.er, %i.ch                ; 2 uses
  %i.et = sub nsw i32 %i.ch, %i.er                ; 2 uses
  %i.eu = sub nsw i32 %i.em, %i.eo
  %i.ev = mul nsw i32 %i.eu, 6270
  %i.ew = mul nsw i32 %i.em, 8867
  %i.ex = add i32 %i.ev, 8192                     ; 2 uses
  %i.ey = add i32 %i.ex, %i.ew
  %i.ez = ashr i32 %i.ey, 14                      ; 2 uses
  %i.fa = mul nsw i32 %i.eo, 21407
  %i.fb = add i32 %i.ex, %i.fa
  %i.fc = ashr i32 %i.fb, 14                      ; 2 uses
  %i.fd = add nsw i32 %i.ez, %i.et
  %i.fe = sub nsw i32 %i.et, %i.ez
  %i.ff = add nsw i32 %i.fc, %i.es
  %i.fg = sub nsw i32 %i.es, %i.fc
  %i.fh = getelementptr inbounds nuw i8, ptr %.0206220, i64 10
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !55
  %i.fj = sext i16 %i.fi to i32
  %i.fk = mul nsw i32 %i.fd, %i.fj
  %i.fl = add nsw i32 %i.fk, 8192
  %i.fm = lshr i32 %i.fl, 14
  %i.fn = trunc i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %.0205221, i64 10
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !55
  %i.fp = getelementptr inbounds nuw i8, ptr %.0206220, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !55
  %i.fr = sext i16 %i.fq to i32
  %i.fs = mul nsw i32 %i.ff, %i.fr
  %i.ft = add nsw i32 %i.fs, 8192
  %i.fu = lshr i32 %i.ft, 14
  %i.fv = trunc i32 %i.fu to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %.0205221, i64 2
  store i16 %i.fv, ptr %i.fw, align 2, !tbaa !55
  %i.fx = getelementptr inbounds nuw i8, ptr %.0206220, i64 14
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !55
  %i.fz = sext i16 %i.fy to i32
  %i.ga = mul nsw i32 %i.fg, %i.fz
  %i.gb = add nsw i32 %i.ga, 8192
  %i.gc = lshr i32 %i.gb, 14
  %i.gd = trunc i32 %i.gc to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %.0205221, i64 14
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %.0206220, i64 6
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !55
  %i.gh = sext i16 %i.gg to i32
  %i.gi = mul nsw i32 %i.fe, %i.gh
  %i.gj = add nsw i32 %i.gi, 8192
  %i.gk = lshr i32 %i.gj, 14
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %.0205221, i64 6
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !55
  %i.gn = add nsw i32 %.1209218, -1
  %i.go = getelementptr inbounds nuw i8, ptr %.1219, i64 4
  %i.gp = getelementptr inbounds nuw i8, ptr %.0206220, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %.0205221, i64 16
  %i.gr = icmp samesign ugt i32 %.1209218, 1
  br i1 %i.gr, label %.preheader, label %bb.c, !llvm.loop !202

bb.c:                                             ; preds = %vector.body, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg19mjpeg_buffer_keeper22allocate_output_bufferEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 3 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 12
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 40
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 40
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59, !noalias !211
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.z, %i.af
  %i.ah = sdiv exact i64 %i.ag, 40
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12
  %i.ai = zext i32 %i.cb to i64                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95 ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !87 ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = icmp ult i64 %i.aq, %i.ai
  br i1 %i.ar, label %bb.o, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12 ] ; 4 uses
  %.0715 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12 ]
  %i.as = add nsw i64 %i.ah, %indvars.iv          ; 9 uses
  %i.at = icmp sgt i64 %i.as, -1                  ; 2 uses
  br i1 %i.at, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i64 %i.as, 12
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %indvars.iv
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit

bb.e:                                             ; preds = %bb.c
  %i.aw = udiv i64 %i.as, 12
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ax = xor i64 %i.as, -1
  %i.ay = udiv i64 %i.ax, 12
  %i.az = xor i64 %i.ay, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ba = phi i64 [ %i.aw, %bb.e ], [ %i.az, %bb.f ] ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !61, !noalias !211
  %.idx.i.i.i.i = mul i64 %i.ba, -480
  %i.bd = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i
  %i.be = getelementptr [40 x i8], ptr %i.bd, i64 %i.as
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit: ; preds = %bb.d, %bb.g
  %storemerge.i.i.i.i = phi ptr [ %i.be, %bb.g ], [ %i.av, %bb.d ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 24 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !63
  %i.bh = icmp eq i32 %i.bg, 32
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit
  store i32 0, ptr %i.bf, align 8, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !64
  br label %_ZN2cv5mjpeg12mjpeg_buffer6finishEv.exit

bb.i:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !64
  %i.bm = add i32 %i.bl, 1
  br label %_ZN2cv5mjpeg12mjpeg_buffer6finishEv.exit

_ZN2cv5mjpeg12mjpeg_buffer6finishEv.exit:         ; preds = %bb.h, %bb.i
  %.sink.i = phi i32 [ %i.bj, %bb.h ], [ %i.bm, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i, i64 32
  store i32 %.sink.i, ptr %i.bn, align 8, !tbaa !65
  br i1 %i.at, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZN2cv5mjpeg12mjpeg_buffer6finishEv.exit
  %i.bo = icmp samesign ult i64 %i.as, 12
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %indvars.iv
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12

bb.l:                                             ; preds = %bb.j
  %i.bq = udiv i64 %i.as, 12
  br label %bb.n

bb.m:                                             ; preds = %_ZN2cv5mjpeg12mjpeg_buffer6finishEv.exit
  %i.br = xor i64 %i.as, -1
  %i.bs = udiv i64 %i.br, 12
  %i.bt = xor i64 %i.bs, -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = phi i64 [ %i.bq, %bb.l ], [ %i.bt, %bb.m ] ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !61, !noalias !212
  %.idx.i.i.i.i10 = mul i64 %i.bu, -480
  %i.bx = getelementptr i8, ptr %i.bw, i64 %.idx.i.i.i.i10
  %i.by = getelementptr [40 x i8], ptr %i.bx, i64 %i.as
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit12: ; preds = %bb.k, %bb.n
  %storemerge.i.i.i.i11 = phi ptr [ %i.by, %bb.n ], [ %i.bp, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i11, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !65
  %i.cb = add i32 %i.ca, %.0715                   ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cc = and i64 %indvars.iv.next, 4294967295
  %i.cd = icmp ugt i64 %i.ac, %i.cc
  br i1 %i.cd, label %bb.b, label %._crit_edge, !llvm.loop !210

bb.o:                                             ; preds = %._crit_edge
  %.not.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !95
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.o
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef %i.ai)
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.a, %_ZNSt6vectorIjSaIjEE5clearEv.exit, %._crit_edge
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !213
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !53   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #19, !inline_history !213
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv5mjpeg16MotionJpegWriterESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 296) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv5mjpeg16MotionJpegWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.a) #19, !inline_history !214
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv5mjpeg16MotionJpegWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv5mjpeg16MotionJpegWriterESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 296) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv5mjpeg16MotionJpegWriterESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #17 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !10
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #19
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg16MotionJpegWriterC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 %3, i1 noundef zeroext %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv5mjpeg16MotionJpegWriterE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 0, ptr %i.c, align 4, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = icmp ne ptr %i.g, null
  %.neg.i.i.i.i = sext i1 %i.n to i64
  %i.o = add nsw i64 %i.m, %.neg.i.i.i.i
  %i.p = mul nsw i64 %i.o, 12
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = add nsw i64 %i.p, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !58  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 40
  %i.af = add nsw i64 %i.x, %i.ae                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59, !noalias !219
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ac, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i ] ; 3 uses
  %i.al = add nsw i64 %indvars.iv.i.i, %i.ak      ; 5 uses
  %i.am = icmp sgt i64 %i.al, -1
  br i1 %i.am, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.an = icmp samesign ult i64 %i.al, 12
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.aa, i64 %indvars.iv.i.i
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ap = udiv i64 %i.al, 12
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.aq = xor i64 %i.al, -1
  %i.ar = udiv i64 %i.aq, 12
  %i.as = xor i64 %i.ar, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.at = phi i64 [ %i.ap, %bb.d ], [ %i.as, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !61, !noalias !219
  %.idx.i.i.i.i.i.i = mul i64 %i.at, -480
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx.i.i.i.i.i.i
  %i.ax = getelementptr [40 x i8], ptr %i.aw, i64 %i.al
  br label %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i

_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i: ; preds = %bb.f, %bb.c
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.f ], [ %i.ao, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 24
  store i32 32, ptr %i.ay, align 8, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 28
  store i32 0, ptr %i.az, align 4, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i.i.i.i, i64 32
  store i32 0, ptr %i.ba, align 8, !tbaa !65
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bb = and i64 %indvars.iv.next.i.i, 4294967295
  %i.bc = icmp ugt i64 %i.af, %i.bb
  br i1 %i.bc, label %bb.a, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EEixEm.exit.i.i, %.noexc
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.bd, align 8, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke void @_ZN2cv17AVIWriteContainerC1Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.be)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.bf, align 8, !tbaa !101
  %i.bg = invoke noundef zeroext i1 @_ZN2cv5mjpeg16MotionJpegWriter4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 %3, i1 noundef zeroext %4)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double -1.000000e+00, ptr %i.bh, align 8, !tbaa !67
  ret void

bb.i:                                             ; preds = %.loopexit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN2cv17AVIWriteContainerD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.be) #19
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.j ], [ %i.bi, %bb.i ]
  tail call void @_ZN2cv5mjpeg19mjpeg_buffer_keeperD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.a) #19
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv17AVIWriteContainerC1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv5mjpeg16MotionJpegWriter4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.b = tail call noundef zeroext i1 @_ZNK2cv17AVIWriteContainer14isOpenedStreamEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
  br i1 %i.b, label %bb.b, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !101, !range !103, !noundef !96
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2cv17AVIWriteContainer13endWriteChunkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
  tail call void @_ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef 0, i32 noundef 1)
  tail call void @_ZN2cv17AVIWriteContainer14finishWriteAVIEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
  br label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit

_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !86
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.o, label %bb.e

bb.e:                                             ; preds = %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !33
  %i.o = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 46) #24 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.7) #24
  %.not17 = icmp eq i32 %i.p, 0
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.8) #24
  %.not18 = icmp eq i32 %i.q, 0
  br i1 %.not18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(5) @.str.9) #24
  %.not19 = icmp eq i32 %i.r, 0
  br i1 %.not19, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.s = tail call noundef zeroext i1 @_ZN2cv17AVIWriteContainer13initContainerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, double noundef %2, i64 %3, i1 noundef zeroext %4)
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = fcmp ult double %2, 1.000000e+00
  br i1 %i.t, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb, ptr noundef nonnull @.str.1, i32 noundef 441) #20
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8, !tbaa !33     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.y = load i64, ptr %i.w, align 8, !tbaa !10
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %i.u

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 7.500000e+01, ptr %i.aa, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.ab, align 8, !tbaa !101
  tail call void @_ZN2cv17AVIWriteContainer13startWriteAVIEi(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef 1)
  tail call void @_ZN2cv17AVIWriteContainer17writeStreamHeaderENS_6CodecsE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.e, %bb.h, %bb.i, %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit
  %.1 = phi i1 [ false, %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit ], [ false, %bb.e ], [ true, %bb.n ], [ false, %bb.h ], [ false, %bb.i ]
  ret i1 %.1
}

; Function Attrs: nounwind
declare void @_ZN2cv17AVIWriteContainerD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg19mjpeg_buffer_keeperD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #21
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  tail call void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg16MotionJpegWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN2cv5mjpeg16MotionJpegWriterE, i64 16), ptr %0, align 8, !tbaa !69
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.b = invoke noundef zeroext i1 @_ZNK2cv17AVIWriteContainer14isOpenedStreamEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  br i1 %i.b, label %bb.b, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !101, !range !103, !noundef !96
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv17AVIWriteContainer13endWriteChunkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %.noexc1 unwind label %bb.f

.noexc1:                                          ; preds = %bb.d
  invoke void @_ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE(ptr noundef nonnull align 8 dereferenceable(136) %i.a, i32 noundef 0, i32 noundef 1)
          to label %.noexc2 unwind label %bb.f

.noexc2:                                          ; preds = %.noexc1
  invoke void @_ZN2cv17AVIWriteContainer14finishWriteAVIEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
          to label %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit unwind label %bb.f

_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit:      ; preds = %bb.c, %bb.b, %.noexc, %.noexc2
  tail call void @_ZN2cv17AVIWriteContainerD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.a) #19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %_ZN2cv5mjpeg19mjpeg_buffer_keeperD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !94
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #21
  br label %_ZN2cv5mjpeg19mjpeg_buffer_keeperD2Ev.exit

_ZN2cv5mjpeg19mjpeg_buffer_keeperD2Ev.exit:       ; preds = %_ZN2cv5mjpeg16MotionJpegWriter5closeEv.exit, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(112) %i.r) #19
  ret void

bb.f:                                             ; preds = %.noexc2, %.noexc1, %bb.d, %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5mjpeg16MotionJpegWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZN2cv5mjpeg16MotionJpegWriterD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 280) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef double @_ZNK2cv5mjpeg16MotionJpegWriter11getPropertyEi(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.f [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !52
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102  ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr i8, ptr %i.d, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !85
  %i.n = uitofp i64 %i.m to double
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load double, ptr %i.o, align 8, !tbaa !67
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.e, %bb.b
  %.0 = phi double [ %i.b, %bb.b ], [ -1.000000e+00, %bb.c ], [ %i.p, %bb.e ], [ %i.n, %bb.d ], [ -1.000000e+00, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv5mjpeg16MotionJpegWriter11setPropertyEid(ptr noundef nonnull align 8 dereferenceable(280) %0, i32 noundef %1, double noundef %2) unnamed_addr #17 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 1, label %.sink.split
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b
  %.sink6 = phi i64 [ 136, %bb.b ], [ 8, %bb.a ]
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6
  store double %2, ptr %i.a, align 8, !tbaa !220
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv5mjpeg16MotionJpegWriter8isOpenedEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef zeroext i1 @_ZNK2cv17AVIWriteContainer14isOpenedStreamEv(ptr noundef nonnull align 8 dereferenceable(136) %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.8", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.8", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1), !noalias !223
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226, !noalias !223
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.f = invoke noundef i64 @_ZNK2cv17AVIWriteContainer12getStreamPosEv(ptr noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.d unwind label %bb.ba      ; 2 uses

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.g = load i32, ptr %2, align 8, !tbaa !233
  %i.h = lshr i32 %i.g, 5
  %i.i = and i32 %i.h, 127                        ; 2 uses
  %i.j = add nuw nsw i32 %i.i, 1                  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !234  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !235  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = load i32, ptr %i.q, align 8, !tbaa !28   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.t = load i32, ptr %i.s, align 4, !tbaa !29   ; 4 uses
  %i.u = icmp eq i32 %i.i, 0                      ; 2 uses
  %i.v = icmp eq i32 %i.t, 1
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i32 %i.l, %i.n
  %i.x = icmp eq i32 %i.p, %i.r
  %or.cond64 = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond64, label %bb.al, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 471) #20
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !10
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn58 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.z, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.bc

bb.k:                                             ; preds = %bb.d
  %trunc = trunc nuw i32 %i.j to i8
  switch i8 %trunc, label %bb.z [
    i8 4, label %bb.l
    i8 3, label %bb.s
  ]

bb.l:                                             ; preds = %bb.k
  %i.af = icmp eq i32 %i.l, %i.n
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = icmp eq i32 %i.p, %i.r
  %i.ah = icmp eq i32 %i.t, 3
  %or.cond3 = and i1 %i.ag, %i.ah
  br i1 %or.cond3, label %bb.al, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 476) #20
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.r:                                             ; preds = %bb.o
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.r
  %i.an = load i64, ptr %i.al, align 8, !tbaa !10
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.q
  %.pn56 = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.aj, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bc

bb.s:                                             ; preds = %bb.k
  %i.ap = icmp eq i32 %i.l, %i.n
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = icmp eq i32 %i.p, %i.r
  %i.ar = icmp eq i32 %i.t, 3
  %or.cond5 = and i1 %i.aq, %i.ar
  br i1 %or.cond5, label %bb.al, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 481) #20
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.y:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !33    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.y
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !10
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.x
  %.pn54 = phi { ptr, i32 } [ %i.as, %bb.x ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %i.at, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %bb.bc

bb.z:                                             ; preds = %bb.k
  %i.az = icmp eq i32 %i.t, 3
  %or.cond7 = and i1 %i.u, %i.az
  br i1 %or.cond7, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.ba = icmp eq i32 %i.l, %i.n
  %i.bb = mul nsw i32 %i.r, 3
  %i.bc = icmp eq i32 %i.p, %i.bb
  %or.cond66 = select i1 %i.ba, i1 %i.bc, i1 false
  br i1 %or.cond66, label %bb.al, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 486) #20
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.af:                                            ; preds = %bb.ac
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %9, align 8, !tbaa !33    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.af
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.ae
  %.pn52 = phi { ptr, i32 } [ %i.bd, %bb.ae ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.be, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.bc

bb.ag:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv5mjpeg16MotionJpegWriter5writeERKNS_11_InputArrayE, ptr noundef nonnull @.str.1, i32 noundef 490) #20
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ag
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

bb.ak:                                            ; preds = %bb.ah
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = load ptr, ptr %11, align 8, !tbaa !33   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76: ; preds = %bb.ak
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.aj ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76 ], [ %i.bl, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.bc

bb.al:                                            ; preds = %bb.aa, %bb.t, %bb.m, %bb.e
  %.0 = phi i32 [ 2, %bb.t ], [ 0, %bb.e ], [ 1, %bb.m ], [ 3, %bb.aa ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !101, !range !103, !noundef !96
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bu = invoke noundef i32 @_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE(ptr noundef nonnull align 8 dereferenceable(136) %i.e, i32 noundef 0, i32 noundef 1)
          to label %bb.an unwind label %bb.ba

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN2cv17AVIWriteContainer15startWriteChunkEj(ptr noundef nonnull align 8 dereferenceable(136) %i.e, i32 noundef %i.bu)
          to label %bb.ao unwind label %bb.ba

bb.ao:                                            ; preds = %bb.an, %bb.al
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !236
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !85
  %i.bz = trunc i64 %i.by to i32
  invoke void @_ZN2cv5mjpeg16MotionJpegWriter14writeFrameDataEPKhiii(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %i.bw, i32 noundef %i.bz, i32 noundef %.0, i32 noundef %i.j)
          to label %bb.ap unwind label %bb.ba

bb.ap:                                            ; preds = %bb.ao
  %i.ca = load i8, ptr %i.br, align 8, !tbaa !101, !range !103, !noundef !96
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.bb, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cc = invoke noundef i64 @_ZNK2cv17AVIWriteContainer12getStreamPosEv(ptr noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.ar unwind label %bb.ba

bb.ar:                                            ; preds = %bb.aq
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !237
  %i.cf = sub i64 %i.f, %i.ce                     ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !238 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !239
  %.not.i.i = icmp eq ptr %i.ci, %i.ck
  br i1 %.not.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 %i.cf, ptr %i.ci, align 8, !tbaa !85
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !238
  br label %_ZN2cv17AVIWriteContainer15pushFrameOffsetEm.exit

bb.at:                                            ; preds = %bb.ar
  %i.cm = load ptr, ptr %i.cg, align 8, !tbaa !240 ; 4 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.cp = sub i64 %i.cn, %i.co                    ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 9223372036854775800
  br i1 %i.cq, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.at
  %i.cr = ashr exact i64 %i.cp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 1)
  %i.cs = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cr ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.cr
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 1152921504606846975)
  %i.cv = select i1 %i.ct, i64 1152921504606846975, i64 %i.cu ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cw = shl nuw nsw i64 %i.cv, 3
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cw) #22
          to label %.noexc79 unwind label %bb.ba  ; 4 uses

.noexc79:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cp ; 2 uses
  store i64 %i.cf, ptr %i.cy, align 8, !tbaa !85
  %i.cz = icmp sgt i64 %i.cp, 0
  br i1 %i.cz, label %bb.au, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.au:                                            ; preds = %.noexc79
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cx, ptr align 8 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.au, %.noexc79
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.db = load ptr, ptr %i.cj, align 8, !tbaa !239
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = sub i64 %i.dc, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dd) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !240
  store ptr %i.da, ptr %i.ch, align 8, !tbaa !238
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cv
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !239
  br label %_ZN2cv17AVIWriteContainer15pushFrameOffsetEm.exit

_ZN2cv17AVIWriteContainer15pushFrameOffsetEm.exit: ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.as
  %i.df = sub i64 %i.cc, %i.f
  %i.dg = add i64 %i.df, -8                       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !238 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !239
  %.not.i.i80 = icmp eq ptr %i.dj, %i.dl
  br i1 %.not.i.i80, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZN2cv17AVIWriteContainer15pushFrameOffsetEm.exit
  store i64 %i.dg, ptr %i.dj, align 8, !tbaa !85
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !238
  br label %_ZN2cv17AVIWriteContainer13pushFrameSizeEm.exit

bb.ax:                                            ; preds = %_ZN2cv17AVIWriteContainer15pushFrameOffsetEm.exit
  %i.dn = load ptr, ptr %i.dh, align 8, !tbaa !240 ; 4 uses
  %i.do = ptrtoint ptr %i.dj to i64
  %i.dp = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 5 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i81

.invoke:                                          ; preds = %bb.ax, %bb.at
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
          to label %.cont unwind label %bb.ba

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i81: ; preds = %bb.ax
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i82 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i82, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i.i83 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i83)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #22
          to label %.noexc88 unwind label %bb.ba  ; 4 uses

.noexc88:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i81
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.dq ; 2 uses
  store i64 %i.dg, ptr %i.dz, align 8, !tbaa !85
  %i.ea = icmp sgt i64 %i.dq, 0
  br i1 %i.ea, label %bb.ay, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i84

bb.ay:                                            ; preds = %.noexc88
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %i.dn, i64 %i.dq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i84

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i84: ; preds = %bb.ay, %.noexc88
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.not.i17.i.i.i85 = icmp eq ptr %i.dn, null
  br i1 %.not.i17.i.i.i85, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i86, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i84
  %i.ec = load ptr, ptr %i.dk, align 8, !tbaa !239
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.ee) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i86

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i86: ; preds = %bb.az, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i84
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !240
  store ptr %i.eb, ptr %i.di, align 8, !tbaa !238
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ef, ptr %i.dk, align 8, !tbaa !239
  br label %_ZN2cv17AVIWriteContainer13pushFrameSizeEm.exit

_ZN2cv17AVIWriteContainer13pushFrameSizeEm.exit:  ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i86, %bb.aw
  invoke void @_ZN2cv17AVIWriteContainer13endWriteChunkEv(ptr noundef nonnull align 8 dereferenceable(136) %i.e)
          to label %bb.bb unwind label %bb.ba

bb.ba:                                            ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i81, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i, %bb.ao, %bb.an, %bb.am, %_ZNK2cv11_InputArray6getMatEi.exit, %bb.aq, %_ZN2cv17AVIWriteContainer13pushFrameSizeEm.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bb:                                            ; preds = %_ZN2cv17AVIWriteContainer13pushFrameSizeEm.exit, %bb.ap
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret i1 true

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78, %bb.ba
  %.pn60.pn.pn = phi { ptr, i32 } [ %.pn52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ], [ %i.eg, %bb.ba ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit78 ], [ %.pn58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv5mjpeg16MotionJpegWriter16getCaptureDomainEv(ptr noundef nonnull align 8 dereferenceable(280) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret i32 2200
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %2 = alloca %"struct.std::_Deque_iterator", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !61, !noalias !245
  store <2 x ptr> %i.g, ptr %1, align 16, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !246, !noalias !245
  store <2 x ptr> %i.i, ptr %i.h, align 16, !tbaa !246
  %i.j = load <2 x ptr>, ptr %i.d, align 8, !tbaa !61, !noalias !247
  store <2 x ptr> %i.j, ptr %2, align 16, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load <2 x ptr>, ptr %i.e, align 8, !tbaa !246, !noalias !247
  store <2 x ptr> %i.l, ptr %i.k, align 16, !tbaa !246
  invoke void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dead_on_return %1, ptr noundef nonnull align 8 dead_on_return %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %0, align 8, !tbaa !98     ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !99   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = icmp ult ptr %i.n, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !61
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 480) #21
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.t = icmp ult ptr %.06.i.i, %i.o
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, !llvm.loop !1

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !98
  br label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i, %bb.c
  %i.u = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i ], [ %i.m, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !97
  %i.x = shl i64 %i.w, 3
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #21
  br label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = udiv i64 %1, 12                          ; 2 uses
  %i.b = urem i64 %1, 12
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !97
  %i.e = icmp ugt i64 %1, -4611686018427387941
  br i1 %i.e, label %.noexc3.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit, !prof !92

.noexc3.i:                                        ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #22 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !98
  %i.i = load i64, ptr %i.d, align 8, !tbaa !97
  %i.j = sub i64 %i.i, %i.f
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.o, %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_allocate_nodeEv.exit.i ], [ %i.l, %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.n = invoke noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #22
          to label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_allocate_nodeEv.exit.i unwind label %bb.b

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.n, ptr %.011.i, align 8, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_create_nodesEPPS2_S6_.exit, !llvm.loop !248

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #19 ; 0 uses
  %i.t = icmp ult ptr %i.l, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.l, %bb.b ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i, align 8, !tbaa !61
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 480) #21
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.w = icmp ult ptr %i.v, %.011.i
  br i1 %i.w, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i, !llvm.loop !1

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i: ; preds = %.lr.ph.i.i, %bb.b
  invoke void @__cxa_rethrow() #20
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #23
  unreachable

bb.e:                                             ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  unreachable

.body:                                            ; preds = %bb.c
  %i.aa = extractvalue { ptr, i32 } %i.x, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #19 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !98
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !97
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #20
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.af

_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE15_M_create_nodesEPPS2_S6_.exit: ; preds = %_ZNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_M_allocate_nodeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !57
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !61  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !57
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !61 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 480
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !60
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !249
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.b
  store ptr %i.at, ptr %i.am, align 8, !tbaa !93
  ret void

bb.h:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #23
  unreachable

bb.i:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE19_M_destroy_data_auxESt15_Deque_iteratorIS2_RS2_PS2_ES8_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.027 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = icmp ult ptr %.027, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.cc, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %i.f, %.lcssa
  %i.g = load ptr, ptr %1, align 8, !tbaa !58     ; 4 uses
  br i1 %.not, label %bb.q, label %bb.n

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11
  %.028 = phi ptr [ %.0, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11 ], [ %.027, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %.028, align 8, !tbaa !61  ; 24 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !94
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph
  %.05.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.o = load ptr, ptr %.05.i.i.ptr.1, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.1, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.1

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.1: ; preds = %bb.c, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i
  %.05.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.u = load ptr, ptr %.05.i.i.ptr.2, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.2 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.2, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.2, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.2

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.2: ; preds = %bb.d, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.1
  %.05.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.aa = load ptr, ptr %.05.i.i.ptr.3, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.3, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.3, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.3

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.3: ; preds = %bb.e, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.2
  %.05.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.ag = load ptr, ptr %.05.i.i.ptr.4, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i.i.i.4, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.4, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !94
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.4

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.4: ; preds = %bb.f, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.3
  %.05.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.h, i64 200
  %i.am = load ptr, ptr %.05.i.i.ptr.5, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.5 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.5, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.5, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.4
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !94
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ar) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.5

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.5: ; preds = %bb.g, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.4
  %.05.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  %i.as = load ptr, ptr %.05.i.i.ptr.6, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.6, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.6, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.5
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !94
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.as to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ax) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.6

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.6: ; preds = %bb.h, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.5
  %.05.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %i.ay = load ptr, ptr %.05.i.i.ptr.7, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.7, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.6
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !94
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.7

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.7: ; preds = %bb.i, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.6
  %.05.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.be = load ptr, ptr %.05.i.i.ptr.8, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.8, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.8, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.7
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !94
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.8

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.8: ; preds = %bb.j, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.7
  %.05.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %i.bk = load ptr, ptr %.05.i.i.ptr.9, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.9 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.9, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.9, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !94
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.9

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.9: ; preds = %bb.k, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.8
  %.05.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  %i.bq = load ptr, ptr %.05.i.i.ptr.10, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.10 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.10, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.10, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.9
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !94
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.10

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.10: ; preds = %bb.l, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.9
  %.05.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.bw = load ptr, ptr %.05.i.i.ptr.11, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i.11 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.11, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !94
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.11: ; preds = %bb.m, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i.10
  %.0 = getelementptr inbounds nuw i8, ptr %.028, i64 8 ; 2 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !57  ; 2 uses
  %i.cd = icmp ult ptr %.0, %i.cc
  br i1 %i.cd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !250

bb.n:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.g, %i.cf
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %bb.n, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9
  %.05.i.i7 = phi ptr [ %i.cm, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9 ], [ %i.g, %bb.n ] ; 3 uses
  %i.cg = load ptr, ptr %.05.i.i7, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i8 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i.i8, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i6
  %i.ch = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !94
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9: ; preds = %bb.o, %.lr.ph.i.i6
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i7, i64 40 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.cm, %i.cf
  br i1 %.not.i.i10, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11, label %.lr.ph.i.i6, !llvm.loop !251

_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11: ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i9, %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !59 ; 2 uses
  %i.cp = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %.not4.i.i12 = icmp eq ptr %i.co, %i.cp
  br i1 %.not4.i.i12, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit18, label %.lr.ph.i.i13

.lr.ph.i.i13:                                     ; preds = %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16
  %.05.i.i14 = phi ptr [ %i.cw, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16 ], [ %i.co, %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11 ] ; 3 uses
  %i.cq = load ptr, ptr %.05.i.i14, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i15 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i15, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i13
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i14, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !94
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16: ; preds = %bb.p, %.lr.ph.i.i13
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i14, i64 40 ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.cw, %i.cp
  br i1 %.not.i.i17, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit18, label %.lr.ph.i.i13, !llvm.loop !251

bb.q:                                             ; preds = %._crit_edge
  %i.cx = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %.not4.i.i19 = icmp eq ptr %i.g, %i.cx
  br i1 %.not4.i.i19, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit18, label %.lr.ph.i.i20

.lr.ph.i.i20:                                     ; preds = %bb.q, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23
  %.05.i.i21 = phi ptr [ %i.de, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23 ], [ %i.g, %bb.q ] ; 3 uses
  %i.cy = load ptr, ptr %.05.i.i21, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i.i.i.i22 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i22, label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i20
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i21, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !94
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = sub i64 %i.db, %i.dc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef %i.dd) #21
  br label %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23

_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23: ; preds = %bb.r, %.lr.ph.i.i20
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i21, i64 40 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.de, %i.cx
  br i1 %.not.i.i24, label %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit18, label %.lr.ph.i.i20, !llvm.loop !251

_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit18: ; preds = %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i16, %_ZSt8_DestroyIN2cv5mjpeg12mjpeg_bufferEEvPT_.exit.i.i23, %bb.q, %_ZSt8_DestroyIPN2cv5mjpeg12mjpeg_bufferEEvT_S4_.exit11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #16

declare noundef zeroext i1 @_ZN2cv17AVIWriteContainer13initContainerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEb(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(32), double noundef, i64, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer13startWriteAVIEi(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer17writeStreamHeaderENS_6CodecsE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK2cv17AVIWriteContainer14isOpenedStreamEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer13endWriteChunkEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer10writeIndexEiNS_10StreamTypeE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer14finishWriteAVIEv(ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #4

declare noundef i32 @_ZN2cv17AVIWriteContainer11getAVIIndexEiNS_10StreamTypeE(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN2cv17AVIWriteContainer15startWriteChunkEj(ptr noundef nonnull align 8 dereferenceable(136), i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #5

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN2cv12IVideoWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !89
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !90
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !252
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !252
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !10
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !53
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { noreturn nounwind }
attributes #24 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTSN2cv9BitStreamE", !14, i64 0}
!16 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!17 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0}
!18 = !{!"_ZTSSt12__shared_ptrIN2cv9BitStreamELN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0, !17, i64 8}
!19 = !{!"_ZTSSt10shared_ptrIN2cv9BitStreamEE", !18, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"p1 long", !14, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseImSaImEE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorImSaImEE", !24, i64 0}
!26 = !{!"_ZTSN2cv17AVIWriteContainerE", !19, i64 0, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !20, i64 32, !25, i64 40, !25, i64 64, !25, i64 88, !25, i64 112}
!27 = !{!26, !7, i64 20}
!28 = !{!26, !7, i64 24}
!29 = !{!26, !7, i64 28}
!30 = !{!"p1 omnipotent char", !14, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !31, i64 0, !20, i64 8, !6, i64 16}
!33 = !{!32, !30, i64 0}
!34 = !{!"_ZTSN2cv12IVideoWriterE"}
!35 = !{!"double", !6, i64 0}
!36 = !{!"bool", !6, i64 0}
!37 = !{!"any p2 pointer", !14, i64 0}
!38 = !{!"p2 _ZTSN2cv5mjpeg12mjpeg_bufferE", !37, i64 0}
!39 = !{!"p1 _ZTSN2cv5mjpeg12mjpeg_bufferE", !14, i64 0}
!40 = !{!"_ZTSSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_E", !39, i64 0, !39, i64 8, !39, i64 16, !38, i64 24}
!41 = !{!"_ZTSNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE16_Deque_impl_dataE", !38, i64 0, !20, i64 8, !40, i64 16, !40, i64 48}
!42 = !{!"_ZTSNSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE11_Deque_implE", !41, i64 0}
!43 = !{!"_ZTSSt11_Deque_baseIN2cv5mjpeg12mjpeg_bufferESaIS2_EE", !42, i64 0}
!44 = !{!"_ZTSSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE", !43, i64 0}
!45 = !{!"p1 int", !14, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIjSaIjEE", !48, i64 0}
!50 = !{!"_ZTSN2cv5mjpeg19mjpeg_buffer_keeperE", !44, i64 0, !49, i64 80, !7, i64 104, !7, i64 108}
!51 = !{!"_ZTSN2cv5mjpeg16MotionJpegWriterE", !34, i64 0, !35, i64 8, !36, i64 16, !50, i64 24, !35, i64 136, !26, i64 144}
!52 = !{!51, !35, i64 8}
!53 = !{!7, !7, i64 0}
!54 = !{!"short", !6, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!50, !7, i64 108}
!57 = !{!40, !38, i64 24}
!58 = !{!40, !39, i64 0}
!59 = !{!40, !39, i64 8}
!60 = !{!40, !39, i64 16}
!61 = !{!39, !39, i64 0}
!62 = !{!"_ZTSN2cv5mjpeg12mjpeg_bufferE", !49, i64 0, !7, i64 24, !7, i64 28, !7, i64 32}
!63 = !{!62, !7, i64 24}
!64 = !{!62, !7, i64 28}
!65 = !{!62, !7, i64 32}
!66 = !{!50, !7, i64 104}
!67 = !{!51, !35, i64 136}
!68 = !{!"vtable pointer", !5, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTSN2cv5mjpeg19mjpeg_buffer_keeperE", !14, i64 0}
!71 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!72 = !{!"p1 short", !14, i64 0}
!73 = !{!"_ZTSN2cv5mjpeg12MjpegEncoderE", !71, i64 0, !70, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !30, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !45, i64 56, !45, i64 64, !72, i64 72, !30, i64 80, !7, i64 88}
!74 = !{!73, !7, i64 16}
!75 = !{!73, !7, i64 20}
!76 = !{!73, !7, i64 24}
!77 = !{!73, !30, i64 32}
!78 = !{!73, !7, i64 40}
!79 = !{!73, !7, i64 44}
!80 = !{!73, !7, i64 48}
!81 = !{!45, !45, i64 0}
!82 = !{!73, !30, i64 80}
!83 = !{!73, !7, i64 88}
!84 = !{!31, !30, i64 0}
!85 = !{!20, !20, i64 0}
!86 = !{!32, !20, i64 8}
!87 = !{!46, !45, i64 0}
!88 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!89 = !{!88, !7, i64 8}
!90 = !{!88, !7, i64 12}
!91 = !{!17, !16, i64 0}
!92 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!93 = !{!41, !39, i64 48}
!94 = !{!46, !45, i64 16}
!95 = !{!46, !45, i64 8}
!96 = !{}
!97 = !{!41, !20, i64 8}
!98 = !{!41, !38, i64 0}
!99 = !{!41, !38, i64 72}
!100 = !{!41, !38, i64 40}
!101 = !{!51, !36, i64 16}
!102 = !{!21, !21, i64 0}
!103 = !{i8 0, i8 2}
!104 = distinct !{!104, !11, !12, !13}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11, !12, !13}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11, !13, !12}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11, !12, !13}
!112 = distinct !{!112, !11, !13, !12}
!113 = distinct !{!113, !11}
!114 = distinct !{!114, !11}
!115 = distinct !{!115, !11}
!116 = distinct !{!116, !11, !122}
!117 = distinct !{!117, !11, !122}
!118 = distinct !{!118, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!119 = distinct !{!119, !118, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!120 = distinct !{!120, !11}
!121 = distinct !{!121, !11}
!122 = !{!"llvm.loop.peeled.count", i32 1}
!123 = !{!119}
!124 = !{!70, !70, i64 0}
!125 = !{!72, !72, i64 0}
!126 = distinct !{!126, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!127 = distinct !{!127, !126, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!128 = distinct !{!128, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!129 = distinct !{!129, !128, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!130 = distinct !{!130, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!131 = distinct !{!131, !130, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = !{!127}
!135 = !{!129}
!136 = !{!131}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, i1 true, !"_ZN2cvL7makePtrINS_5mjpeg16MotionJpegWriterEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEbEEENS_3PtrIT_EEDpRKT0_"}
!139 = distinct !{!139, !138, !"_ZN2cvL7makePtrINS_5mjpeg16MotionJpegWriterEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS_5Size_IiEEbEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!140 = distinct !{!140, i1 true, !"_ZSt11make_sharedIN2cv5mjpeg16MotionJpegWriterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKdRKNS0_5Size_IiEERKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESL_E4typeEEDpOT0_"}
!141 = distinct !{!141, !140, !"_ZSt11make_sharedIN2cv5mjpeg16MotionJpegWriterEJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKdRKNS0_5Size_IiEERKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESL_E4typeEEDpOT0_: argument 0"}
!142 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN2cv12IVideoWriterELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!143 = !{!"p1 _ZTSN2cv15VideoParameters14VideoParameterE", !14, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTSN2cv15VideoParameters14VideoParameterE", !7, i64 0, !7, i64 4, !36, i64 8}
!146 = !{!145, !7, i64 0}
!147 = !{!145, !36, i64 8}
!148 = !{!145, !7, i64 4}
!149 = !{!141, !139}
!150 = !{!"p1 _ZTSN2cv12IVideoWriterE", !14, i64 0}
!151 = !{!"_ZTSSt12__shared_ptrIN2cv12IVideoWriterELN9__gnu_cxx12_Lock_policyE2EE", !150, i64 0, !17, i64 8}
!152 = !{!151, !150, i64 0}
!153 = distinct !{!153, i1 true, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE3endEv"}
!154 = distinct !{!154, !153, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE3endEv: argument 0"}
!155 = distinct !{!155, !11}
!156 = !{!41, !39, i64 64}
!157 = !{!154}
!158 = distinct !{!158, !11}
!159 = distinct !{!159, !11}
!160 = distinct !{!160, !11}
!161 = distinct !{!161, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!162 = distinct !{!162, !161, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!163 = distinct !{!163, !11}
!164 = distinct !{!164, !11}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11}
!167 = distinct !{!167, !11, !179}
!168 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!169 = !{!168, !7, i64 0}
!170 = !{!73, !72, i64 72}
!171 = !{i64 2}
!172 = !{!168, !7, i64 4}
!173 = !{!73, !70, i64 8}
!174 = !{i64 8}
!175 = !{!162}
!176 = !{!73, !45, i64 64}
!177 = !{i64 4}
!178 = !{!73, !45, i64 56}
!179 = !{!"llvm.loop.unswitch.partial.disable"}
!180 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!181 = distinct !{!181, !11}
!182 = distinct !{!182, !11}
!183 = distinct !{!183, !11}
!184 = distinct !{!184, i1 false, !"LVerDomain"}
!185 = distinct !{!185, !184}
!186 = distinct !{!186, !184}
!187 = distinct !{!187, !11, !12, !13}
!188 = distinct !{!188, !11, !12, !13}
!189 = distinct !{!189, !195}
!190 = distinct !{!190, !11, !12}
!191 = distinct !{!191, !11}
!192 = !{!185}
!193 = !{!186}
!194 = !{!"branch_weights", i32 4, i32 12}
!195 = !{!"llvm.loop.unroll.disable"}
!196 = distinct !{!196, !11}
!197 = distinct !{!197, i1 false, !"LVerDomain"}
!198 = distinct !{!198, !197}
!199 = distinct !{!199, !197}
!200 = distinct !{!200, !197}
!201 = distinct !{!201, !11, !12, !13}
!202 = distinct !{!202, !11, !12}
!203 = !{!198}
!204 = !{!199}
!205 = !{!200}
!206 = distinct !{!206, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!207 = distinct !{!207, !206, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!208 = distinct !{!208, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!209 = distinct !{!209, !208, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!210 = distinct !{!210, !11}
!211 = !{!207}
!212 = !{!209}
!213 = distinct !{null}
!214 = distinct !{null}
!215 = !{!"_ZTSSt9type_info", !30, i64 8}
!216 = !{!215, !30, i64 8}
!217 = distinct !{!217, i1 true, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El"}
!218 = distinct !{!218, !217, !"_ZStplRKSt15_Deque_iteratorIN2cv5mjpeg12mjpeg_bufferERS2_PS2_El: argument 0"}
!219 = !{!218}
!220 = !{!35, !35, i64 0}
!221 = distinct !{!221, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!222 = distinct !{!222, !221, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!223 = !{!222}
!224 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!225 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !14, i64 8, !224, i64 16}
!226 = !{!225, !14, i64 8}
!227 = !{!"p1 _ZTSN2cv12MatAllocatorE", !14, i64 0}
!228 = !{!"p1 _ZTSN2cv8UMatDataE", !14, i64 0}
!229 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!230 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !229, i64 4, !7, i64 8, !6, i64 12}
!231 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!232 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !30, i64 48, !227, i64 56, !228, i64 64, !230, i64 72, !231, i64 128}
!233 = !{!232, !7, i64 0}
!234 = !{!232, !7, i64 12}
!235 = !{!232, !7, i64 8}
!236 = !{!232, !30, i64 24}
!237 = !{!26, !20, i64 32}
!238 = !{!22, !21, i64 8}
!239 = !{!22, !21, i64 16}
!240 = !{!22, !21, i64 0}
!241 = distinct !{!241, i1 true, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE5beginEv"}
!242 = distinct !{!242, !241, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE5beginEv: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE3endEv"}
!244 = distinct !{!244, !243, !"_ZNSt5dequeIN2cv5mjpeg12mjpeg_bufferESaIS2_EE3endEv: argument 0"}
!245 = !{!242}
!246 = !{!14, !14, i64 0}
!247 = !{!244}
!248 = distinct !{!248, !11}
!249 = !{!41, !39, i64 16}
!250 = distinct !{!250, !11}
!251 = distinct !{!251, !11}
!252 = distinct !{null, null}
end_hunk_0
