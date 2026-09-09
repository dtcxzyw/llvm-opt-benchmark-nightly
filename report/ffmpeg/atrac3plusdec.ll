Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac3plusdec?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@atrac3p_decode_frame:bb.a
  store <4 x float> %wide.load135.11, ptr %i.hr, align 4, !tbaa !30
  store <4 x float> %wide.load136.11, ptr %i.hs, align 4, !tbaa !30
  %i.ht = or disjoint i64 %i.fl, 96               ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ht ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16 ; 2 uses
  %wide.load135.12 = load <4 x float>, ptr %i.hu, align 4, !tbaa !30
  %wide.load136.12 = load <4 x float>, ptr %i.hv, align 4, !tbaa !30
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ht ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %wide.load137.12 = load <4 x float>, ptr %i.hw, align 4, !tbaa !30
  %wide.load138.12 = load <4 x float>, ptr %i.hx, align 4, !tbaa !30
  store <4 x float> %wide.load137.12, ptr %i.hu, align 4, !tbaa !30
  store <4 x float> %wide.load138.12, ptr %i.hv, align 4, !tbaa !30
  store <4 x float> %wide.load135.12, ptr %i.hw, align 4, !tbaa !30
  store <4 x float> %wide.load136.12, ptr %i.hx, align 4, !tbaa !30
  %i.hy = or disjoint i64 %i.fl, 104              ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.hy ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %wide.load135.13 = load <4 x float>, ptr %i.hz, align 4, !tbaa !30
  %wide.load136.13 = load <4 x float>, ptr %i.ia, align 4, !tbaa !30
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.hy ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16 ; 2 uses
  %wide.load137.13 = load <4 x float>, ptr %i.ib, align 4, !tbaa !30
  %wide.load138.13 = load <4 x float>, ptr %i.ic, align 4, !tbaa !30
  store <4 x float> %wide.load137.13, ptr %i.hz, align 4, !tbaa !30
  store <4 x float> %wide.load138.13, ptr %i.ia, align 4, !tbaa !30
  store <4 x float> %wide.load135.13, ptr %i.ib, align 4, !tbaa !30
  store <4 x float> %wide.load136.13, ptr %i.ic, align 4, !tbaa !30
  %i.id = or disjoint i64 %i.fl, 112              ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.id ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16 ; 2 uses
  %wide.load135.14 = load <4 x float>, ptr %i.ie, align 4, !tbaa !30
  %wide.load136.14 = load <4 x float>, ptr %i.if, align 4, !tbaa !30
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.id ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 2 uses
  %wide.load137.14 = load <4 x float>, ptr %i.ig, align 4, !tbaa !30
  %wide.load138.14 = load <4 x float>, ptr %i.ih, align 4, !tbaa !30
  store <4 x float> %wide.load137.14, ptr %i.ie, align 4, !tbaa !30
  store <4 x float> %wide.load138.14, ptr %i.if, align 4, !tbaa !30
  store <4 x float> %wide.load135.14, ptr %i.ig, align 4, !tbaa !30
  store <4 x float> %wide.load136.14, ptr %i.ih, align 4, !tbaa !30
  %i.ii = or disjoint i64 %i.fl, 120              ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 2 uses
  %wide.load135.15 = load <4 x float>, ptr %i.ij, align 4, !tbaa !30
  %wide.load136.15 = load <4 x float>, ptr %i.ik, align 4, !tbaa !30
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ii ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %wide.load137.15 = load <4 x float>, ptr %i.il, align 4, !tbaa !30
  %wide.load138.15 = load <4 x float>, ptr %i.im, align 4, !tbaa !30
  store <4 x float> %wide.load137.15, ptr %i.ij, align 4, !tbaa !30
  store <4 x float> %wide.load138.15, ptr %i.ik, align 4, !tbaa !30
  store <4 x float> %wide.load135.15, ptr %i.il, align 4, !tbaa !30
  store <4 x float> %wide.load136.15, ptr %i.im, align 4, !tbaa !30
  br label %.loopexit2.i

.loopexit2.i:                                     ; preds = %vector.body133, %bb.p
  %i.in = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv65.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !54
  %.not104.i = icmp eq i8 %i.io, 0
  br i1 %.not104.i, label %.loopexit.i, label %vector.body

vector.body:                                      ; preds = %.loopexit2.i
  %.idx.i = shl nuw nsw i64 %indvars.iv65.i, 9
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i ; 33 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %invariant.gep.i, align 4, !tbaa !30
  %wide.load131 = load <4 x float>, ptr %i.ip, align 4, !tbaa !30
  %i.iq = fneg nsz <4 x float> %wide.load
  %i.ir = fneg nsz <4 x float> %wide.load131
  store <4 x float> %i.iq, ptr %invariant.gep.i, align 4, !tbaa !30
  store <4 x float> %i.ir, ptr %i.ip, align 4, !tbaa !30
  %i.is = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 32 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 48 ; 2 uses
  %wide.load.1 = load <4 x float>, ptr %i.is, align 4, !tbaa !30
  %wide.load131.1 = load <4 x float>, ptr %i.it, align 4, !tbaa !30
  %i.iu = fneg nsz <4 x float> %wide.load.1
  %i.iv = fneg nsz <4 x float> %wide.load131.1
  store <4 x float> %i.iu, ptr %i.is, align 4, !tbaa !30
  store <4 x float> %i.iv, ptr %i.it, align 4, !tbaa !30
  %i.iw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 80 ; 2 uses
  %wide.load.2 = load <4 x float>, ptr %i.iw, align 4, !tbaa !30
  %wide.load131.2 = load <4 x float>, ptr %i.ix, align 4, !tbaa !30
  %i.iy = fneg nsz <4 x float> %wide.load.2
  %i.iz = fneg nsz <4 x float> %wide.load131.2
  store <4 x float> %i.iy, ptr %i.iw, align 4, !tbaa !30
  store <4 x float> %i.iz, ptr %i.ix, align 4, !tbaa !30
  %i.ja = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 96 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 112 ; 2 uses
  %wide.load.3 = load <4 x float>, ptr %i.ja, align 4, !tbaa !30
  %wide.load131.3 = load <4 x float>, ptr %i.jb, align 4, !tbaa !30
  %i.jc = fneg nsz <4 x float> %wide.load.3
  %i.jd = fneg nsz <4 x float> %wide.load131.3
  store <4 x float> %i.jc, ptr %i.ja, align 4, !tbaa !30
  store <4 x float> %i.jd, ptr %i.jb, align 4, !tbaa !30
  %i.je = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 128 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 144 ; 2 uses
  %wide.load.4 = load <4 x float>, ptr %i.je, align 4, !tbaa !30
  %wide.load131.4 = load <4 x float>, ptr %i.jf, align 4, !tbaa !30
  %i.jg = fneg nsz <4 x float> %wide.load.4
  %i.jh = fneg nsz <4 x float> %wide.load131.4
  store <4 x float> %i.jg, ptr %i.je, align 4, !tbaa !30
  store <4 x float> %i.jh, ptr %i.jf, align 4, !tbaa !30
  %i.ji = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 160 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 176 ; 2 uses
  %wide.load.5 = load <4 x float>, ptr %i.ji, align 4, !tbaa !30
  %wide.load131.5 = load <4 x float>, ptr %i.jj, align 4, !tbaa !30
  %i.jk = fneg nsz <4 x float> %wide.load.5
  %i.jl = fneg nsz <4 x float> %wide.load131.5
  store <4 x float> %i.jk, ptr %i.ji, align 4, !tbaa !30
  store <4 x float> %i.jl, ptr %i.jj, align 4, !tbaa !30
  %i.jm = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 192 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 208 ; 2 uses
  %wide.load.6 = load <4 x float>, ptr %i.jm, align 4, !tbaa !30
  %wide.load131.6 = load <4 x float>, ptr %i.jn, align 4, !tbaa !30
  %i.jo = fneg nsz <4 x float> %wide.load.6
  %i.jp = fneg nsz <4 x float> %wide.load131.6
  store <4 x float> %i.jo, ptr %i.jm, align 4, !tbaa !30
  store <4 x float> %i.jp, ptr %i.jn, align 4, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 224 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 240 ; 2 uses
  %wide.load.7 = load <4 x float>, ptr %i.jq, align 4, !tbaa !30
  %wide.load131.7 = load <4 x float>, ptr %i.jr, align 4, !tbaa !30
  %i.js = fneg nsz <4 x float> %wide.load.7
  %i.jt = fneg nsz <4 x float> %wide.load131.7
  store <4 x float> %i.js, ptr %i.jq, align 4, !tbaa !30
  store <4 x float> %i.jt, ptr %i.jr, align 4, !tbaa !30
  %i.ju = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 256 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 272 ; 2 uses
  %wide.load.8 = load <4 x float>, ptr %i.ju, align 4, !tbaa !30
  %wide.load131.8 = load <4 x float>, ptr %i.jv, align 4, !tbaa !30
  %i.jw = fneg nsz <4 x float> %wide.load.8
  %i.jx = fneg nsz <4 x float> %wide.load131.8
  store <4 x float> %i.jw, ptr %i.ju, align 4, !tbaa !30
  store <4 x float> %i.jx, ptr %i.jv, align 4, !tbaa !30
  %i.jy = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 288 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 304 ; 2 uses
  %wide.load.9 = load <4 x float>, ptr %i.jy, align 4, !tbaa !30
  %wide.load131.9 = load <4 x float>, ptr %i.jz, align 4, !tbaa !30
  %i.ka = fneg nsz <4 x float> %wide.load.9
  %i.kb = fneg nsz <4 x float> %wide.load131.9
  store <4 x float> %i.ka, ptr %i.jy, align 4, !tbaa !30
  store <4 x float> %i.kb, ptr %i.jz, align 4, !tbaa !30
  %i.kc = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 320 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 336 ; 2 uses
  %wide.load.10 = load <4 x float>, ptr %i.kc, align 4, !tbaa !30
  %wide.load131.10 = load <4 x float>, ptr %i.kd, align 4, !tbaa !30
  %i.ke = fneg nsz <4 x float> %wide.load.10
  %i.kf = fneg nsz <4 x float> %wide.load131.10
  store <4 x float> %i.ke, ptr %i.kc, align 4, !tbaa !30
  store <4 x float> %i.kf, ptr %i.kd, align 4, !tbaa !30
  %i.kg = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 352 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 368 ; 2 uses
  %wide.load.11 = load <4 x float>, ptr %i.kg, align 4, !tbaa !30
  %wide.load131.11 = load <4 x float>, ptr %i.kh, align 4, !tbaa !30
  %i.ki = fneg nsz <4 x float> %wide.load.11
  %i.kj = fneg nsz <4 x float> %wide.load131.11
  store <4 x float> %i.ki, ptr %i.kg, align 4, !tbaa !30
  store <4 x float> %i.kj, ptr %i.kh, align 4, !tbaa !30
  %i.kk = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 384 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 400 ; 2 uses
  %wide.load.12 = load <4 x float>, ptr %i.kk, align 4, !tbaa !30
  %wide.load131.12 = load <4 x float>, ptr %i.kl, align 4, !tbaa !30
  %i.km = fneg nsz <4 x float> %wide.load.12
  %i.kn = fneg nsz <4 x float> %wide.load131.12
  store <4 x float> %i.km, ptr %i.kk, align 4, !tbaa !30
  store <4 x float> %i.kn, ptr %i.kl, align 4, !tbaa !30
  %i.ko = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 416 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 432 ; 2 uses
  %wide.load.13 = load <4 x float>, ptr %i.ko, align 4, !tbaa !30
  %wide.load131.13 = load <4 x float>, ptr %i.kp, align 4, !tbaa !30
  %i.kq = fneg nsz <4 x float> %wide.load.13
  %i.kr = fneg nsz <4 x float> %wide.load131.13
  store <4 x float> %i.kq, ptr %i.ko, align 4, !tbaa !30
  store <4 x float> %i.kr, ptr %i.kp, align 4, !tbaa !30
  %i.ks = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 448 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 464 ; 2 uses
  %wide.load.14 = load <4 x float>, ptr %i.ks, align 4, !tbaa !30
  %wide.load131.14 = load <4 x float>, ptr %i.kt, align 4, !tbaa !30
  %i.ku = fneg nsz <4 x float> %wide.load.14
  %i.kv = fneg nsz <4 x float> %wide.load131.14
  store <4 x float> %i.ku, ptr %i.ks, align 4, !tbaa !30
  store <4 x float> %i.kv, ptr %i.kt, align 4, !tbaa !30
  %i.kw = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 480 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 496 ; 2 uses
  %wide.load.15 = load <4 x float>, ptr %i.kw, align 4, !tbaa !30
  %wide.load131.15 = load <4 x float>, ptr %i.kx, align 4, !tbaa !30
  %i.ky = fneg nsz <4 x float> %wide.load.15
  %i.kz = fneg nsz <4 x float> %wide.load131.15
  store <4 x float> %i.ky, ptr %i.kw, align 4, !tbaa !30
  store <4 x float> %i.kz, ptr %i.kx, align 4, !tbaa !30
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.body, %.loopexit2.i
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %decode_residual_spectrum.exit, label %bb.p, !llvm.loop !71

decode_residual_spectrum.exit:                    ; preds = %.loopexit.i, %.preheader10.preheader.i, %bb.o
  %wide.trip.count.i78.pre-phi = phi i64 [ %wide.trip.count54.i, %bb.o ], [ %.pre, %.preheader10.preheader.i ], [ %wide.trip.count54.i, %.loopexit.i ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.la = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.lb = getelementptr inbounds nuw [36848 x i8], ptr %i.la, i64 %indvars.iv107 ; 28 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 5 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 72 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 20464 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 17336 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 17344
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 17360
  br label %.preheader1.i79

.preheader1.i79:                                  ; preds = %.loopexit.i82, %decode_residual_spectrum.exit
  %indvars.iv15.i = phi i64 [ 0, %decode_residual_spectrum.exit ], [ %indvars.iv.next16.i, %.loopexit.i82 ] ; 12 uses
  %i.li = load i32, ptr %i.lc, align 8, !tbaa !97 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.lr.ph.i87, label %._crit_edge.i80

.lr.ph.i87:                                       ; preds = %.preheader1.i79
  %i.lk = getelementptr inbounds nuw [8192 x i8], ptr %i.x, i64 %indvars.iv15.i
  %i.ll = getelementptr inbounds nuw [8192 x i8], ptr %i.ac, i64 %indvars.iv15.i
  %i.lm = getelementptr inbounds nuw [7800 x i8], ptr %i.ld, i64 %indvars.iv15.i ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 4552
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 4544
  %i.lp = getelementptr inbounds nuw [8192 x i8], ptr %i.le, i64 %indvars.iv15.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 6488
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 6480
  %i.ls = getelementptr inbounds nuw [8192 x i8], ptr %i.ae, i64 %indvars.iv15.i
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.i87 ], [ %indvars.iv.next.i89, %bb.q ] ; 7 uses
  %i.lt = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.lu = load ptr, ptr %i.aa, align 8, !tbaa !98
  %i.lv = load ptr, ptr %i.ab, align 16, !tbaa !99
  %i.lw = shl nuw nsw i64 %indvars.iv.i88, 7      ; 4 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lk, i64 %i.lw
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lw ; 2 uses
  %i.lz = load ptr, ptr %i.ln, align 8, !tbaa !44
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %indvars.iv.i88
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !54
  %i.mc = zext i8 %i.mb to i32
  %i.md = shl nuw nsw i32 %i.mc, 1
  %i.me = load ptr, ptr %i.lo, align 8, !tbaa !43
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 %indvars.iv.i88
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !54
  %i.mh = zext i8 %i.mg to i32
  %i.mi = add nuw nsw i32 %i.md, %i.mh
  %i.mj = trunc nuw nsw i64 %indvars.iv.i88 to i32
  tail call void @ff_atrac3p_imdct(ptr noundef %i.lt, ptr noundef %i.lu, ptr noundef %i.lv, ptr noundef nonnull %i.lx, ptr noundef nonnull %i.ly, i32 noundef %i.mi, i32 noundef %i.mj) #6
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.lw
  %i.ml = load ptr, ptr %i.lq, align 8, !tbaa !46
  %i.mm = getelementptr inbounds nuw [60 x i8], ptr %i.ml, i64 %indvars.iv.i88
  %i.mn = load ptr, ptr %i.lr, align 8, !tbaa !45
  %i.mo = getelementptr inbounds nuw [60 x i8], ptr %i.mn, i64 %indvars.iv.i88
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lw
  tail call void @ff_atrac_gain_compensation(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ly, ptr noundef nonnull %i.mk, ptr noundef %i.mm, ptr noundef %i.mo, i32 noundef 128, ptr noundef nonnull %i.mp) #6
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.mq = load i32, ptr %i.lc, align 8, !tbaa !97 ; 2 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = icmp slt i64 %indvars.iv.next.i89, %i.mr
  br i1 %i.ms, label %bb.q, label %._crit_edge.i80, !llvm.loop !72

._crit_edge.i80:                                  ; preds = %bb.q, %.preheader1.i79
  %.lcssa.i = phi i32 [ %i.li, %.preheader1.i79 ], [ %i.mq, %bb.q ]
  %i.mt = getelementptr inbounds nuw [8192 x i8], ptr %i.le, i64 %indvars.iv15.i
  %i.mu = shl i32 %.lcssa.i, 7                    ; 2 uses
  %i.mv = sext i32 %i.mu to i64
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mt, i64 %i.mv
  %i.mx = sub i32 2048, %i.mu
  %i.my = sext i32 %i.mx to i64
  %i.mz = shl nsw i64 %i.my, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.mw, i8 0, i64 %i.mz, i1 false)
  %i.na = getelementptr inbounds nuw [8192 x i8], ptr %i.ae, i64 %indvars.iv15.i ; 3 uses
  %i.nb = load i32, ptr %i.lc, align 8, !tbaa !97
  %i.nc = shl i32 %i.nb, 7                        ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.nd
  %i.nf = sub i32 2048, %i.nc
  %i.ng = sext i32 %i.nf to i64
  %i.nh = shl nsw i64 %i.ng, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ne, i8 0, i64 %i.nh, i1 false)
  %i.ni = load ptr, ptr %i.lf, align 8, !tbaa !52
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !101
  %.not.i81 = icmp eq i32 %i.nj, 0
  br i1 %.not.i81, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.i80
  %i.nk = load ptr, ptr %i.lg, align 16, !tbaa !53
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !101
  %.not110.i = icmp eq i32 %i.nl, 0
  br i1 %.not110.i, label %.loopexit.i82, label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i80
  %i.nm = load i32, ptr %i.lc, align 8, !tbaa !97 ; 2 uses
  %i.nn = icmp sgt i32 %i.nm, 0
  br i1 %i.nn, label %.lr.ph6.i, label %.loopexit.i82

.lr.ph6.i:                                        ; preds = %bb.s
  %i.no = getelementptr inbounds nuw [7800 x i8], ptr %i.ld, i64 %indvars.iv15.i ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 7784
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 7792
  %i.nr = trunc nuw nsw i64 %indvars.iv15.i to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph6.i
  %i.ns = phi i32 [ %i.nm, %.lr.ph6.i ], [ %i.oe, %bb.w ]
  %indvars.iv12.i = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next13.i, %bb.w ] ; 5 uses
  %i.nt = load ptr, ptr %i.np, align 8, !tbaa !47
  %i.nu = getelementptr inbounds nuw [40 x i8], ptr %i.nt, i64 %indvars.iv12.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 32
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !104
  %.not111.i = icmp eq i32 %i.nw, 0
  br i1 %.not111.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.nx = load ptr, ptr %i.nq, align 8, !tbaa !48
  %i.ny = getelementptr inbounds nuw [40 x i8], ptr %i.nx, i64 %indvars.iv12.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !104
  %.not112.i = icmp eq i32 %i.oa, 0
  br i1 %.not112.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ob = load ptr, ptr %i.y, align 8, !tbaa !39
  %.idx.i85 = shl nuw nsw i64 %indvars.iv12.i, 9
  %i.oc = getelementptr inbounds nuw i8, ptr %i.na, i64 %.idx.i85
  %i.od = trunc nuw nsw i64 %indvars.iv12.i to i32
  tail call void @ff_atrac3p_generate_tones(ptr noundef nonnull %i.lb, ptr noundef %i.ob, i32 noundef %i.nr, i32 noundef %i.od, ptr noundef nonnull %i.oc) #6
  %.pre.i86 = load i32, ptr %i.lc, align 8, !tbaa !97
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.oe = phi i32 [ %i.ns, %bb.u ], [ %.pre.i86, %bb.v ] ; 2 uses
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1 ; 2 uses
  %i.of = sext i32 %i.oe to i64
  %i.og = icmp slt i64 %indvars.iv.next13.i, %i.of
  br i1 %i.og, label %bb.t, label %.loopexit.i82, !llvm.loop !73

.loopexit.i82:                                    ; preds = %bb.w, %bb.s, %bb.r
  %i.oh = load ptr, ptr %i.af, align 8, !tbaa !105
  %i.oi = load ptr, ptr %i.ag, align 16, !tbaa !106
  %i.oj = getelementptr inbounds nuw [1552 x i8], ptr %i.lh, i64 %indvars.iv15.i
  %i.ok = getelementptr inbounds nuw [8192 x i8], ptr %i.ah, i64 %indvars.iv15.i
  tail call void @ff_atrac3p_ipqf(ptr noundef %i.oh, ptr noundef %i.oi, ptr noundef nonnull %i.oj, ptr noundef nonnull %i.na, ptr noundef nonnull %i.ok) #6
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1 ; 2 uses
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next16.i, %wide.trip.count.i78.pre-phi
  br i1 %exitcond.not.i83, label %.preheader.i84, label %.preheader1.i79, !llvm.loop !74

.preheader.i84:                                   ; preds = %.loopexit.i82
  %4 = getelementptr inbounds nuw i8, ptr %i.lb, i64 4616 ; 2 uses
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !107
  %6 = shufflevector <2 x ptr> %5, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !107
  %7 = getelementptr inbounds nuw i8, ptr %i.lb, i64 6552 ; 2 uses
  %8 = load <2 x ptr>, ptr %7, align 8, !tbaa !108
  %9 = shufflevector <2 x ptr> %8, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %9, ptr %7, align 8, !tbaa !108
  %10 = getelementptr inbounds nuw i8, ptr %i.lb, i64 7856 ; 2 uses
  %11 = load <2 x ptr>, ptr %10, align 8, !tbaa !109
  %12 = shufflevector <2 x ptr> %11, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %12, ptr %10, align 8, !tbaa !109
  %exitcond22.not.i = icmp eq i64 %wide.trip.count.i78.pre-phi, 1
  br i1 %exitcond22.not.i, label %reconstruct_frame.exit, label %.preheader.i84.1.a

.preheader.i84.1.a:                               ; preds = %.preheader.i84
  %i.ol = getelementptr inbounds nuw i8, ptr %i.lb, i64 12416 ; 2 uses
  %i.om = load <2 x ptr>, ptr %i.ol, align 8, !tbaa !107
  %i.on = shufflevector <2 x ptr> %i.om, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.on, ptr %i.ol, align 8, !tbaa !107
  %i.oo = getelementptr inbounds nuw i8, ptr %i.lb, i64 14352 ; 2 uses
  %i.op = load <2 x ptr>, ptr %i.oo, align 8, !tbaa !108
  %i.oq = shufflevector <2 x ptr> %i.op, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.oq, ptr %i.oo, align 8, !tbaa !108
  %i.or = getelementptr inbounds nuw i8, ptr %i.lb, i64 15656 ; 2 uses
  %i.os = load <2 x ptr>, ptr %i.or, align 8, !tbaa !109
  %i.ot = shufflevector <2 x ptr> %i.os, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ot, ptr %i.or, align 8, !tbaa !109
  %exitcond22.not.i.1.a = icmp eq i64 %wide.trip.count.i78.pre-phi, 2
  br i1 %exitcond22.not.i.1.a, label %reconstruct_frame.exit, label %.preheader.i84.2.a

.preheader.i84.2.a:                               ; preds = %.preheader.i84.1.a
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lb, i64 20216 ; 2 uses
  %i.ov = load <2 x ptr>, ptr %i.ou, align 8, !tbaa !107
  %i.ow = shufflevector <2 x ptr> %i.ov, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ow, ptr %i.ou, align 8, !tbaa !107
  %i.ox = getelementptr inbounds nuw i8, ptr %i.lb, i64 22152 ; 2 uses
  %i.oy = load <2 x ptr>, ptr %i.ox, align 8, !tbaa !108
  %i.oz = shufflevector <2 x ptr> %i.oy, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.oz, ptr %i.ox, align 8, !tbaa !108
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lb, i64 23456 ; 2 uses
  %i.pb = load <2 x ptr>, ptr %i.pa, align 8, !tbaa !109
  %i.pc = shufflevector <2 x ptr> %i.pb, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pc, ptr %i.pa, align 8, !tbaa !109
  %exitcond22.not.i.2.a = icmp eq i64 %wide.trip.count.i78.pre-phi, 3
  br i1 %exitcond22.not.i.2.a, label %reconstruct_frame.exit, label %.preheader.i84.3.a

.preheader.i84.3.a:                               ; preds = %.preheader.i84.2.a
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lb, i64 28016 ; 2 uses
  %i.pe = load <2 x ptr>, ptr %i.pd, align 8, !tbaa !107
  %i.pf = shufflevector <2 x ptr> %i.pe, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pf, ptr %i.pd, align 8, !tbaa !107
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lb, i64 29952 ; 2 uses
  %i.ph = load <2 x ptr>, ptr %i.pg, align 8, !tbaa !108
  %i.pi = shufflevector <2 x ptr> %i.ph, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pi, ptr %i.pg, align 8, !tbaa !108
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lb, i64 31256 ; 2 uses
  %i.pk = load <2 x ptr>, ptr %i.pj, align 8, !tbaa !109
  %i.pl = shufflevector <2 x ptr> %i.pk, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pl, ptr %i.pj, align 8, !tbaa !109
  %exitcond22.not.i.3.a = icmp eq i64 %wide.trip.count.i78.pre-phi, 4
  br i1 %exitcond22.not.i.3.a, label %reconstruct_frame.exit, label %.preheader.i84.4.a

.preheader.i84.4.a:                               ; preds = %.preheader.i84.3.a
  %i.pm = getelementptr inbounds nuw i8, ptr %i.lb, i64 35816 ; 2 uses
  %i.pn = load <2 x ptr>, ptr %i.pm, align 8, !tbaa !107
  %i.po = shufflevector <2 x ptr> %i.pn, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.po, ptr %i.pm, align 8, !tbaa !107
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lb, i64 37752 ; 2 uses
  %i.pq = load <2 x ptr>, ptr %i.pp, align 8, !tbaa !108
  %i.pr = shufflevector <2 x ptr> %i.pq, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pr, ptr %i.pp, align 8, !tbaa !108
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lb, i64 39056 ; 2 uses
  %i.pt = load <2 x ptr>, ptr %i.ps, align 8, !tbaa !109
  %i.pu = shufflevector <2 x ptr> %i.pt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.pu, ptr %i.ps, align 8, !tbaa !109
  %exitcond22.not.i.4 = icmp eq i64 %wide.trip.count.i78.pre-phi, 5
  br i1 %exitcond22.not.i.4, label %reconstruct_frame.exit, label %.preheader.i84.5

.preheader.i84.5:                                 ; preds = %.preheader.i84.4.a
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lb, i64 43616 ; 2 uses
  %i.pw = load <2 x ptr>, ptr %i.pv, align 8, !tbaa !107
  %i.px = shufflevector <2 x ptr> %i.pw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.px, ptr %i.pv, align 8, !tbaa !107
  %i.py = getelementptr inbounds nuw i8, ptr %i.lb, i64 45552 ; 2 uses
  %i.pz = load <2 x ptr>, ptr %i.py, align 8, !tbaa !108
  %i.qa = shufflevector <2 x ptr> %i.pz, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qa, ptr %i.py, align 8, !tbaa !108
  %i.qb = getelementptr inbounds nuw i8, ptr %i.lb, i64 46856 ; 2 uses
  %i.qc = load <2 x ptr>, ptr %i.qb, align 8, !tbaa !109
  %i.qd = shufflevector <2 x ptr> %i.qc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qd, ptr %i.qb, align 8, !tbaa !109
  %exitcond22.not.i.5 = icmp eq i64 %wide.trip.count.i78.pre-phi, 6
  br i1 %exitcond22.not.i.5, label %reconstruct_frame.exit, label %.preheader.i84.6

.preheader.i84.6:                                 ; preds = %.preheader.i84.5
  %13 = getelementptr inbounds nuw i8, ptr %i.lb, i64 51416 ; 2 uses
  %14 = load <2 x ptr>, ptr %13, align 8, !tbaa !107
  %15 = shufflevector <2 x ptr> %14, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !107
  %16 = getelementptr inbounds nuw i8, ptr %i.lb, i64 53352 ; 2 uses
  %17 = load <2 x ptr>, ptr %16, align 8, !tbaa !108
  %18 = shufflevector <2 x ptr> %17, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %18, ptr %16, align 8, !tbaa !108
  %19 = getelementptr inbounds nuw i8, ptr %i.lb, i64 54656 ; 2 uses
  %20 = load <2 x ptr>, ptr %19, align 8, !tbaa !109
  %21 = shufflevector <2 x ptr> %20, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %21, ptr %19, align 8, !tbaa !109
  br label %reconstruct_frame.exit

reconstruct_frame.exit:                           ; preds = %.preheader.i84.6, %.preheader.i84.5, %.preheader.i84.4.a, %.preheader.i84.3.a, %.preheader.i84.2.a, %.preheader.i84.1.a, %.preheader.i84
  %i.qe = load <2 x ptr>, ptr %i.lf, align 8, !tbaa !110
  %i.qf = shufflevector <2 x ptr> %i.qe, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.qf, ptr %i.lf, align 8, !tbaa !110
  %i.qg = zext nneg i32 %.099 to i64              ; 7 uses
  %i.qh = load ptr, ptr %i.ai, align 16, !tbaa !56
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qg
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !54
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.qm, ptr noundef nonnull align 16 dereferenceable(8192) %i.ah, i64 8192, i1 false)
  %exitcond.not = icmp eq i64 %wide.trip.count.i78.pre-phi, 1
  br i1 %exitcond.not, label %bb.ab, label %22

22:                                               ; preds = %reconstruct_frame.exit
  %23 = load ptr, ptr %i.ai, align 16, !tbaa !56
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 1
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 %i.qg
  %26 = load i8, ptr %25, align 1, !tbaa !54
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %29, ptr noundef nonnull align 16 dereferenceable(8192) %i.aj, i64 8192, i1 false)
  %exitcond.not.1 = icmp eq i64 %wide.trip.count.i78.pre-phi, 2
  br i1 %exitcond.not.1, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %22
  %i.qn = load ptr, ptr %i.ai, align 16, !tbaa !56
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 2
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qg
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !54
  %i.qr = zext i8 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.qr
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.qt, ptr noundef nonnull align 16 dereferenceable(8192) %i.ak, i64 8192, i1 false)
  %exitcond.not.2.a = icmp eq i64 %wide.trip.count.i78.pre-phi, 3
  br i1 %exitcond.not.2.a, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.qu = load ptr, ptr %i.ai, align 16, !tbaa !56
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 3
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qg
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !54
  %i.qy = zext i8 %i.qx to i64
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.qy
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.ra, ptr noundef nonnull align 16 dereferenceable(8192) %i.al, i64 8192, i1 false)
  %exitcond.not.3.a = icmp eq i64 %wide.trip.count.i78.pre-phi, 4
  br i1 %exitcond.not.3.a, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.rb = load ptr, ptr %i.ai, align 16, !tbaa !56
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 4
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.qg
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !54
  %i.rf = zext i8 %i.re to i64
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rf
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.rh, ptr noundef nonnull align 16 dereferenceable(8192) %i.am, i64 8192, i1 false)
  %exitcond.not.4 = icmp eq i64 %wide.trip.count.i78.pre-phi, 5
  br i1 %exitcond.not.4, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ri = load ptr, ptr %i.ai, align 16, !tbaa !56
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 5
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.qg
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !54
  %i.rm = zext i8 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.rm
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.ro, ptr noundef nonnull align 16 dereferenceable(8192) %i.an, i64 8192, i1 false)
  %exitcond.not.5 = icmp eq i64 %wide.trip.count.i78.pre-phi, 6
  br i1 %exitcond.not.5, label %bb.ab, label %30

30:                                               ; preds = %bb.aa
  %31 = load ptr, ptr %i.ai, align 16, !tbaa !56
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 6
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 %i.qg
  %34 = load i8, ptr %33, align 1, !tbaa !54
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %37, ptr noundef nonnull align 16 dereferenceable(8192) %i.ao, i64 8192, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %30, %bb.aa, %bb.z, %bb.y, %bb.x, %22, %reconstruct_frame.exit
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %i.rp = add nuw nsw i32 %i.bi, %.099
  %.val = load i32, ptr %i.s, align 8, !tbaa !88  ; 2 uses
  %.val76 = load i32, ptr %i.p, align 4, !tbaa !86
  %i.rq = sub nsw i32 %.val76, %.val
  %i.rr = icmp sgt i32 %i.rq, 1
  br i1 %i.rr, label %bb.e, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %bb.ab, %bb.e, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !55
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !113
  %i.ru = icmp eq i32 %i.rt, 86055
  br i1 %i.ru, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !29
  %i.rx = load i32, ptr %i.k, align 8, !tbaa !84
  %. = tail call i32 @llvm.smin.i32(i32 %i.rw, i32 %i.rx)
  br label %.loopexit

bb.ad:                                            ; preds = %.critedge
  %i.ry = load i32, ptr %i.k, align 8, !tbaa !84
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.ad, %bb.ac, %bb.b, %bb.a, %bb.i, %bb.f, %bb.d
  %.064 = phi i32 [ %., %bb.ac ], [ %i.g, %bb.a ], [ -1094995529, %bb.d ], [ -1163346256, %bb.f ], [ -1094995529, %bb.i ], [ -1094995529, %bb.b ], [ %i.ry, %bb.ad ], [ %i.bj, %bb.j ]
  ret i32 %.064
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @atrac3p_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 65800
  tail call void @av_freep(ptr noundef nonnull %i.c) #6
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 65768
  tail call void @av_tx_uninit(ptr noundef nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 65784
  tail call void @av_tx_uninit(ptr noundef nonnull %i.f) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ff_atrac_init_gain_compensation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @set_channel_params(ptr nofree noundef writeonly captures(none) initializes((65812, 65817)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 356
  %i.c = load i32, ptr %i.b, align 4, !tbaa !114  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65812 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %i.d, i8 0, i64 5, i1 false)
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.a) #6
  switch i32 %i.c, label %bb.i [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 6, label %bb.f
    i32 7, label %bb.g
    i32 8, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  store <2 x i32> splat (i32 1), ptr %i.a, align 8, !tbaa !55
  %.sroa.323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 4, ptr %.sroa.323.0..sroa_idx, align 8, !tbaa !54
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.424.0..sroa_idx, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 1, ptr %i.e, align 16, !tbaa !37
  store i8 0, ptr %i.d, align 4, !tbaa !54
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 2>, ptr %i.a, align 8, !tbaa !55
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 3, ptr %.sroa.319.0..sroa_idx, align 8, !tbaa !54
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.420.0..sroa_idx, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 1, ptr %i.f, align 16, !tbaa !37
  store i8 1, ptr %i.d, align 4, !tbaa !54
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 3>, ptr %i.a, align 8, !tbaa !55
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 7, ptr %.sroa.315.0..sroa_idx, align 8, !tbaa !54
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 2, ptr %i.g, align 16, !tbaa !37
  store i8 1, ptr %i.d, align 4, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 65813
  store i8 0, ptr %i.h, align 1, !tbaa !54
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 4>, ptr %i.a, align 8, !tbaa !55
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 263, ptr %.sroa.311.0..sroa_idx, align 8, !tbaa !54
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 3, ptr %i.i, align 16, !tbaa !37
  store i8 1, ptr %i.d, align 4, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 65813
  store i8 0, ptr %i.j, align 1, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65814
  store i8 0, ptr %i.k, align 2, !tbaa !54
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 6>, ptr %i.a, align 8, !tbaa !55
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 63, ptr %.sroa.37.0..sroa_idx, align 8, !tbaa !54
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.48.0..sroa_idx, align 8, !tbaa !115
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 4, ptr %i.l, align 16, !tbaa !37
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.d, align 4, !tbaa !54
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 7>, ptr %i.a, align 8, !tbaa !55
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 319, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !54
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 5, ptr %i.m, align 16, !tbaa !37
  store <4 x i8> <i8 1, i8 0, i8 1, i8 0>, ptr %i.d, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 65816
  store i8 0, ptr %i.n, align 8, !tbaa !54
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  store <2 x i32> <i32 1, i32 8>, ptr %i.a, align 8, !tbaa !55
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  store i64 1599, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !54
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !115
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 65808
  store i32 5, ptr %i.o, align 16, !tbaa !37
  store <4 x i8> <i8 1, i8 0, i8 1, i8 1>, ptr %i.d, align 4, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 65816
  store i8 0, ptr %i.p, align 8, !tbaa !54
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %1, i32 noundef 16, ptr noundef nonnull @.str.5, i32 noundef %i.c) #6
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.q = zext nneg i32 %i.c to i64
  %i.r = getelementptr [8 x i8], ptr @channel_map, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 65824
  store ptr %i.s, ptr %i.t, align 16, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ -1094995529, %bb.i ], [ 0, %bb.j ]
  ret i32 %.0
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind optsize uwtable
define internal void @atrac3p_init_static() #0 {
bb.a:
  tail call void @ff_atrac3p_init_vlcs() #6
  tail call void @ff_atrac3p_init_dsp_static() #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3
end_hunk_0
