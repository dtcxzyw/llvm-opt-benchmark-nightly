Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/filmgrain_tmpl?download=true
inline.NumInlined: 99
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fgy_32x32xn_c:bb.a
  %i.dq = and i32 %i.dp, 255
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv322
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !8
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count
  br i1 %exitcond326.not, label %middle.block, label %scalar.ph, !llvm.loop !28

.preheader232:                                    ; preds = %._crit_edge, %middle.block
  br i1 %i.ao, label %.preheader229.lr.ph, label %._crit_edge298

.preheader229.lr.ph:                              ; preds = %.preheader232
  %i.ds = icmp sgt i32 %i.br, %i.cp
  %i.dt = load i32, ptr %i.b, align 16            ; 2 uses
  %i.du = ashr i32 %i.dt, 3
  %i.dv = and i32 %i.du, -2
  %i.dw = shl i32 %i.dt, 1
  %i.dx = and i32 %i.dw, 30                       ; 2 uses
  %invariant.op299 = add nuw nsw i32 %i.dx, 9
  %invariant.op266 = add nsw i32 %i.dv, 6         ; 2 uses
  %i.dy = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.dz = ashr i32 %i.dy, 3
  %i.ea = and i32 %i.dz, -2
  %i.eb = shl i32 %i.dy, 1
  %i.ec = and i32 %i.eb, 30                       ; 2 uses
  %invariant.op301 = add nuw nsw i32 %i.ec, 41
  %invariant.op268 = add nsw i32 %i.ea, 6         ; 2 uses
  %i.ed = icmp sgt i32 %i.cp, 0
  %invariant.op303 = add nuw nsw i32 %i.ec, 6
  %i.ee = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.ef = ashr i32 %i.ee, 3
  %i.eg = and i32 %i.ef, -2
  %i.eh = shl i32 %i.ee, 1
  %i.ei = and i32 %i.eh, 30
  %invariant.op305 = add nuw nsw i32 %i.ei, 6
  %invariant.op279 = add nsw i32 %i.eg, 6
  %invariant.op307 = add nuw nsw i32 %i.dx, 6
  %i.ej = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.ek = ashr i32 %i.ej, 3
  %i.el = and i32 %i.ek, -2
  %i.em = shl i32 %i.ej, 1
  %i.en = and i32 %i.em, 30
  %invariant.op309 = add nuw nsw i32 %i.en, 6
  %invariant.op283 = add nsw i32 %i.el, 6
  %i.eo = sext i32 %i.cp to i64
  %i.ep = sext i32 %i.bs to i64
  %wide.trip.count346 = zext nneg i32 %i.cp to i64
  br label %.preheader229

.preheader231:                                    ; preds = %.preheader231.lr.ph, %._crit_edge
  %indvars.iv335 = phi i64 [ %i.ar, %.preheader231.lr.ph ], [ %indvars.iv.next336, %._crit_edge ] ; 5 uses
  br i1 %i.cq, label %.lr.ph, label %.preheader230

.lr.ph:                                           ; preds = %.preheader231
  %i.eq = trunc nsw i64 %indvars.iv335 to i32
  %.reass259 = add i32 %invariant.op258, %i.eq
  %i.er = sext i32 %.reass259 to i64
  %i.es = getelementptr inbounds [164 x i8], ptr %6, i64 %i.er
  %i.et = mul nsw i64 %i.am, %indvars.iv335       ; 2 uses
  %gep251 = getelementptr [2 x i8], ptr %invariant.gep250, i64 %i.et
  %gep252 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.et
  %i.eu = load i32, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ev = shl nuw i32 1, %i.eu
  %i.ew = ashr i32 %i.ev, 1
  br label %bb.e

.preheader230:                                    ; preds = %bb.e, %.preheader231
  br i1 %i.cw, label %.lr.ph241, label %._crit_edge

.lr.ph241:                                        ; preds = %.preheader230
  %i.ex = trunc nsw i64 %indvars.iv335 to i32
  %i.ey = add i32 %i.ex, 3                        ; 2 uses
  %.reass261 = add i32 %i.ey, %invariant.op260
  %i.ez = sext i32 %.reass261 to i64
  %i.fa = getelementptr inbounds [164 x i8], ptr %6, i64 %i.ez
  %.reass263 = add i32 %i.ey, %invariant.op262
  %i.fb = sext i32 %.reass263 to i64
  %i.fc = getelementptr inbounds [164 x i8], ptr %6, i64 %i.fb
  %i.fd = mul nsw i64 %i.am, %indvars.iv335       ; 2 uses
  %gep254 = getelementptr [2 x i8], ptr %invariant.gep250, i64 %i.fd
  %gep256 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fd
  %i.fe = load i32, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = ashr i32 %i.ff, 1
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv327 = phi i64 [ %i.dc, %.lr.ph ], [ %indvars.iv.next328, %bb.e ] ; 4 uses
  %i.fh = trunc nsw i64 %indvars.iv327 to i32
  %.reass = add i32 %invariant.op, %i.fh
  %i.fi = sext i32 %.reass to i64
  %i.fj = getelementptr inbounds [2 x i8], ptr %i.es, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !17
  %i.fl = sext i16 %i.fk to i32
  %gep = getelementptr [2 x i8], ptr %gep251, i64 %indvars.iv327
  %gep239 = getelementptr [2 x i8], ptr %gep252, i64 %indvars.iv327
  %i.fm = load i16, ptr %gep, align 2, !tbaa !17  ; 2 uses
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !15
  %i.fq = zext i8 %i.fp to i32
  %i.fr = mul nsw i32 %i.fq, %i.fl
  %i.fs = add nsw i32 %i.ew, %i.fr
  %i.ft = ashr i32 %i.fs, %i.eu
  %i.fu = zext i16 %i.fm to i32
  %i.fv = add nsw i32 %i.ft, %i.fu                ; 2 uses
  %i.fw = icmp slt i32 %i.fv, %.0
  %i.fx = tail call i32 @llvm.smin.i32(i32 %i.fv, i32 %.0209)
  %i.fy = select i1 %i.fw, i32 %.0, i32 %i.fx
  %i.fz = trunc i32 %i.fy to i16
  store i16 %i.fz, ptr %gep239, align 2, !tbaa !17
  %indvars.iv.next328 = add nsw i64 %indvars.iv327, 1 ; 2 uses
  %i.ga = icmp slt i64 %indvars.iv.next328, %i.dd
  br i1 %i.ga, label %bb.e, label %.preheader230

._crit_edge:                                      ; preds = %bb.f, %.preheader230
  %indvars.iv.next336 = add nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond339.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count338
  br i1 %exitcond339.not, label %.preheader232, label %.preheader231

bb.f:                                             ; preds = %.lr.ph241, %bb.f
  %indvars.iv330 = phi i64 [ 0, %.lr.ph241 ], [ %indvars.iv.next331, %bb.f ] ; 5 uses
  %i.gb = trunc nuw nsw i64 %indvars.iv330 to i32 ; 2 uses
  %.reass243 = add i32 %invariant.op, %i.gb
  %i.gc = sext i32 %.reass243 to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !17
  %i.gf = sext i16 %i.ge to i32
  %.reass245 = add i32 %invariant.op244, %i.gb
  %i.gg = sext i32 %.reass245 to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.fc, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !17
  %i.gj = sext i16 %i.gi to i32
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c.w, i64 %indvars.iv330 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !8
  %i.gm = mul nsw i32 %i.gl, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !8
  %i.gp = mul nsw i32 %i.go, %i.gf
  %i.gq = add i32 %i.gm, 16
  %i.gr = add i32 %i.gq, %i.gp
  %i.gs = ashr i32 %i.gr, 5                       ; 2 uses
  %i.gt = icmp slt i32 %i.gs, %i.aa
  %i.gu = tail call i32 @llvm.smin.i32(i32 %i.gs, i32 %i.ab)
  %i.gv = select i1 %i.gt, i32 %i.aa, i32 %i.gu
  %gep247 = getelementptr inbounds nuw [2 x i8], ptr %gep254, i64 %indvars.iv330
  %gep249 = getelementptr inbounds nuw [2 x i8], ptr %gep256, i64 %indvars.iv330
  %i.gw = load i16, ptr %gep247, align 2, !tbaa !17 ; 2 uses
  %i.gx = zext i16 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !15
  %i.ha = zext i8 %i.gz to i32
  %i.hb = mul nsw i32 %i.gv, %i.ha
  %i.hc = add nsw i32 %i.hb, %i.fg
  %i.hd = ashr i32 %i.hc, %i.fe
  %i.he = zext i16 %i.gw to i32
  %i.hf = add nsw i32 %i.hd, %i.he                ; 2 uses
  %i.hg = icmp slt i32 %i.hf, %.0
  %i.hh = tail call i32 @llvm.smin.i32(i32 %i.hf, i32 %.0209)
  %i.hi = select i1 %i.hg, i32 %.0, i32 %i.hh
  %i.hj = trunc i32 %i.hi to i16
  store i16 %i.hj, ptr %gep249, align 2, !tbaa !17
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge, label %bb.f

.preheader229:                                    ; preds = %.preheader229.lr.ph, %._crit_edge276
  %indvars.iv348 = phi i64 [ 0, %.preheader229.lr.ph ], [ %indvars.iv.next349, %._crit_edge276 ] ; 9 uses
  br i1 %i.ds, label %.lr.ph265, label %.preheader

.lr.ph265:                                        ; preds = %.preheader229
  %i.hk = trunc i64 %indvars.iv348 to i32
  %i.hl = add i32 %invariant.op299, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [164 x i8], ptr %6, i64 %i.hm
  %i.ho = trunc i64 %indvars.iv348 to i32
  %i.hp = add i32 %invariant.op301, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [164 x i8], ptr %6, i64 %i.hq
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c.w, i64 %indvars.iv348 ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hw = mul nsw i64 %i.am, %indvars.iv348       ; 2 uses
  %gep290 = getelementptr [2 x i8], ptr %invariant.gep250, i64 %i.hw
  %gep292 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.hw
  %i.hx = load i32, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.hy = shl nuw i32 1, %i.hx
  %i.hz = ashr i32 %i.hy, 1
  br label %bb.g

._crit_edge298:                                   ; preds = %._crit_edge276, %.preheader232
  %i.ia = add i32 %.0211311, 32                   ; 2 uses
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = icmp ugt i64 %4, %i.ib
  br i1 %i.ic, label %bb.d, label %._crit_edge314

.preheader:                                       ; preds = %bb.g, %.preheader229
  br i1 %i.ed, label %.lr.ph275, label %._crit_edge276

.lr.ph275:                                        ; preds = %.preheader
  %10 = add nuw nsw i64 %indvars.iv348, 35        ; 2 uses
  %11 = trunc i64 %10 to i32
  %i.id = add i32 %invariant.op303, %11
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [164 x i8], ptr %6, i64 %i.ie
  %12 = trunc i64 %10 to i32
  %i.ig = add i32 %invariant.op305, %12
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds [164 x i8], ptr %6, i64 %i.ih
  %13 = add nuw nsw i64 %indvars.iv348, 3         ; 2 uses
  %14 = trunc i64 %13 to i32
  %i.ij = add i32 %invariant.op307, %14
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [164 x i8], ptr %6, i64 %i.ik
  %15 = trunc i64 %13 to i32
  %i.im = add i32 %invariant.op309, %15
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [164 x i8], ptr %6, i64 %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c.w, i64 %indvars.iv348 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !8
  %i.it = mul nsw i64 %i.am, %indvars.iv348       ; 2 uses
  %gep294 = getelementptr [2 x i8], ptr %invariant.gep250, i64 %i.it
  %gep296 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.it
  %i.iu = load i32, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.iv = shl nuw i32 1, %i.iu
  %i.iw = ashr i32 %i.iv, 1
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph265, %bb.g
  %indvars.iv340 = phi i64 [ %i.eo, %.lr.ph265 ], [ %indvars.iv.next341, %bb.g ] ; 4 uses
  %i.ix = trunc nsw i64 %indvars.iv340 to i32
  %i.iy = add i32 %i.ix, 3                        ; 2 uses
  %.reass267 = add i32 %i.iy, %invariant.op266
  %i.iz = sext i32 %.reass267 to i64
  %i.ja = getelementptr inbounds [2 x i8], ptr %i.hn, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !17
  %i.jc = sext i16 %i.jb to i32
  %.reass269 = add i32 %i.iy, %invariant.op268
  %i.jd = sext i32 %.reass269 to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %i.hr, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !17
  %i.jg = sext i16 %i.jf to i32
  %i.jh = mul nsw i32 %i.ht, %i.jg
  %i.ji = mul nsw i32 %i.hv, %i.jc
  %i.jj = add i32 %i.jh, 16
  %i.jk = add i32 %i.jj, %i.ji
  %i.jl = ashr i32 %i.jk, 5                       ; 2 uses
  %i.jm = icmp slt i32 %i.jl, %i.aa
  %i.jn = tail call i32 @llvm.smin.i32(i32 %i.jl, i32 %i.ab)
  %i.jo = select i1 %i.jm, i32 %i.aa, i32 %i.jn
  %gep271 = getelementptr [2 x i8], ptr %gep290, i64 %indvars.iv340
  %gep273 = getelementptr [2 x i8], ptr %gep292, i64 %indvars.iv340
  %i.jp = load i16, ptr %gep271, align 2, !tbaa !17 ; 2 uses
  %i.jq = zext i16 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !15
  %i.jt = zext i8 %i.js to i32
  %i.ju = mul nsw i32 %i.jo, %i.jt
  %i.jv = add nsw i32 %i.ju, %i.hz
  %i.jw = ashr i32 %i.jv, %i.hx
  %i.jx = zext i16 %i.jp to i32
  %i.jy = add nsw i32 %i.jw, %i.jx                ; 2 uses
  %i.jz = icmp slt i32 %i.jy, %.0
  %i.ka = tail call i32 @llvm.smin.i32(i32 %i.jy, i32 %.0209)
  %i.kb = select i1 %i.jz, i32 %.0, i32 %i.ka
  %i.kc = trunc i32 %i.kb to i16
  store i16 %i.kc, ptr %gep273, align 2, !tbaa !17
  %indvars.iv.next341 = add nsw i64 %indvars.iv340, 1 ; 2 uses
  %i.kd = icmp slt i64 %indvars.iv.next341, %i.ep
  br i1 %i.kd, label %bb.g, label %.preheader

._crit_edge276:                                   ; preds = %bb.h, %.preheader
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count357
  br i1 %exitcond358.not, label %._crit_edge298, label %.preheader229

bb.h:                                             ; preds = %.lr.ph275, %bb.h
  %indvars.iv343 = phi i64 [ 0, %.lr.ph275 ], [ %indvars.iv.next344, %bb.h ] ; 6 uses
  %i.ke = trunc i64 %indvars.iv343 to i32
  %i.kf = add i32 %i.ke, 3                        ; 2 uses
  %.reass278 = add i32 %i.kf, %invariant.op268
  %i.kg = sext i32 %.reass278 to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.if, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !17
  %i.kj = sext i16 %i.ki to i32
  %i.kk = trunc i64 %indvars.iv343 to i32
  %i.kl = add i32 %i.kk, 35                       ; 2 uses
  %.reass280 = add i32 %i.kl, %invariant.op279
  %i.km = sext i32 %.reass280 to i64
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.ii, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !17
  %i.kp = sext i16 %i.ko to i32
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr @fgy_32x32xn_c.w, i64 %indvars.iv343 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !8  ; 2 uses
  %i.ks = mul nsw i32 %i.kr, %i.kp
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8  ; 2 uses
  %i.kv = mul nsw i32 %i.ku, %i.kj
  %i.kw = add i32 %i.ks, 16
  %i.kx = add i32 %i.kw, %i.kv
  %i.ky = ashr i32 %i.kx, 5                       ; 2 uses
  %i.kz = icmp slt i32 %i.ky, %i.aa
  %i.la = tail call i32 @llvm.smin.i32(i32 %i.ky, i32 %i.ab)
  %i.lb = select i1 %i.kz, i32 %i.aa, i32 %i.la
  %.reass282 = add i32 %i.kf, %invariant.op266
  %i.lc = sext i32 %.reass282 to i64
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.il, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !17
  %i.lf = sext i16 %i.le to i32
  %.reass284 = add i32 %i.kl, %invariant.op283
  %i.lg = sext i32 %.reass284 to i64
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.io, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !17
  %i.lj = sext i16 %i.li to i32
  %i.lk = mul nsw i32 %i.kr, %i.lj
  %i.ll = mul nsw i32 %i.ku, %i.lf
  %i.lm = add i32 %i.ll, 16
  %i.ln = add i32 %i.lm, %i.lk
  %i.lo = ashr i32 %i.ln, 5                       ; 2 uses
  %i.lp = icmp slt i32 %i.lo, %i.aa
  %i.lq = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %i.ab)
  %i.lr = select i1 %i.lp, i32 %i.aa, i32 %i.lq
  %i.ls = mul nsw i32 %i.lb, %i.iq
  %i.lt = mul nsw i32 %i.lr, %i.is
  %i.lu = add i32 %i.ls, 16
  %i.lv = add i32 %i.lu, %i.lt
  %i.lw = ashr i32 %i.lv, 5                       ; 2 uses
  %i.lx = icmp slt i32 %i.lw, %i.aa
  %i.ly = tail call i32 @llvm.smin.i32(i32 %i.lw, i32 %i.ab)
  %i.lz = select i1 %i.lx, i32 %i.aa, i32 %i.ly
  %gep286 = getelementptr inbounds nuw [2 x i8], ptr %gep294, i64 %indvars.iv343
  %gep288 = getelementptr inbounds nuw [2 x i8], ptr %gep296, i64 %indvars.iv343
  %i.ma = load i16, ptr %gep286, align 2, !tbaa !17 ; 2 uses
  %i.mb = zext i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !15
  %i.me = zext i8 %i.md to i32
  %i.mf = mul nsw i32 %i.lz, %i.me
  %i.mg = add nsw i32 %i.mf, %i.iw
  %i.mh = ashr i32 %i.mg, %i.iu
  %i.mi = zext i16 %i.ma to i32
  %i.mj = add nsw i32 %i.mh, %i.mi                ; 2 uses
  %i.mk = icmp slt i32 %i.mj, %.0
  %i.ml = tail call i32 @llvm.smin.i32(i32 %i.mj, i32 %.0209)
  %i.mm = select i1 %i.mk, i32 %.0, i32 %i.ml
  %i.mn = trunc i32 %i.mm to i16
  store i16 %i.mn, ptr %gep288, align 2, !tbaa !17
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %._crit_edge276, label %bb.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @fguv_32x32xn_420_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) #2 {
bb.a:
  tail call fastcc void @fguv_32x32xn_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 1, i32 noundef 1, i32 noundef %13)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @fguv_32x32xn_422_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) #2 {
bb.a:
  tail call fastcc void @fguv_32x32xn_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 1, i32 noundef 0, i32 noundef %13)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @fguv_32x32xn_444_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly captures(none) %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13) #2 {
bb.a:
  tail call fastcc void @fguv_32x32xn_c(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i64 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef 0, i32 noundef 0, i32 noundef %13)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @generate_grain_uv_c(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5, i32 noundef %6) unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true) ; 2 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !11
  %.not = icmp eq i64 %3, 0
  %i.c = select i1 %.not, i32 46372, i32 18904
  %i.d = xor i32 %i.b, %i.c
  %i.e = add nsw i32 %i.a, -20
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.g = load i32, ptr %i.f, align 8, !tbaa !12
  %i.h = add nsw i32 %i.e, %i.g                   ; 2 uses
  %.not94 = icmp eq i32 %4, 0
  %i.i = select i1 %.not94, i32 82, i32 44        ; 3 uses
  %.not95 = icmp eq i32 %5, 0
  %wide.trip.count156 = select i1 %.not95, i64 73, i64 38 ; 3 uses
  %i.j = shl nuw i32 1, %i.h
  %i.k = ashr i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.preheader104

.preheader104:                                    ; preds = %bb.a, %bb.i
  %indvars.iv153 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next154, %bb.i ] ; 2 uses
  %.0100110 = phi i32 [ %i.d, %bb.a ], [ %i.do, %bb.i ]
  %i.l = getelementptr inbounds nuw [164 x i8], ptr %0, i64 %indvars.iv153
  br label %bb.j

.split.us:                                        ; preds = %bb.i
  %i.m = sub nsw i32 24, %i.a
  %i.n = shl nuw i32 128, %i.m                    ; 2 uses
  %i.o = sub nsw i32 0, %i.n                      ; 5 uses
  %i.p = add nsw i32 %i.n, -1                     ; 3 uses
end_hunk_0
