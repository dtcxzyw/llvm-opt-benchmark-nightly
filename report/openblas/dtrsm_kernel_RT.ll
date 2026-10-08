Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsm_kernel_RT?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@dtrsm_kernel_RT:bb.a
  %i.es = load double, ptr %gep.i222.4, align 8, !tbaa !12
  %i.et = fmul double %i.ef, %i.es                ; 2 uses
  store double %i.et, ptr %i.er, align 8, !tbaa !12
  store double %i.et, ptr %gep.i222.4, align 8, !tbaa !12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %gep.i222.5 = getelementptr i8, ptr %.1152, i64 40 ; 2 uses
  %i.ev = load double, ptr %gep.i222.5, align 8, !tbaa !12
  %i.ew = fmul double %i.ef, %i.ev                ; 2 uses
  store double %i.ew, ptr %i.eu, align 8, !tbaa !12
  store double %i.ew, ptr %gep.i222.5, align 8, !tbaa !12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %gep.i222.6 = getelementptr i8, ptr %.1152, i64 48 ; 2 uses
  %i.ey = load double, ptr %gep.i222.6, align 8, !tbaa !12
  %i.ez = fmul double %i.ef, %i.ey                ; 2 uses
  store double %i.ez, ptr %i.ex, align 8, !tbaa !12
  store double %i.ez, ptr %gep.i222.6, align 8, !tbaa !12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %gep.i222.7 = getelementptr i8, ptr %.1152, i64 56 ; 2 uses
  %i.fb = load double, ptr %gep.i222.7, align 8, !tbaa !12
  %i.fc = fmul double %i.ef, %i.fb                ; 2 uses
  store double %i.fc, ptr %i.fa, align 8, !tbaa !12
  store double %i.fc, ptr %gep.i222.7, align 8, !tbaa !12
  %.idx356 = shl nsw i64 %2, 6
  %i.fd = getelementptr inbounds i8, ptr %.1156, i64 %.idx356
  %i.fe = getelementptr inbounds nuw i8, ptr %.1152, i64 64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph51.split.i218, %.preheader271
  %.3158 = phi ptr [ %i.fd, %.lr.ph51.split.i218 ], [ %.1156, %.preheader271 ] ; 4 uses
  %.3154 = phi ptr [ %i.fe, %.lr.ph51.split.i218 ], [ %.1152, %.preheader271 ] ; 8 uses
  %i.ff = and i64 %0, 4
  %.not204.1 = icmp eq i64 %i.ff, 0
  br i1 %.not204.1, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.dx, label %bb.f, label %.lr.ph51.split.i218.1

bb.f:                                             ; preds = %bb.e
  %.idx357 = shl nsw i64 %i.a, 5
  %i.fg = getelementptr inbounds i8, ptr %.3158, i64 %.idx357
  %i.fh = tail call i32 @dgemm_kernel(i64 noundef 4, i64 noundef 1, i64 noundef %i.dw, double noundef -1.000000e+00, ptr noundef %i.fg, ptr noundef %i.dy, ptr noundef %.3154, i64 noundef %7) #3 ; 0 uses
  br label %.lr.ph51.split.i218.1

.lr.ph51.split.i218.1:                            ; preds = %bb.f, %bb.e
  %.idx358 = shl nsw i64 %i.dz, 5
  %i.fi = getelementptr inbounds i8, ptr %.3158, i64 %.idx358 ; 4 uses
  %i.fj = load double, ptr %i.ea, align 8, !tbaa !12 ; 4 uses
  %i.fk = load double, ptr %.3154, align 8, !tbaa !12
  %i.fl = fmul double %i.fj, %i.fk                ; 2 uses
  store double %i.fl, ptr %i.fi, align 8, !tbaa !12
  store double %i.fl, ptr %.3154, align 8, !tbaa !12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %gep.i222.1.1 = getelementptr i8, ptr %.3154, i64 8 ; 2 uses
  %i.fn = load double, ptr %gep.i222.1.1, align 8, !tbaa !12
  %i.fo = fmul double %i.fj, %i.fn                ; 2 uses
  store double %i.fo, ptr %i.fm, align 8, !tbaa !12
  store double %i.fo, ptr %gep.i222.1.1, align 8, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %gep.i222.1.2 = getelementptr i8, ptr %.3154, i64 16 ; 2 uses
  %i.fq = load double, ptr %gep.i222.1.2, align 8, !tbaa !12
  %i.fr = fmul double %i.fj, %i.fq                ; 2 uses
  store double %i.fr, ptr %i.fp, align 8, !tbaa !12
  store double %i.fr, ptr %gep.i222.1.2, align 8, !tbaa !12
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %gep.i222.1.3 = getelementptr i8, ptr %.3154, i64 24 ; 2 uses
  %i.ft = load double, ptr %gep.i222.1.3, align 8, !tbaa !12
  %i.fu = fmul double %i.fj, %i.ft                ; 2 uses
  store double %i.fu, ptr %i.fs, align 8, !tbaa !12
  store double %i.fu, ptr %gep.i222.1.3, align 8, !tbaa !12
  %.idx359 = shl nsw i64 %2, 5
  %i.fv = getelementptr inbounds i8, ptr %.3158, i64 %.idx359
  %i.fw = getelementptr inbounds nuw i8, ptr %.3154, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph51.split.i218.1, %bb.d
  %.3158.1 = phi ptr [ %i.fv, %.lr.ph51.split.i218.1 ], [ %.3158, %bb.d ] ; 4 uses
  %.3154.1 = phi ptr [ %i.fw, %.lr.ph51.split.i218.1 ], [ %.3154, %bb.d ] ; 6 uses
  %i.fx = and i64 %0, 2
  %.not204.2 = icmp eq i64 %i.fx, 0
  br i1 %.not204.2, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.dx, label %bb.i, label %.lr.ph51.split.i218.2

bb.i:                                             ; preds = %bb.h
  %.idx360 = shl nsw i64 %i.a, 4
  %i.fy = getelementptr inbounds i8, ptr %.3158.1, i64 %.idx360
  %i.fz = tail call i32 @dgemm_kernel(i64 noundef 2, i64 noundef 1, i64 noundef %i.dw, double noundef -1.000000e+00, ptr noundef %i.fy, ptr noundef %i.dy, ptr noundef %.3154.1, i64 noundef %7) #3 ; 0 uses
  br label %.lr.ph51.split.i218.2

.lr.ph51.split.i218.2:                            ; preds = %bb.i, %bb.h
  %.idx361 = shl nsw i64 %i.dz, 4
  %i.ga = getelementptr inbounds i8, ptr %.3158.1, i64 %.idx361 ; 2 uses
  %i.gb = load double, ptr %i.ea, align 8, !tbaa !12 ; 2 uses
  %i.gc = load double, ptr %.3154.1, align 8, !tbaa !12
  %i.gd = fmul double %i.gb, %i.gc                ; 2 uses
  store double %i.gd, ptr %i.ga, align 8, !tbaa !12
  store double %i.gd, ptr %.3154.1, align 8, !tbaa !12
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %gep.i222.2.1 = getelementptr i8, ptr %.3154.1, i64 8 ; 2 uses
  %i.gf = load double, ptr %gep.i222.2.1, align 8, !tbaa !12
  %i.gg = fmul double %i.gb, %i.gf                ; 2 uses
  store double %i.gg, ptr %i.ge, align 8, !tbaa !12
  store double %i.gg, ptr %gep.i222.2.1, align 8, !tbaa !12
  %.idx362 = shl nsw i64 %2, 4
  %i.gh = getelementptr inbounds i8, ptr %.3158.1, i64 %.idx362
  %i.gi = getelementptr inbounds nuw i8, ptr %.3154.1, i64 16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph51.split.i218.2, %bb.g
  %.3158.2 = phi ptr [ %i.gh, %.lr.ph51.split.i218.2 ], [ %.3158.1, %bb.g ] ; 2 uses
  %.3154.2 = phi ptr [ %i.gi, %.lr.ph51.split.i218.2 ], [ %.3154.1, %bb.g ] ; 3 uses
  %i.gj = and i64 %0, 1
  %.not204.3 = icmp eq i64 %i.gj, 0
  br i1 %.not204.3, label %.loopexit272, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.dx, label %bb.l, label %.lr.ph51.split.i218.3

bb.l:                                             ; preds = %bb.k
  %i.gk = getelementptr inbounds [8 x i8], ptr %.3158.2, i64 %i.a
  %i.gl = tail call i32 @dgemm_kernel(i64 noundef 1, i64 noundef 1, i64 noundef %i.dw, double noundef -1.000000e+00, ptr noundef %i.gk, ptr noundef %i.dy, ptr noundef %.3154.2, i64 noundef %7) #3 ; 0 uses
  br label %.lr.ph51.split.i218.3

.lr.ph51.split.i218.3:                            ; preds = %bb.l, %bb.k
  %i.gm = getelementptr inbounds [8 x i8], ptr %.3158.2, i64 %i.dz
  %i.gn = load double, ptr %i.ea, align 8, !tbaa !12
  %i.go = load double, ptr %.3154.2, align 8, !tbaa !12
  %i.gp = fmul double %i.gn, %i.go                ; 2 uses
  store double %i.gp, ptr %i.gm, align 8, !tbaa !12
  store double %i.gp, ptr %.3154.2, align 8, !tbaa !12
  br label %.loopexit272

.loopexit272:                                     ; preds = %.loopexit274..loopexit272_crit_edge, %.lr.ph51.split.i218.3, %bb.j, %bb.a
  %.2175 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.j ], [ %i.m, %.lr.ph51.split.i218.3 ], [ %i.m, %.loopexit274..loopexit272_crit_edge ]
  %.2171 = phi ptr [ %i.e, %bb.a ], [ %i.l, %bb.j ], [ %i.l, %.lr.ph51.split.i218.3 ], [ %i.l, %.loopexit274..loopexit272_crit_edge ]
  %.2 = phi i64 [ %i.a, %bb.a ], [ %i.dz, %bb.j ], [ %i.dz, %.lr.ph51.split.i218.3 ], [ %.pre341, %.loopexit274..loopexit272_crit_edge ]
  %i.gq = ashr i64 %1, 1                          ; 2 uses
  %i.gr = icmp sgt i64 %i.gq, 0
  br i1 %i.gr, label %.preheader269, label %.loopexit270

.preheader269:                                    ; preds = %.loopexit272
  %.idx = mul i64 %2, -16
  %.idx189 = mul i64 %7, -16
  %i.gs = ashr i64 %0, 4                          ; 2 uses
  %i.gt = icmp sgt i64 %i.gs, 0
  %.idx194 = shl nsw i64 %2, 7
  %i.gu = and i64 %0, 15
  %.not195 = icmp eq i64 %i.gu, 0
  %i.gv = and i64 %0, 8
  %.not196 = icmp eq i64 %i.gv, 0
  %.idx365 = shl nsw i64 %2, 6
  %i.gw = and i64 %0, 4
  %.not196.1 = icmp eq i64 %i.gw, 0
  %.idx368 = shl nsw i64 %2, 5
  %i.gx = and i64 %0, 2
  %.not196.2 = icmp eq i64 %i.gx, 0
  %.idx371 = shl nsw i64 %2, 4
  %i.gy = and i64 %0, 1
  %.not196.3 = icmp eq i64 %i.gy, 0
  br label %bb.m

bb.m:                                             ; preds = %.preheader269, %.loopexit
  %.3176 = phi ptr [ %i.ha, %.loopexit ], [ %.2175, %.preheader269 ]
  %.3172 = phi ptr [ %i.gz, %.loopexit ], [ %.2171, %.preheader269 ]
  %.1164 = phi i64 [ %i.wv, %.loopexit ], [ %i.gq, %.preheader269 ] ; 2 uses
  %.3 = phi i64 [ %.pre-phi, %.loopexit ], [ %.2, %.preheader269 ] ; 12 uses
  %i.gz = getelementptr inbounds i8, ptr %.3172, i64 %.idx ; 5 uses
  %i.ha = getelementptr inbounds i8, ptr %.3176, i64 %.idx189 ; 3 uses
  br i1 %i.gt, label %.preheader267, label %.loopexit268

.preheader267:                                    ; preds = %bb.m
  %i.hb = sub nsw i64 %2, %.3                     ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 0
  %.idx190 = shl nsw i64 %.3, 7
  %.idx191 = shl nsw i64 %.3, 4
  %i.hd = getelementptr inbounds i8, ptr %i.gz, i64 %.idx191
  %i.he = add nsw i64 %.3, -2                     ; 2 uses
  %.idx192 = shl nsw i64 %i.he, 7
  %.idx193 = shl nsw i64 %i.he, 4
  %i.hf = getelementptr inbounds i8, ptr %i.gz, i64 %.idx193 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 16 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.preheader267, %.lr.ph.us.i231.preheader
  %.2167 = phi i64 [ %i.ox, %.lr.ph.us.i231.preheader ], [ %i.gs, %.preheader267 ] ; 2 uses
  %.4159 = phi ptr [ %i.ov, %.lr.ph.us.i231.preheader ], [ %4, %.preheader267 ] ; 3 uses
  %.4 = phi ptr [ %i.ow, %.lr.ph.us.i231.preheader ], [ %i.ha, %.preheader267 ] ; 22 uses
  br i1 %i.hc, label %bb.o, label %.lr.ph.us.i231.preheader

bb.o:                                             ; preds = %bb.n
  %i.hi = getelementptr inbounds i8, ptr %.4159, i64 %.idx190
  %i.hj = tail call i32 @dgemm_kernel(i64 noundef 16, i64 noundef 2, i64 noundef %i.hb, double noundef -1.000000e+00, ptr noundef %i.hi, ptr noundef %i.hd, ptr noundef %.4, i64 noundef %7) #3 ; 0 uses
  br label %.lr.ph.us.i231.preheader

.lr.ph.us.i231.preheader:                         ; preds = %bb.o, %bb.n
  %i.hk = getelementptr inbounds i8, ptr %.4159, i64 %.idx192 ; 32 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  %i.hm = load double, ptr %i.hh, align 8, !tbaa !12 ; 16 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 136
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 144
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 160
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 168
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 176
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 184
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hk, i64 192
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 200
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 208
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hk, i64 216
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hk, i64 224
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hk, i64 232
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 240
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hk, i64 248
  %i.ic = getelementptr inbounds [8 x i8], ptr %.4, i64 %7 ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !12
  %i.ie = fmul double %i.hm, %i.id                ; 3 uses
  store double %i.ie, ptr %i.hl, align 8, !tbaa !12
  store double %i.ie, ptr %i.ic, align 8, !tbaa !12
  %i.if = fneg double %i.ie
  %i.ig = load double, ptr %i.hg, align 8, !tbaa !12
  %i.ih = load double, ptr %.4, align 8, !tbaa !12
  %i.ii = tail call double @llvm.fmuladd.f64(double %i.if, double %i.ig, double %i.ih)
  store double %i.ii, ptr %.4, align 8, !tbaa !12
  %i.ij = getelementptr i8, ptr %.4, i64 8        ; 5 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %7 ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !12
  %i.im = fmul double %i.hm, %i.il                ; 3 uses
  store double %i.im, ptr %i.hn, align 8, !tbaa !12
  store double %i.im, ptr %i.ik, align 8, !tbaa !12
  %i.in = fneg double %i.im
  %i.io = load double, ptr %i.hg, align 8, !tbaa !12
  %i.ip = load double, ptr %i.ij, align 8, !tbaa !12
  %i.iq = tail call double @llvm.fmuladd.f64(double %i.in, double %i.io, double %i.ip)
  store double %i.iq, ptr %i.ij, align 8, !tbaa !12
  %i.ir = getelementptr i8, ptr %.4, i64 16       ; 5 uses
  %i.is = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %7 ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !12
  %i.iu = fmul double %i.hm, %i.it                ; 3 uses
  store double %i.iu, ptr %i.ho, align 8, !tbaa !12
  store double %i.iu, ptr %i.is, align 8, !tbaa !12
  %i.iv = fneg double %i.iu
  %i.iw = load double, ptr %i.hg, align 8, !tbaa !12
  %i.ix = load double, ptr %i.ir, align 8, !tbaa !12
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iw, double %i.ix)
  store double %i.iy, ptr %i.ir, align 8, !tbaa !12
  %i.iz = getelementptr i8, ptr %.4, i64 24       ; 5 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %7 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !12
  %i.jc = fmul double %i.hm, %i.jb                ; 3 uses
  store double %i.jc, ptr %i.hp, align 8, !tbaa !12
  store double %i.jc, ptr %i.ja, align 8, !tbaa !12
  %i.jd = fneg double %i.jc
  %i.je = load double, ptr %i.hg, align 8, !tbaa !12
  %i.jf = load double, ptr %i.iz, align 8, !tbaa !12
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.je, double %i.jf)
  store double %i.jg, ptr %i.iz, align 8, !tbaa !12
  %i.jh = getelementptr i8, ptr %.4, i64 32       ; 5 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %7 ; 2 uses
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !12
  %i.jk = fmul double %i.hm, %i.jj                ; 3 uses
  store double %i.jk, ptr %i.hq, align 8, !tbaa !12
  store double %i.jk, ptr %i.ji, align 8, !tbaa !12
  %i.jl = fneg double %i.jk
  %i.jm = load double, ptr %i.hg, align 8, !tbaa !12
  %i.jn = load double, ptr %i.jh, align 8, !tbaa !12
  %i.jo = tail call double @llvm.fmuladd.f64(double %i.jl, double %i.jm, double %i.jn)
  store double %i.jo, ptr %i.jh, align 8, !tbaa !12
  %i.jp = getelementptr i8, ptr %.4, i64 40       ; 5 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %7 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !12
  %i.js = fmul double %i.hm, %i.jr                ; 3 uses
  store double %i.js, ptr %i.hr, align 8, !tbaa !12
  store double %i.js, ptr %i.jq, align 8, !tbaa !12
  %i.jt = fneg double %i.js
  %i.ju = load double, ptr %i.hg, align 8, !tbaa !12
  %i.jv = load double, ptr %i.jp, align 8, !tbaa !12
  %i.jw = tail call double @llvm.fmuladd.f64(double %i.jt, double %i.ju, double %i.jv)
  store double %i.jw, ptr %i.jp, align 8, !tbaa !12
  %i.jx = getelementptr i8, ptr %.4, i64 48       ; 5 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %7 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !12
  %i.ka = fmul double %i.hm, %i.jz                ; 3 uses
  store double %i.ka, ptr %i.hs, align 8, !tbaa !12
  store double %i.ka, ptr %i.jy, align 8, !tbaa !12
  %i.kb = fneg double %i.ka
  %i.kc = load double, ptr %i.hg, align 8, !tbaa !12
  %i.kd = load double, ptr %i.jx, align 8, !tbaa !12
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kb, double %i.kc, double %i.kd)
  store double %i.ke, ptr %i.jx, align 8, !tbaa !12
  %i.kf = getelementptr i8, ptr %.4, i64 56       ; 5 uses
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %7 ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !12
  %i.ki = fmul double %i.hm, %i.kh                ; 3 uses
  store double %i.ki, ptr %i.ht, align 8, !tbaa !12
  store double %i.ki, ptr %i.kg, align 8, !tbaa !12
  %i.kj = fneg double %i.ki
  %i.kk = load double, ptr %i.hg, align 8, !tbaa !12
  %i.kl = load double, ptr %i.kf, align 8, !tbaa !12
  %i.km = tail call double @llvm.fmuladd.f64(double %i.kj, double %i.kk, double %i.kl)
  store double %i.km, ptr %i.kf, align 8, !tbaa !12
  %i.kn = getelementptr i8, ptr %.4, i64 64       ; 5 uses
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kn, i64 %7 ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !12
  %i.kq = fmul double %i.hm, %i.kp                ; 3 uses
  store double %i.kq, ptr %i.hu, align 8, !tbaa !12
  store double %i.kq, ptr %i.ko, align 8, !tbaa !12
  %i.kr = fneg double %i.kq
  %i.ks = load double, ptr %i.hg, align 8, !tbaa !12
  %i.kt = load double, ptr %i.kn, align 8, !tbaa !12
  %i.ku = tail call double @llvm.fmuladd.f64(double %i.kr, double %i.ks, double %i.kt)
  store double %i.ku, ptr %i.kn, align 8, !tbaa !12
  %i.kv = getelementptr i8, ptr %.4, i64 72       ; 5 uses
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %7 ; 2 uses
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !12
  %i.ky = fmul double %i.hm, %i.kx                ; 3 uses
  store double %i.ky, ptr %i.hv, align 8, !tbaa !12
  store double %i.ky, ptr %i.kw, align 8, !tbaa !12
  %i.kz = fneg double %i.ky
  %i.la = load double, ptr %i.hg, align 8, !tbaa !12
  %i.lb = load double, ptr %i.kv, align 8, !tbaa !12
  %i.lc = tail call double @llvm.fmuladd.f64(double %i.kz, double %i.la, double %i.lb)
  store double %i.lc, ptr %i.kv, align 8, !tbaa !12
  %i.ld = getelementptr i8, ptr %.4, i64 80       ; 5 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.ld, i64 %7 ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !12
  %i.lg = fmul double %i.hm, %i.lf                ; 3 uses
  store double %i.lg, ptr %i.hw, align 8, !tbaa !12
  store double %i.lg, ptr %i.le, align 8, !tbaa !12
  %i.lh = fneg double %i.lg
  %i.li = load double, ptr %i.hg, align 8, !tbaa !12
  %i.lj = load double, ptr %i.ld, align 8, !tbaa !12
  %i.lk = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.li, double %i.lj)
  store double %i.lk, ptr %i.ld, align 8, !tbaa !12
  %i.ll = getelementptr i8, ptr %.4, i64 88       ; 5 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %7 ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !12
  %i.lo = fmul double %i.hm, %i.ln                ; 3 uses
  store double %i.lo, ptr %i.hx, align 8, !tbaa !12
  store double %i.lo, ptr %i.lm, align 8, !tbaa !12
  %i.lp = fneg double %i.lo
  %i.lq = load double, ptr %i.hg, align 8, !tbaa !12
  %i.lr = load double, ptr %i.ll, align 8, !tbaa !12
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lp, double %i.lq, double %i.lr)
  store double %i.ls, ptr %i.ll, align 8, !tbaa !12
  %i.lt = getelementptr i8, ptr %.4, i64 96       ; 5 uses
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %7 ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !12
  %i.lw = fmul double %i.hm, %i.lv                ; 3 uses
  store double %i.lw, ptr %i.hy, align 8, !tbaa !12
  store double %i.lw, ptr %i.lu, align 8, !tbaa !12
  %i.lx = fneg double %i.lw
  %i.ly = load double, ptr %i.hg, align 8, !tbaa !12
  %i.lz = load double, ptr %i.lt, align 8, !tbaa !12
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.lx, double %i.ly, double %i.lz)
  store double %i.ma, ptr %i.lt, align 8, !tbaa !12
  %i.mb = getelementptr i8, ptr %.4, i64 104      ; 5 uses
  %i.mc = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %7 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !12
  %i.me = fmul double %i.hm, %i.md                ; 3 uses
  store double %i.me, ptr %i.hz, align 8, !tbaa !12
  store double %i.me, ptr %i.mc, align 8, !tbaa !12
  %i.mf = fneg double %i.me
  %i.mg = load double, ptr %i.hg, align 8, !tbaa !12
  %i.mh = load double, ptr %i.mb, align 8, !tbaa !12
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.mf, double %i.mg, double %i.mh)
  store double %i.mi, ptr %i.mb, align 8, !tbaa !12
  %i.mj = getelementptr i8, ptr %.4, i64 112      ; 5 uses
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %7 ; 2 uses
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !12
  %i.mm = fmul double %i.hm, %i.ml                ; 3 uses
  store double %i.mm, ptr %i.ia, align 8, !tbaa !12
  store double %i.mm, ptr %i.mk, align 8, !tbaa !12
  %i.mn = fneg double %i.mm
  %i.mo = load double, ptr %i.hg, align 8, !tbaa !12
  %i.mp = load double, ptr %i.mj, align 8, !tbaa !12
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.mo, double %i.mp)
  store double %i.mq, ptr %i.mj, align 8, !tbaa !12
  %i.mr = getelementptr i8, ptr %.4, i64 120      ; 5 uses
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.mr, i64 %7 ; 2 uses
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !12
  %i.mu = fmul double %i.hm, %i.mt                ; 3 uses
  store double %i.mu, ptr %i.ib, align 8, !tbaa !12
  store double %i.mu, ptr %i.ms, align 8, !tbaa !12
  %i.mv = fneg double %i.mu
  %i.mw = load double, ptr %i.hg, align 8, !tbaa !12
  %i.mx = load double, ptr %i.mr, align 8, !tbaa !12
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mv, double %i.mw, double %i.mx)
  store double %i.my, ptr %i.mr, align 8, !tbaa !12
  %i.mz = load double, ptr %i.hf, align 8, !tbaa !12 ; 16 uses
  %i.na = load double, ptr %.4, align 8, !tbaa !12
  %i.nb = fmul double %i.mz, %i.na                ; 2 uses
  store double %i.nb, ptr %i.hk, align 8, !tbaa !12
  store double %i.nb, ptr %.4, align 8, !tbaa !12
  %i.nc = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.nd = load double, ptr %i.ij, align 8, !tbaa !12
  %i.ne = fmul double %i.mz, %i.nd                ; 2 uses
  store double %i.ne, ptr %i.nc, align 8, !tbaa !12
  store double %i.ne, ptr %i.ij, align 8, !tbaa !12
  %i.nf = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ng = load double, ptr %i.ir, align 8, !tbaa !12
  %i.nh = fmul double %i.mz, %i.ng                ; 2 uses
  store double %i.nh, ptr %i.nf, align 8, !tbaa !12
  store double %i.nh, ptr %i.ir, align 8, !tbaa !12
  %i.ni = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.nj = load double, ptr %i.iz, align 8, !tbaa !12
  %i.nk = fmul double %i.mz, %i.nj                ; 2 uses
  store double %i.nk, ptr %i.ni, align 8, !tbaa !12
  store double %i.nk, ptr %i.iz, align 8, !tbaa !12
  %i.nl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.nm = load double, ptr %i.jh, align 8, !tbaa !12
  %i.nn = fmul double %i.mz, %i.nm                ; 2 uses
  store double %i.nn, ptr %i.nl, align 8, !tbaa !12
  store double %i.nn, ptr %i.jh, align 8, !tbaa !12
end_hunk_0
