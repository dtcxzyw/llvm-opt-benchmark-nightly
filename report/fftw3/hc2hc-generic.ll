Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2hc-generic?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@apply_dit:bb.a
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit81, label %.prol.preheader80, !llvm.loop !57

.prol.loopexit81:                                 ; preds = %.prol.preheader80, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.ie, %.prol.preheader80 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ig, %.prol.preheader80 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.if, %.prol.preheader80 ]
  br i1 %i.gh, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit81, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.jl, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit81 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.jn, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.jm, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %i.ih = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.ii = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ii, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ih, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.ij = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.il = load double, ptr %i.ij, align 8, !tbaa !33
  %i.im = load double, ptr %i.ik, align 8, !tbaa !33
  store double %i.im, ptr %i.ij, align 8, !tbaa !33
  store double %i.il, ptr %i.ik, align 8, !tbaa !33
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.dx ; 3 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ik, i64 %i.dx ; 3 uses
  %i.ip = load double, ptr %i.in, align 8, !tbaa !33
  %i.iq = load double, ptr %i.io, align 8, !tbaa !33
  store double %i.iq, ptr %i.in, align 8, !tbaa !33
  store double %i.ip, ptr %i.io, align 8, !tbaa !33
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.dx ; 3 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.io, i64 %i.dx ; 3 uses
  %i.it = load double, ptr %i.ir, align 8, !tbaa !33
  %i.iu = load double, ptr %i.is, align 8, !tbaa !33
  store double %i.iu, ptr %i.ir, align 8, !tbaa !33
  store double %i.it, ptr %i.is, align 8, !tbaa !33
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.dx ; 3 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.is, i64 %i.dx ; 3 uses
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !33
  %i.iy = load double, ptr %i.iw, align 8, !tbaa !33
  store double %i.iy, ptr %i.iv, align 8, !tbaa !33
  store double %i.ix, ptr %i.iw, align 8, !tbaa !33
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.dx ; 3 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.dx ; 3 uses
  %i.jb = load double, ptr %i.iz, align 8, !tbaa !33
  %i.jc = load double, ptr %i.ja, align 8, !tbaa !33
  store double %i.jc, ptr %i.iz, align 8, !tbaa !33
  store double %i.jb, ptr %i.ja, align 8, !tbaa !33
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.dx ; 3 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.dx ; 3 uses
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !33
  %i.jg = load double, ptr %i.je, align 8, !tbaa !33
  store double %i.jg, ptr %i.jd, align 8, !tbaa !33
  store double %i.jf, ptr %i.je, align 8, !tbaa !33
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.dx ; 3 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.dx ; 3 uses
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !33
  %i.jk = load double, ptr %i.ji, align 8, !tbaa !33
  store double %i.jk, ptr %i.jh, align 8, !tbaa !33
  store double %i.jj, ptr %i.ji, align 8, !tbaa !33
  %i.jl = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.dx
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.jl, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit81
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.jo = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.jo, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !58

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.jq = icmp slt i64 %i.ds, 1
  %i.jr = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.jr, i1 true, i1 %i.jq
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.js = mul nsw i64 %i.dq, %i.dl
  %i.jt = add nsw i64 %i.ds, -1
  %xtraiter78 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.ju = icmp ult i64 %i.jt, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.kb, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.ka, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.js ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jx, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jz, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jy, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.jv = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.jw = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.jw, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.jv, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jx = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter78
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jx, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jz, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jy, %.prol.preheader ]
  br i1 %i.ju, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.ka = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.kb = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.ka, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !58

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.lg, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.li, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.lh, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.kc = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.kd = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.kd, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.kc, ptr %.03034.i.i, align 8, !tbaa !33
  %i.ke = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.kg = load double, ptr %i.ke, align 8, !tbaa !33
  %i.kh = load double, ptr %i.kf, align 8, !tbaa !33
  store double %i.kh, ptr %i.ke, align 8, !tbaa !33
  store double %i.kg, ptr %i.kf, align 8, !tbaa !33
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.dx ; 3 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.dx ; 3 uses
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !33
  %i.kl = load double, ptr %i.kj, align 8, !tbaa !33
  store double %i.kl, ptr %i.ki, align 8, !tbaa !33
  store double %i.kk, ptr %i.kj, align 8, !tbaa !33
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.dx ; 3 uses
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.dx ; 3 uses
  %i.ko = load double, ptr %i.km, align 8, !tbaa !33
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !33
  store double %i.kp, ptr %i.km, align 8, !tbaa !33
  store double %i.ko, ptr %i.kn, align 8, !tbaa !33
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.dx ; 3 uses
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %i.dx ; 3 uses
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !33
  %i.kt = load double, ptr %i.kr, align 8, !tbaa !33
  store double %i.kt, ptr %i.kq, align 8, !tbaa !33
  store double %i.ks, ptr %i.kr, align 8, !tbaa !33
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.dx ; 3 uses
  %i.kv = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.dx ; 3 uses
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !33
  %i.kx = load double, ptr %i.kv, align 8, !tbaa !33
  store double %i.kx, ptr %i.ku, align 8, !tbaa !33
  store double %i.kw, ptr %i.kv, align 8, !tbaa !33
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.dx ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.dx ; 3 uses
  %i.la = load double, ptr %i.ky, align 8, !tbaa !33
  %i.lb = load double, ptr %i.kz, align 8, !tbaa !33
  store double %i.lb, ptr %i.ky, align 8, !tbaa !33
  store double %i.la, ptr %i.kz, align 8, !tbaa !33
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.dx ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kz, i64 %i.dx ; 3 uses
  %i.le = load double, ptr %i.lc, align 8, !tbaa !33
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !33
  store double %i.lf, ptr %i.lc, align 8, !tbaa !33
  store double %i.le, ptr %i.ld, align 8, !tbaa !33
  %i.lg = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.dx
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.lg, %i.dt
  br i1 %exitcond.not.i.i.7, label %..loopexit_crit_edge.i.i, label %.preheader.i.new, !llvm.loop !3

reorder_dit.exit:                                 ; preds = %..loopexit_crit_edge.i.i, %swapri.exit.us.us.us.i.loopexit, %bytwiddle.exit, %.preheader.lr.ph.split.us.i, %.preheader.lr.ph.split.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dif(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %i.k = mul nsw i64 %i.f, %i.d                   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 12 uses
  %i.p = add i64 %i.o, %i.m                       ; 4 uses
  %i.q = icmp sgt i64 %i.h, 0
  br i1 %i.q, label %.lr.ph82.i, label %reorder_dif.exit

.lr.ph82.i:                                       ; preds = %bb.a
  %i.r = mul i64 %i.f, %i.m
  %factor.op.mul.i.reass.i = sub i64 0, %i.r      ; 2 uses
  %i.s = sub i64 0, %i.f                          ; 36 uses
  %i.t = add i64 %i.b, -1                         ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = icmp sgt i64 %i.b, 2
  br i1 %i.v, label %.lr.ph82.split.us.i, label %.lr.ph82.split.i

.lr.ph82.split.us.i:                              ; preds = %.lr.ph82.i
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %.lr.ph37.i.us.us.us.preheader.i, label %reorder_dif.exit

.lr.ph37.i.us.us.us.preheader.i:                  ; preds = %.lr.ph82.split.us.i
  %i.x = add nsw i64 %i.b, -3
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = shl i64 %i.m, 3                         ; 7 uses
  %i.ab = shl i64 %i.d, 3                         ; 6 uses
  %i.ac = shl i64 %i.j, 3
  %i.ad = shl i64 %i.y, 3                         ; 4 uses
  %i.ae = add i64 %i.ad, 8
  %i.af = mul i64 %i.d, %i.ae
  %i.ag = shl i64 %i.o, 3                         ; 4 uses
  %i.ah = mul i64 %i.b, %i.d
  %i.ai = shl i64 %i.ah, 3
  %i.aj = add i64 %i.ai, 8
  %i.ak = add i64 %i.aa, %i.ag
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = shl i64 %i.b, 3                         ; 2 uses
  %i.an = sub i64 %i.am, %i.ad
  %i.ao = mul i64 %i.d, %i.an
  %i.ap = add i64 %i.ao, 8
  %i.aq = sub i64 %i.ap, %i.aa
  %i.ar = mul i64 %i.d, -8                        ; 5 uses
  %i.as = mul i64 %i.d, %i.t
  %i.at = add i64 %i.as, %i.m
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.am, -8
  %i.aw = sub i64 %i.av, %i.ad
  %i.ax = mul i64 %i.d, %i.aw
  %i.ay = shl i64 %i.d, 4
  %i.az = or disjoint i64 %i.ay, 8
  %i.ba = add i64 %i.aa, %i.ag
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.ad, 16
  %i.bd = mul i64 %i.d, %i.bc
  %i.be = add i64 %i.bd, 8
  %i.bf = sub i64 %i.be, %i.aa
  %i.bg = add i64 %i.o, %i.m
  %i.bh = getelementptr i8, ptr %1, i64 %i.aa
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.ab
  %i.bj = getelementptr i8, ptr %1, i64 %i.af
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.aa
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.ag
  %i.bm = getelementptr i8, ptr %1, i64 %i.al
  %i.bn = getelementptr i8, ptr %1, i64 %i.aq
  %i.bo = getelementptr i8, ptr %1, i64 %i.au
  %i.bp = getelementptr i8, ptr %1, i64 %i.ax
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.aa
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.ag
  %i.bs = getelementptr i8, ptr %1, i64 %i.bb
  %i.bt = getelementptr i8, ptr %1, i64 %i.bf
  %xtraiter78 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.bu = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 9
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.bv = or i64 %i.ar, %i.ab
  %i.bw = icmp slt i64 %i.bv, 0
  %i.bx = or i64 %i.ar, %i.ab
  %i.by = icmp slt i64 %i.bx, 0
  %stride.check48 = icmp slt i64 %i.ab, 0
  %stride.check54 = icmp slt i64 %i.ar, 0
  %i.bz = or i64 %i.ab, %i.ar
  %i.ca = icmp slt i64 %i.bz, 0
  %i.cb = or i64 %i.ab, %i.ar
  %i.cc = icmp slt i64 %i.cb, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.cd = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.hg, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.hf, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.ce = mul i64 %i.ac, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bi, i64 %i.ce ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.bl, i64 %i.ce ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.bm, i64 %i.ce ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.bn, i64 %i.ce ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.bo, i64 %i.ce ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.br, i64 %i.ce ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.bs, i64 %i.ce ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.bt, i64 %i.ce ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.cf, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.cf = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.cg = mul nsw i64 %i.cf, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cg ; 2 uses
  %i.ch = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.ci = mul nsw i64 %i.ch, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ci ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit77, label %.prol.preheader76

.prol.preheader76:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader76
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.cl, %.prol.preheader76 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.cn, %.prol.preheader76 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.cm, %.prol.preheader76 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader76 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.cj = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.ck = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ck, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.cj, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cl = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.s ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.prol.loopexit77, label %.prol.preheader76, !llvm.loop !66

.prol.loopexit77:                                 ; preds = %.prol.preheader76, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.m, %.lr.ph.i.us.us.us.i ], [ %i.cl, %.prol.preheader76 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.cn, %.prol.preheader76 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.cm, %.prol.preheader76 ]
  br i1 %i.bu, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit77, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.ds, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit77 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.du, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.dt, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit77 ] ; 3 uses
  %i.co = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.cp = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.cp, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.co, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.cq = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.s ; 3 uses
  %i.cs = load double, ptr %i.cq, align 8, !tbaa !33
  %i.ct = load double, ptr %i.cr, align 8, !tbaa !33
  store double %i.ct, ptr %i.cq, align 8, !tbaa !33
  store double %i.cs, ptr %i.cr, align 8, !tbaa !33
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.s ; 3 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.s ; 3 uses
  %i.cw = load double, ptr %i.cu, align 8, !tbaa !33
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !33
  store double %i.cx, ptr %i.cu, align 8, !tbaa !33
  store double %i.cw, ptr %i.cv, align 8, !tbaa !33
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.s ; 3 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.s ; 3 uses
  %i.da = load double, ptr %i.cy, align 8, !tbaa !33
  %i.db = load double, ptr %i.cz, align 8, !tbaa !33
  store double %i.db, ptr %i.cy, align 8, !tbaa !33
  store double %i.da, ptr %i.cz, align 8, !tbaa !33
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.s ; 3 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.s ; 3 uses
  %i.de = load double, ptr %i.dc, align 8, !tbaa !33
  %i.df = load double, ptr %i.dd, align 8, !tbaa !33
  store double %i.df, ptr %i.dc, align 8, !tbaa !33
  store double %i.de, ptr %i.dd, align 8, !tbaa !33
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.s ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.s ; 3 uses
  %i.di = load double, ptr %i.dg, align 8, !tbaa !33
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !33
  store double %i.dj, ptr %i.dg, align 8, !tbaa !33
  store double %i.di, ptr %i.dh, align 8, !tbaa !33
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %i.s ; 3 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.s ; 3 uses
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !33
  %i.dn = load double, ptr %i.dl, align 8, !tbaa !33
  store double %i.dn, ptr %i.dk, align 8, !tbaa !33
  store double %i.dm, ptr %i.dl, align 8, !tbaa !33
  %i.do = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.s ; 3 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.s ; 3 uses
  %i.dq = load double, ptr %i.do, align 8, !tbaa !33
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !33
  store double %i.dr, ptr %i.do, align 8, !tbaa !33
  store double %i.dq, ptr %i.dp, align 8, !tbaa !33
  %i.ds = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.s
  %i.du = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.s
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.ds, %i.p
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit77
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.u
  br i1 %exitcond40.not.i.us.us.us.i, label %.lr.ph.us.us.us.i.preheader, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

.lr.ph.us.us.us.i.preheader:                      ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.dv = or i1 %found.conflict, %i.bw
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %i.dw = or i1 %found.conflict42, %i.by
  %conflict.rdx = or i1 %i.dv, %i.dw
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %i.dx = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50 = or i1 %conflict.rdx, %i.dx
  %bound051 = icmp ult ptr %scevgep33, %scevgep36
  %bound152 = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53 = and i1 %bound051, %bound152
  %i.dy = or i1 %found.conflict53, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50, %i.dy
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %i.dz = or i1 %found.conflict59, %i.ca
  %conflict.rdx62 = or i1 %conflict.rdx56, %i.dz
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %i.ea = or i1 %found.conflict65, %i.cc
  %conflict.rdx68 = or i1 %conflict.rdx62, %i.ea
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %.lr.ph.us.us.us.i.preheader, %._crit_edge.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ %i.he, %._crit_edge.us.us.us.i ], [ 1, %.lr.ph.us.us.us.i.preheader ] ; 4 uses
  %i.eb = mul nsw i64 %.07276.us.us.us.i, %i.k
  %i.ec = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.eb ; 8 uses
  %i.ed = sub nuw nsw i64 %i.b, %.07276.us.us.us.i
  %i.ee = mul nsw i64 %i.ed, %i.k
  %i.ef = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.ee ; 8 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.eg = add i64 %i.m, %index                    ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.eg ; 2 uses
  %wide.load = load <2 x double>, ptr %i.eh, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.ei = fmul <2 x double> %wide.load, splat (double 5.000000e-01) ; 2 uses
  %i.ej = sub nsw i64 %i.k, %i.eg                 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.ej
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.el, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.em = fmul <2 x double> %wide.load69, splat (double 5.000000e-01) ; 2 uses
  %reverse = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.en, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.eo = fmul <2 x double> %wide.load70, splat (double 5.000000e-01) ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ej
  %i.eq = getelementptr inbounds i8, ptr %i.ep, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.eq, align 8, !tbaa !33, !alias.scope !82
  %i.er = fmul <2 x double> %wide.load71, splat (double 5.000000e-01) ; 2 uses
  %reverse72 = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.es = fadd <2 x double> %i.ei, %reverse
  store <2 x double> %i.es, ptr %i.eh, align 8, !tbaa !33, !alias.scope !77, !noalias !78
  %i.et = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fsub <2 x double> %i.em, %i.et
  store <2 x double> %reverse73, ptr %i.el, align 8, !tbaa !33, !alias.scope !79, !noalias !80
  %i.eu = fadd <2 x double> %i.eo, %reverse72
  store <2 x double> %i.eu, ptr %i.en, align 8, !tbaa !33, !alias.scope !81, !noalias !82
  %i.ev = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fsub <2 x double> %i.er, %i.ev
  store <2 x double> %reverse74, ptr %i.eq, align 8, !tbaa !33, !alias.scope !82
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.cd, %middle.block ], [ %i.m, %.lr.ph.us.us.us.i ] ; 5 uses
  %i.ex = sub i64 %i.p, %.07375.us.us.us.i.ph
  %.neg = add i64 %.07375.us.us.us.i.ph, 1
  %xtraiter81 = and i64 %i.ex, 1
  %lcmp.mod82.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod82.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ey = mul nsw i64 %.07375.us.us.us.i.ph, %i.f ; 3 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ey ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !33
  %i.fb = fmul double %i.fa, 5.000000e-01         ; 2 uses
  %i.fc = sub nsw i64 %i.k, %i.ey                 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.fc ; 2 uses
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !33
  %i.ff = fmul double %i.fe, 5.000000e-01         ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.ey ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !33
  %i.fi = fmul double %i.fh, 5.000000e-01         ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fc ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !33
  %i.fl = fmul double %i.fk, 5.000000e-01         ; 2 uses
  %i.fm = fadd double %i.fb, %i.ff
  store double %i.fm, ptr %i.ez, align 8, !tbaa !33
  %i.fn = fsub double %i.ff, %i.fb
  store double %i.fn, ptr %i.fd, align 8, !tbaa !33
  %i.fo = fadd double %i.fi, %i.fl
  store double %i.fo, ptr %i.fg, align 8, !tbaa !33
  %i.fp = fsub double %i.fl, %i.fi
  store double %i.fp, ptr %i.fj, align 8, !tbaa !33
  %i.fq = add nsw i64 %.07375.us.us.us.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.07375.us.us.us.i.unr = phi i64 [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ], [ %i.fq, %scalar.ph.prol ]
  %i.fr = icmp eq i64 %i.bg, %.neg
  br i1 %i.fr, label %._crit_edge.us.us.us.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.hd, %scalar.ph ], [ %.07375.us.us.us.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.fs = mul nsw i64 %.07375.us.us.us.i, %i.f    ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fs ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !33
  %i.fv = fmul double %i.fu, 5.000000e-01         ; 2 uses
  %i.fw = sub nsw i64 %i.k, %i.fs                 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.fw ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !33
  %i.fz = fmul double %i.fy, 5.000000e-01         ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.fs ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !33
  %i.gc = fmul double %i.gb, 5.000000e-01         ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.fw ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !33
  %i.gf = fmul double %i.ge, 5.000000e-01         ; 2 uses
  %i.gg = fadd double %i.fv, %i.fz
  store double %i.gg, ptr %i.ft, align 8, !tbaa !33
  %i.gh = fsub double %i.fz, %i.fv
  store double %i.gh, ptr %i.fx, align 8, !tbaa !33
  %i.gi = fadd double %i.gc, %i.gf
  store double %i.gi, ptr %i.ga, align 8, !tbaa !33
  %i.gj = fsub double %i.gf, %i.gc
  store double %i.gj, ptr %i.gd, align 8, !tbaa !33
  %i.gk = add nsw i64 %.07375.us.us.us.i, 1
  %i.gl = mul nsw i64 %i.gk, %i.f                 ; 3 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !33
  %i.go = fmul double %i.gn, 5.000000e-01         ; 2 uses
  %i.gp = sub nsw i64 %i.k, %i.gl                 ; 2 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.gp ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !33
  %i.gs = fmul double %i.gr, 5.000000e-01         ; 2 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.gl ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !33
  %i.gv = fmul double %i.gu, 5.000000e-01         ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.gp ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !33
  %i.gy = fmul double %i.gx, 5.000000e-01         ; 2 uses
  %i.gz = fadd double %i.go, %i.gs
  store double %i.gz, ptr %i.gm, align 8, !tbaa !33
  %i.ha = fsub double %i.gs, %i.go
  store double %i.ha, ptr %i.gq, align 8, !tbaa !33
  %i.hb = fadd double %i.gv, %i.gy
  store double %i.hb, ptr %i.gt, align 8, !tbaa !33
  %i.hc = fsub double %i.gy, %i.gv
  store double %i.hc, ptr %i.gw, align 8, !tbaa !33
  %i.hd = add nsw i64 %.07375.us.us.us.i, 2       ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hd, %i.p
  br i1 %exitcond.not.1, label %._crit_edge.us.us.us.i, label %scalar.ph, !llvm.loop !73

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.he = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond94.not.i = icmp eq i64 %.07276.us.us.us.i, %i.z
  br i1 %exitcond94.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !74

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %i.hf = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.j
  %exitcond95.not.i = icmp eq i64 %i.hf, %i.h
  br i1 %exitcond95.not.i, label %reorder_dif.exit, label %.lr.ph37.i.us.us.us.i, !llvm.loop !75

.lr.ph82.split.i:                                 ; preds = %.lr.ph82.i
  %i.hh = icmp slt i64 %i.o, 1
  %i.hi = icmp slt i64 %i.b, 1
  %brmerge89.i = select i1 %i.hi, i1 true, i1 %i.hh
  br i1 %brmerge89.i, label %reorder_dif.exit, label %.lr.ph37.i.preheader.i

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph82.split.i
  %i.hj = mul nsw i64 %i.k, %i.b
  %i.hk = add nsw i64 %i.o, -1
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hl = icmp ult i64 %i.hk, 7
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.lr.ph37.i.preheader.i
  %.080.i = phi ptr [ %i.hs, %..loopexit_crit_edge.i.i ], [ %1, %.lr.ph37.i.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.hr, %..loopexit_crit_edge.i.i ], [ 0, %.lr.ph37.i.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.k ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.hj ; 2 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph37.i.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.ho, %.prol.preheader ], [ %i.m, %.lr.ph37.i.i ]
  %.03034.i.i.prol = phi ptr [ %i.hq, %.prol.preheader ], [ %gep39.i.i, %.lr.ph37.i.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.hp, %.prol.preheader ], [ %gep.i.i, %.lr.ph37.i.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph37.i.i ]
  %i.hm = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.hn = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.hn, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.hm, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.ho = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.s ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.s ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !76

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph37.i.i
  %.02935.i.i.unr = phi i64 [ %i.m, %.lr.ph37.i.i ], [ %i.ho, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.lr.ph37.i.i ], [ %i.hq, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.lr.ph37.i.i ], [ %i.hp, %.prol.preheader ]
  br i1 %i.hl, label %..loopexit_crit_edge.i.i, label %.lr.ph37.i.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph37.i.i.new, %.prol.loopexit
  %i.hr = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.j
  %exitcond.not.i = icmp eq i64 %i.hr, %i.h
  br i1 %exitcond.not.i, label %reorder_dif.exit, label %.lr.ph37.i.i, !llvm.loop !75

.lr.ph37.i.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph37.i.i.new
  %.02935.i.i = phi i64 [ %i.ix, %.lr.ph37.i.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.iz, %.lr.ph37.i.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.iy, %.lr.ph37.i.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ht = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.hu = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.hu, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.ht, ptr %.03034.i.i, align 8, !tbaa !33
  %i.hv = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.s ; 3 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.s ; 3 uses
  %i.hx = load double, ptr %i.hv, align 8, !tbaa !33
  %i.hy = load double, ptr %i.hw, align 8, !tbaa !33
  store double %i.hy, ptr %i.hv, align 8, !tbaa !33
  store double %i.hx, ptr %i.hw, align 8, !tbaa !33
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.s ; 3 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.s ; 3 uses
  %i.ib = load double, ptr %i.hz, align 8, !tbaa !33
  %i.ic = load double, ptr %i.ia, align 8, !tbaa !33
  store double %i.ic, ptr %i.hz, align 8, !tbaa !33
  store double %i.ib, ptr %i.ia, align 8, !tbaa !33
  %i.id = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.s ; 3 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.s ; 3 uses
  %i.if = load double, ptr %i.id, align 8, !tbaa !33
  %i.ig = load double, ptr %i.ie, align 8, !tbaa !33
  store double %i.ig, ptr %i.id, align 8, !tbaa !33
  store double %i.if, ptr %i.ie, align 8, !tbaa !33
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.s ; 3 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.s ; 3 uses
  %i.ij = load double, ptr %i.ih, align 8, !tbaa !33
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !33
  store double %i.ik, ptr %i.ih, align 8, !tbaa !33
  store double %i.ij, ptr %i.ii, align 8, !tbaa !33
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.s ; 3 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.s ; 3 uses
  %i.in = load double, ptr %i.il, align 8, !tbaa !33
  %i.io = load double, ptr %i.im, align 8, !tbaa !33
  store double %i.io, ptr %i.il, align 8, !tbaa !33
  store double %i.in, ptr %i.im, align 8, !tbaa !33
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.s ; 3 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.s ; 3 uses
  %i.ir = load double, ptr %i.ip, align 8, !tbaa !33
  %i.is = load double, ptr %i.iq, align 8, !tbaa !33
  store double %i.is, ptr %i.ip, align 8, !tbaa !33
  store double %i.ir, ptr %i.iq, align 8, !tbaa !33
  %i.it = getelementptr inbounds [8 x i8], ptr %i.ip, i64 %i.s ; 3 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.s ; 3 uses
  %i.iv = load double, ptr %i.it, align 8, !tbaa !33
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !33
  store double %i.iw, ptr %i.it, align 8, !tbaa !33
  store double %i.iv, ptr %i.iu, align 8, !tbaa !33
  %i.ix = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.s
end_hunk_0
