Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/vp8l_enc?download=true
inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@VP8LEncodeStream:bb.a
.peel.next.i.i.i:                                 ; preds = %.lr.ph292
  %i.dv = icmp sgt i32 %.131.i.i.i291, 3
  br i1 %i.dv, label %.lr.ph292, label %GetHistoBits.exit.i, !llvm.loop !0

.lr.ph292:                                        ; preds = %.peel.next.i.i.i.preheader, %.peel.next.i.i.i
  %.131.i.i.i291 = phi i32 [ %i.dw, %.peel.next.i.i.i ], [ %i.ay, %.peel.next.i.i.i.preheader ] ; 3 uses
  %i.dw = add nsw i32 %.131.i.i.i291, -1          ; 4 uses
  %i.dx = shl nuw i32 1, %i.dw                    ; 2 uses
  %i.dy = add i32 %i.dx, %i.al
  %i.dz = lshr i32 %i.dy, %i.dw
  %i.ea = add i32 %i.dx, %i.ao
  %i.eb = lshr i32 %i.ea, %i.dw
  %i.ec = mul i32 %i.dz, %i.eb
  %.not.i.i.i = icmp eq i32 %i.ec, 1
  br i1 %.not.i.i.i, label %.peel.next.i.i.i, label %.GetHistoBits.exit.i.loopexit_crit_edge, !llvm.loop !0

.GetHistoBits.exit.i.loopexit_crit_edge:          ; preds = %.lr.ph292
  br label %GetHistoBits.exit.i, !llvm.loop !0

GetHistoBits.exit.i:                              ; preds = %.peel.next.i.i.i, %.peel.next.i.i.i.preheader, %.GetHistoBits.exit.i.loopexit_crit_edge, %bb.f, %.preheader.i.i.i
  %.131.lcssa.i.i.i = phi i32 [ %.030.lcssa.i.i.i, %.preheader.i.i.i ], [ %.030.lcssa.i.i.i, %bb.f ], [ %.131.i.i.i291, %.GetHistoBits.exit.i.loopexit_crit_edge ], [ 2, %.peel.next.i.i.i.preheader ], [ 2, %.peel.next.i.i.i ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 68 ; 2 uses
  store i32 %.131.lcssa.i.i.i, ptr %i.ed, align 4, !tbaa !33
  %i.ee = icmp slt i32 %i.y, 4
  %i.ef = icmp samesign ugt i32 %i.y, 4
  %i.eg = select i1 %i.ef, i32 4, i32 5
  %i.eh = select i1 %i.ee, i32 6, i32 %i.eg
  %i.ei = call range(i32 2, 7) i32 @llvm.umin.i32(i32 range(i32 2, -2147483648) %.131.lcssa.i.i.i, i32 %i.eh) ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 %i.ei, ptr %i.ej, align 8, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !35
  br i1 %i.z, label %.preheader.preheader.i.thread, label %bb.g

.preheader.preheader.i.thread:                    ; preds = %GetHistoBits.exit.i
  %i.el = select i1 %i.ad, i32 4, i32 3
  store i32 %i.el, ptr %3, align 16, !tbaa !37
  %i.em = select i1 %i.ad, i32 0, i32 3
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.em, ptr %i.en, align 4, !tbaa !38
  br label %.preheader.i.us.preheader

bb.g:                                             ; preds = %GetHistoBits.exit.i
  %i.eo = icmp slt i32 %spec.select.i, 17
  %i.ep = add i32 %spec.select.i, -17
  %.not.i125 = icmp ult i32 %i.ep, -16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !39 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.et = load i32, ptr %i.es, align 8, !tbaa !40
  %or.cond.i.i = and i1 %i.ad, %i.eo
  br i1 %or.cond.i.i, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.eu = call ptr @WebPSafeCalloc(i64 noundef 13, i64 noundef 1024) #7 ; 30 uses
  %.not.i115.i = icmp eq ptr %i.eu, null
  br i1 %.not.i115.i, label %EncoderAnalyze.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ev = icmp sgt i32 %i.v, 0
  br i1 %i.ev, label %.preheader.lr.ph.i.i, label %._crit_edge109.split.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.i
  %i.ew = icmp sgt i32 %i.t, 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4096
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 2048
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 6144
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 1024
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 5120
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 3072
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eu, i64 7168
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 8192
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 10240
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 9216
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 11264
  %i.fi = sext i32 %i.et to i64
  br i1 %i.ew, label %.preheader.preheader.i.i, label %._crit_edge109.split.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader.lr.ph.i.i
  %i.fj = load i32, ptr %i.er, align 4, !tbaa !41
  %wide.trip.count.i.i = zext nneg i32 %i.t to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.preheader.i.i
  %.090108.i.i = phi i32 [ %i.fl, %._crit_edge.i.i ], [ %i.fj, %.preheader.preheader.i.i ]
  %.091107.i.i = phi ptr [ %i.iw, %._crit_edge.i.i ], [ %i.er, %.preheader.preheader.i.i ] ; 3 uses
  %.092106.i.i = phi ptr [ %.091107.i.i, %._crit_edge.i.i ], [ null, %.preheader.preheader.i.i ] ; 2 uses
  %.093105.i.i = phi i32 [ %i.ix, %._crit_edge.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.not102.i.i = icmp eq ptr %.092106.i.i, null
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %.1104.i.i = phi i32 [ %.090108.i.i, %.preheader.i.i ], [ %i.fl, %bb.n ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.091107.i.i, i64 %indvars.iv.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !41 ; 13 uses
  %i.fm = or i32 %i.fl, 16711680
  %i.fn = and i32 %.1104.i.i, -16711936
  %i.fo = sub i32 %i.fm, %i.fn                    ; 3 uses
  %i.fp = or i32 %i.fl, 65280
  %i.fq = and i32 %.1104.i.i, 16711935
  %i.fr = sub i32 %i.fp, %i.fq                    ; 3 uses
  %i.fs = and i32 %i.fo, -16711936
  %i.ft = and i32 %i.fr, 16711935
  %i.fu = or disjoint i32 %i.fs, %i.ft            ; 3 uses
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not102.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.092106.i.i, i64 %indvars.iv.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !41
  %i.fy = icmp eq i32 %i.fl, %i.fx
  br i1 %i.fy, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fz = lshr i32 %i.fl, 24
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !41
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !41
  %i.ge = lshr i32 %i.fl, 16                      ; 2 uses
  %i.gf = and i32 %i.ge, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.gg ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !41
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !41
  %i.gk = lshr i32 %i.fl, 8
  %i.gl = and i32 %i.gk, 255
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gm ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !41
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !41
  %i.gq = and i32 %i.fl, 255
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.gr ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !41
  %i.gu = add i32 %i.gt, 1
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !41
  %i.gv = lshr i32 %i.fo, 24
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !41
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !41
  %i.ha = lshr i32 %i.fu, 16                      ; 2 uses
  %i.hb = and i32 %i.ha, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.hc ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !41
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !41
  %i.hg = lshr i32 %i.fo, 8
  %i.hh = and i32 %i.hg, 255
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.hi ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !41
  %i.hl = add i32 %i.hk, 1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !41
  %i.hm = and i32 %i.fr, 255
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !41
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !41
  %i.hr = ashr i32 %i.fl, 8                       ; 2 uses
  %i.hs = sub nsw i32 %i.ge, %i.hr
  %i.ht = and i32 %i.hs, 255
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.hu ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !41
  %i.hx = add i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hv, align 4, !tbaa !41
  %i.hy = sub nsw i32 %i.fl, %i.hr
  %i.hz = and i32 %i.hy, 255
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !41
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !41
  %i.ie = ashr i32 %i.fu, 8                       ; 2 uses
  %i.if = sub nsw i32 %i.ha, %i.ie
  %i.ig = and i32 %i.if, 255
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ih ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !41
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.ii, align 4, !tbaa !41
  %i.il = sub i32 %i.fr, %i.ie
  %i.im = and i32 %i.il, 255
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.in ; 2 uses
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !41
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !41
  %11 = zext i32 %i.fl to i64
  %i.ir = lshr i32 %i.fl, 19
  %12 = zext nneg i32 %i.ir to i64
  %13 = add nuw nsw i64 %12, %11
  %14 = mul nuw nsw i64 %13, 969276327
  %15 = lshr i64 %14, 24
  %16 = and i64 %15, 255
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %16
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 12288 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !41
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.it, align 4, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.j, !llvm.loop !86

._crit_edge.i.i:                                  ; preds = %bb.n
  %i.iw = getelementptr inbounds [4 x i8], ptr %.091107.i.i, i64 %i.fi
  %i.ix = add nuw nsw i32 %.093105.i.i, 1         ; 2 uses
  %exitcond114.not.i.i = icmp eq i32 %i.ix, %i.v
  br i1 %exitcond114.not.i.i, label %._crit_edge109.split.i.i, label %.preheader.i.i, !llvm.loop !87

._crit_edge109.split.i.i:                         ; preds = %._crit_edge.i.i, %.preheader.lr.ph.i.i, %bb.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.eu, i64 9216 ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !41
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !41
  %i.jb = getelementptr inbounds nuw i8, ptr %i.eu, i64 11264 ; 3 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !41
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.jb, align 4, !tbaa !41
  %i.je = getelementptr inbounds nuw i8, ptr %i.eu, i64 5120 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !41
  %i.jg = add i32 %i.jf, 1
  store i32 %i.jg, ptr %i.je, align 4, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.eu, i64 3072 ; 3 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !41
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !41
  %i.jk = getelementptr inbounds nuw i8, ptr %i.eu, i64 7168 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !41
  %i.jm = add i32 %i.jl, 1
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !41
  %i.jn = getelementptr inbounds nuw i8, ptr %i.eu, i64 1024 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !41
  %i.jp = add i32 %i.jo, 1
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !41
  %i.jq = call i64 @VP8LBitsEntropy(ptr noundef %i.eu, i32 noundef 256) #7
  %i.jr = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jn, i32 noundef 256) #7
  %i.js = getelementptr inbounds nuw i8, ptr %i.eu, i64 2048
  %i.jt = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.js, i32 noundef 256) #7
  %i.ju = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jh, i32 noundef 256) #7
  %i.jv = getelementptr inbounds nuw i8, ptr %i.eu, i64 4096
  %i.jw = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jv, i32 noundef 256) #7
  %i.jx = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.je, i32 noundef 256) #7
  %i.jy = getelementptr inbounds nuw i8, ptr %i.eu, i64 6144
  %i.jz = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jy, i32 noundef 256) #7
  %i.ka = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jk, i32 noundef 256) #7
  %i.kb = getelementptr inbounds nuw i8, ptr %i.eu, i64 8192
  %i.kc = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kb, i32 noundef 256) #7
  %i.kd = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.iy, i32 noundef 256) #7
  %i.ke = getelementptr inbounds nuw i8, ptr %i.eu, i64 10240
  %i.kf = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.ke, i32 noundef 256) #7
  %i.kg = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.jb, i32 noundef 256) #7
  %i.kh = getelementptr inbounds nuw i8, ptr %i.eu, i64 12288
  %i.ki = call i64 @VP8LBitsEntropy(ptr noundef nonnull %i.kh, i32 noundef 256) #7
  %i.kj = add i64 %i.jt, %i.jq                    ; 2 uses
  %i.kk = add i64 %i.ju, %i.jr                    ; 2 uses
  %i.kl = add i64 %i.kc, %i.kj
  %i.km = add i64 %i.kl, %i.kf                    ; 2 uses
  %i.kn = add i64 %i.kd, %i.kk
  %i.ko = add i64 %i.kn, %i.kg
  %i.kp = shl nuw nsw i32 1, %i.ei                ; 2 uses
  %i.kq = add i32 %i.t, -1
  %i.kr = add i32 %i.kq, %i.kp
  %i.ks = lshr i32 %i.kr, %i.ei
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = add i32 %i.v, -1
  %i.kv = add i32 %i.ku, %i.kp
  %i.kw = lshr i32 %i.kv, %i.ei
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = mul nuw nsw i64 %i.kt, %i.kx            ; 2 uses
  %i.kz = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 96), align 16, !tbaa !41
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul i64 %i.ky, %i.la
  %i.lc = add i64 %i.ko, %i.lb                    ; 2 uses
  %i.ld = sext i32 %spec.select.i to i64
  %i.le = shl nsw i64 %i.ld, 26
  %i.lf = add i64 %i.ki, %i.le
  %i.lg = add i64 %i.jw, %i.kj
  %i.lh = add i64 %i.lg, %i.jz                    ; 2 uses
  %i.li = add i64 %i.jx, %i.kk
  %i.lj = add i64 %i.li, %i.ka
  %i.lk = load i32, ptr getelementptr inbounds nuw (i8, ptr @kLog2Table, i64 56), align 8, !tbaa !41
  %i.ll = zext i32 %i.lk to i64
  %i.lm = mul i64 %i.ky, %i.ll
  %i.ln = add i64 %i.lj, %i.lm                    ; 2 uses
  %i.lo = call i64 @llvm.umin.i64(i64 %i.lh, i64 %i.ln) ; 2 uses
  %i.lp = call i64 @llvm.umin.i64(i64 %i.lo, i64 %i.km) ; 2 uses
  %i.lq = icmp ugt i64 %i.lo, %i.km
  %i.lr = icmp ugt i64 %i.lh, %i.ln
  %spec.select125.i = zext i1 %i.lr to i32
  %spec.select125.i.1 = select i1 %i.lq, i32 2, i32 %spec.select125.i
  %i.ls = icmp ugt i64 %i.lp, %i.lc
  %spec.select125.i.2 = select i1 %i.ls, i32 3, i32 %spec.select125.i.1 ; 2 uses
  br i1 %i.ad, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge109.split.i.i
  %i.lt = call i64 @llvm.umin.i64(i64 %i.lp, i64 %i.lc)
  %i.lu = icmp ugt i64 %i.lt, %i.lf
  %spec.select125.i.3 = select i1 %i.lu, i32 4, i32 %spec.select125.i.2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge109.split.i.i
  %spec.select125.i.lcssa = phi i32 [ %spec.select125.i.3, %bb.o ], [ %spec.select125.i.2, %._crit_edge109.split.i.i ] ; 2 uses
  %i.lv = zext i32 %spec.select125.i.lcssa to i64
  %i.lw = getelementptr inbounds nuw [2 x i8], ptr @AnalyzeEntropy.kHistoPairs, i64 %i.lv ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !42
  %i.ly = zext i8 %i.lx to i64
  %.idx.i.i = shl nuw nsw i64 %i.ly, 10
  %i.lz = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !42
  %i.mc = zext i8 %i.mb to i64
  %.idx100.i.i = shl nuw nsw i64 %i.mc, 10
  %i.md = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx100.i.i ; 3 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.t
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.next125.i.i
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !41
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next125.i.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !41
  %i.mi = or i32 %i.mh, %i.mf
  %.not101.i.i.1 = icmp eq i32 %i.mi, 0
  br i1 %.not101.i.i.1, label %bb.r, label %.loopexit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next125.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i, 2 ; 2 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv.next125.i.i.1
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !41
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv.next125.i.i.1
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !41
  %i.mn = or i32 %i.mm, %i.mk
  %.not101.i.i.2 = icmp eq i32 %i.mn, 0
  br i1 %.not101.i.i.2, label %bb.s, label %.loopexit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next125.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i, 3 ; 2 uses
  %exitcond127.not.i.i.2 = icmp eq i64 %indvars.iv.next125.i.i.2, 256
  br i1 %exitcond127.not.i.i.2, label %.loopexit.i.i, label %bb.t, !llvm.loop !88

bb.t:                                             ; preds = %bb.s, %bb.p
  %indvars.iv124.i.i = phi i64 [ 1, %bb.p ], [ %indvars.iv.next125.i.i.2, %bb.s ] ; 5 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv124.i.i
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !41
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %indvars.iv124.i.i
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !41
  %i.ms = or i32 %i.mr, %i.mp
  %.not101.i.i = icmp eq i32 %i.ms, 0
  br i1 %.not101.i.i, label %bb.q, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %bb.s, %bb.r, %bb.q, %bb.t
  %.0192 = phi i32 [ 1, %bb.s ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.r ]
  call void @WebPSafeFree(ptr noundef nonnull %i.eu) #7
  br label %bb.u

bb.u:                                             ; preds = %bb.g, %.loopexit.i.i
  %.1193 = phi i32 [ %.0192, %.loopexit.i.i ], [ 1, %bb.g ] ; 3 uses
  %.2120.ph.i = phi i32 [ %spec.select125.i.lcssa, %.loopexit.i.i ], [ 4, %bb.g ] ; 2 uses
  %i.mt = icmp eq i32 %i.y, 6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !43 ; 2 uses
  %i.mw = fcmp oeq float %i.mv, 1.000000e+02
  %or.cond.i = select i1 %i.mt, i1 %i.mw, i1 false
  br i1 %or.cond.i, label %.loopexit.3.i, label %._crit_edge.i

.loopexit.3.i:                                    ; preds = %bb.u
  store i32 0, ptr %3, align 16, !tbaa !37
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.mx, align 4, !tbaa !38
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.my, align 4, !tbaa !37
  %i.mz = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 3, ptr %i.mz, align 16, !tbaa !38
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2, ptr %i.na, align 8, !tbaa !37
  %i.nb = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 3, ptr %i.nb, align 4, !tbaa !38
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 3, ptr %i.nc, align 4, !tbaa !37
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 3, ptr %i.nd, align 8, !tbaa !38
  br i1 %i.ad, label %.loopexit.loopexit.5.i, label %.preheader.preheader.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.3.i
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 4, ptr %i.ne, align 16, !tbaa !37
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 1, ptr %i.nf, align 4, !tbaa !38
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 4, ptr %i.ng, align 4, !tbaa !37
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 2, ptr %i.nh, align 16, !tbaa !38
end_hunk_0
