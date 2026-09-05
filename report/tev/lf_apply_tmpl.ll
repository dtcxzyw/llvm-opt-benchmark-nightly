Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/lf_apply_tmpl?download=true
inline.NumInlined: 51
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dav1d_loopfilter_sbrow_cols_16bpc:bb.a
  %i.er = shl nuw nsw i32 %i.eq, %i.k
  %.not258 = icmp samesign ult i32 %i.er, %i.ag
  br i1 %.not258, label %bb.b, label %._crit_edge301

.lr.ph315:                                        ; preds = %._crit_edge301
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 3864
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !119
  %i.eu = add nsw i32 %4, -1
  %i.ev = mul nsw i32 %.pre, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [624 x i8], ptr %i.et, i64 %i.ew
  %i.ey = zext nneg i32 %i.i to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 3272
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !95 ; 2 uses
  %.not265 = icmp eq i32 %i.m, 0
  %i.fb = lshr exact i32 %i.i, %i.o
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = select i1 %i.p, i32 3, i32 4
  %wide.trip.count359 = zext nneg i32 %.pre to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph315, %.loopexit285
  %indvars.iv356 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next357, %.loopexit285 ] ; 3 uses
  %.0248311 = phi ptr [ %i.ex, %.lr.ph315 ], [ %i.ie, %.loopexit285 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [1348 x i8], ptr %2, i64 %indvars.iv356 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 384
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.ff, i64 %i.ey ; 4 uses
  %i.fh = trunc nuw nsw i64 %indvars.iv356 to i32
  %i.fi = shl i32 %i.fh, 5                        ; 2 uses
  %i.fj = sub nsw i32 %i.fa, %i.fi
  %i.fk = tail call noundef i32 @llvm.smin.i32(i32 %i.fj, i32 32) ; 2 uses
  %.not329 = icmp eq i32 %i.fa, %i.fi
  br i1 %.not329, label %._crit_edge306, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.f
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %.0248311, i64 480
  %i.fo = zext i32 %i.fk to i64
  br label %bb.g

._crit_edge306:                                   ; preds = %bb.g, %bb.f
  br i1 %.not265, label %.loopexit285, label %bb.h

bb.g:                                             ; preds = %.lr.ph305, %bb.g
  %indvars.iv348 = phi i64 [ 0, %.lr.ph305 ], [ %indvars.iv.next349, %bb.g ] ; 2 uses
  %.0247302 = phi i32 [ 1, %.lr.ph305 ], [ %i.gv, %bb.g ] ; 3 uses
  %i.fp = icmp ugt i32 %.0247302, 65535           ; 2 uses
  %i.fq = select i1 %i.fp, i32 16, i32 0
  %i.fr = lshr i32 %.0247302, %i.fq               ; 3 uses
  %i.fs = zext i1 %i.fp to i64                    ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.fl, i64 %i.fs ; 2 uses
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !93 ; 2 uses
  %i.fv = zext i16 %i.fu to i32
  %i.fw = and i32 %i.fr, %i.fv
  %.not266 = icmp eq i32 %i.fw, 0
  %i.fx = select i1 %.not266, i32 0, i32 2
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.fm, i64 %i.fs ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !93 ; 2 uses
  %i.ga = zext i16 %i.fz to i32
  %i.gb = and i32 %i.fr, %i.ga
  %i.gc = icmp ne i32 %i.gb, 0
  %i.gd = zext i1 %i.gc to i32
  %i.ge = or disjoint i32 %i.fx, %i.gd
  %i.gf = trunc i32 %i.fr to i16                  ; 2 uses
  %i.gg = xor i16 %i.gf, -1                       ; 3 uses
  %i.gh = and i16 %i.fu, %i.gg
  store i16 %i.gh, ptr %i.ft, align 2, !tbaa !93
  %i.gi = and i16 %i.fz, %i.gg
  store i16 %i.gi, ptr %i.fy, align 2, !tbaa !93
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.fs ; 2 uses
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !93
  %i.gl = and i16 %i.gk, %i.gg
  store i16 %i.gl, ptr %i.gj, align 2, !tbaa !93
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv348
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !118
  %i.go = zext i8 %i.gn to i32
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.ge, i32 %i.go)
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gq
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gr, i64 %i.fs ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !93
  %i.gu = or i16 %i.gt, %i.gf
  store i16 %i.gu, ptr %i.gs, align 2, !tbaa !93
  %i.gv = shl i32 %.0247302, 1
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.gw = icmp samesign ult i64 %indvars.iv.next349, %i.fo
  br i1 %i.gw, label %bb.g, label %._crit_edge306

bb.h:                                             ; preds = %._crit_edge306
  %i.gx = add nsw i32 %i.fk, %i.q
  %i.gy = lshr i32 %i.gx, %i.q                    ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fe, i64 1024
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.fc ; 3 uses
  %.not330 = icmp eq i32 %i.gy, 0
  br i1 %.not330, label %.loopexit285, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.h
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hc = getelementptr inbounds nuw i8, ptr %.0248311, i64 512
  %wide.trip.count354 = zext i32 %i.gy to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph310, %bb.i
  %indvars.iv351 = phi i64 [ 0, %.lr.ph310 ], [ %indvars.iv.next352, %bb.i ] ; 2 uses
  %.0245307 = phi i32 [ 1, %.lr.ph310 ], [ %i.id, %bb.i ] ; 3 uses
  %.0245.highbits = lshr i32 %.0245307, %i.s
  %i.hd = icmp ne i32 %.0245.highbits, 0          ; 2 uses
  %i.he = zext i1 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, %i.fd
  %i.hg = lshr i32 %.0245307, %i.hf               ; 2 uses
  %i.hh = zext i1 %i.hd to i64                    ; 3 uses
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %i.hb, i64 %i.hh ; 2 uses
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !93 ; 2 uses
  %i.hk = zext i16 %i.hj to i32
  %i.hl = and i32 %i.hg, %i.hk
  %i.hm = icmp ne i32 %i.hl, 0
  %i.hn = zext i1 %i.hm to i32
  %i.ho = trunc i32 %i.hg to i16                  ; 2 uses
  %i.hp = xor i16 %i.ho, -1                       ; 2 uses
  %i.hq = and i16 %i.hj, %i.hp
  store i16 %i.hq, ptr %i.hi, align 2, !tbaa !93
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ha, i64 %i.hh ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !93
  %i.ht = and i16 %i.hs, %i.hp
  store i16 %i.ht, ptr %i.hr, align 2, !tbaa !93
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hc, i64 %indvars.iv351
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !118
  %i.hw = zext i8 %i.hv to i32
  %i.hx = tail call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hw)
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hy
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.hh ; 2 uses
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !93
  %i.ic = or i16 %i.ib, %i.ho
  store i16 %i.ic, ptr %i.ia, align 2, !tbaa !93
  %i.id = shl i32 %.0245307, 1
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %.loopexit285, label %bb.i

.loopexit285:                                     ; preds = %bb.i, %bb.h, %._crit_edge306
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0248311, i64 624
  %exitcond360.not = icmp eq i64 %indvars.iv.next357, %wide.trip.count359
  br i1 %exitcond360.not, label %.loopexit286, label %bb.f

.loopexit286:                                     ; preds = %.loopexit285, %._crit_edge301
  %i.if = load ptr, ptr %i.ab, align 16, !tbaa !96
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 6 uses
  %i.ih = load i64, ptr %i.ig, align 16, !tbaa !97
  %i.ii = sext i32 %3 to i64
  %i.ij = mul nsw i64 %i.ih, %i.ii
  %i.ik = select i1 %.not, i64 4, i64 5
  %i.il = shl i64 %i.ij, %i.ik
  %i.im = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.il ; 3 uses
  %i.in = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 3288 ; 4 uses
  %i.ip = icmp sgt i32 %.pre, 0
  br i1 %i.ip, label %.lr.ph321, label %._crit_edge322

.lr.ph321:                                        ; preds = %.loopexit286
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 2144 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 3112 ; 3 uses
  %.not.i = icmp eq i32 %i.h, 0
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4068 ; 3 uses
  br i1 %.not.i, label %.lr.ph321.split.us, label %.lr.ph321.split

.lr.ph321.split.us:                               ; preds = %.lr.ph321
  %i.iy = icmp sgt i32 %i.y, 16
  br i1 %i.iy, label %.lr.ph321.split.us.split.us, label %.lr.ph321.split.us.split

.lr.ph321.split.us.split.us:                      ; preds = %.lr.ph321.split.us, %filter_plane_cols_y.exit.us.us
  %i.iz = phi i32 [ %i.ju, %filter_plane_cols_y.exit.us.us ], [ %.pre, %.lr.ph321.split.us ]
  %indvars.iv367 = phi i64 [ %indvars.iv.next368, %filter_plane_cols_y.exit.us.us ], [ 0, %.lr.ph321.split.us ] ; 3 uses
  %.0238319.us.us = phi ptr [ %i.jw, %filter_plane_cols_y.exit.us.us ], [ %i.im, %.lr.ph321.split.us ] ; 2 uses
  %.0239318.us.us = phi ptr [ %i.jv, %filter_plane_cols_y.exit.us.us ], [ %i.in, %.lr.ph321.split.us ] ; 2 uses
  %.0242316.us.us = phi i32 [ 1, %filter_plane_cols_y.exit.us.us ], [ 0, %.lr.ph321.split.us ]
  %i.ja = load i64, ptr %i.ig, align 16, !tbaa !97
  %i.jb = getelementptr inbounds nuw [1348 x i8], ptr %2, i64 %indvars.iv367
  %i.jc = load i64, ptr %i.iq, align 16, !tbaa !71
  %i.jd = load i32, ptr %i.ir, align 8, !tbaa !95
  %indvars.iv367.tr = trunc nuw nsw i64 %indvars.iv367 to i32
  %i.je = shl nuw nsw i32 %indvars.iv367.tr, 5
  %i.jf = sub nsw i32 %i.jd, %i.je                ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %.lr.ph.i.us.us, label %filter_plane_cols_y.exit.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph321.split.us.split.us
  %i.jh = call i32 @llvm.umin.i32(i32 %i.jf, i32 32)
  %i.ji = load ptr, ptr %i.is, align 8, !tbaa !90
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 3264
  %wide.trip.count49.i.us.us = zext nneg i32 %i.jh to i64
  br label %.lr.ph.split.us.split.us.i.us.us

.lr.ph.split.us.split.us.i.us.us:                 ; preds = %.lr.ph.i.us.us, %bb.k
  %indvars.iv46.i.us.us = phi i64 [ %indvars.iv.next47.i.us.us, %bb.k ], [ 0, %.lr.ph.i.us.us ] ; 5 uses
  %i.jk = trunc nuw nsw i64 %indvars.iv46.i.us.us to i32
  %i.jl = or i32 %.0242316.us.us, %i.jk
  %or.cond.not.us.us.i.us.us = icmp eq i32 %i.jl, 0
  br i1 %or.cond.not.us.us.i.us.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.split.us.i.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %i.jb, i64 %indvars.iv46.i.us.us ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 2
  %i.jp = load <2 x i32>, ptr %i.jm, align 2
  store <2 x i32> %i.jp, ptr %i.b, align 16, !tbaa !66
  store i32 %i.jo, ptr %i.iu, align 8, !tbaa !66
  store i32 0, ptr %i.iv, align 4, !tbaa !66
  %i.jq = load ptr, ptr %i.jj, align 8, !tbaa !98
  %.idx52.i.us.us = shl nuw nsw i64 %indvars.iv46.i.us.us, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %.0239318.us.us, i64 %.idx52.i.us.us
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %.0238319.us.us, i64 %indvars.iv46.i.us.us
  %i.jt = load i32, ptr %i.ix, align 4, !tbaa !91
  call void %i.jq(ptr noundef %i.jr, i64 noundef %i.jc, ptr noundef nonnull %i.b, ptr noundef %i.js, i64 noundef %i.ja, ptr noundef nonnull %i.iw, i32 noundef %i.x, i32 noundef %i.jt) #4, !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.us.split.us.i.us.us
  %indvars.iv.next47.i.us.us = add nuw nsw i64 %indvars.iv46.i.us.us, 1 ; 2 uses
  %exitcond50.not.i.us.us = icmp eq i64 %indvars.iv.next47.i.us.us, %wide.trip.count49.i.us.us
  br i1 %exitcond50.not.i.us.us, label %filter_plane_cols_y.exit.us.us.loopexit, label %.lr.ph.split.us.split.us.i.us.us

filter_plane_cols_y.exit.us.us.loopexit:          ; preds = %bb.k
  %.pre375 = load i32, ptr %i.io, align 8, !tbaa !94
  br label %filter_plane_cols_y.exit.us.us

filter_plane_cols_y.exit.us.us:                   ; preds = %filter_plane_cols_y.exit.us.us.loopexit, %.lr.ph321.split.us.split.us
  %i.ju = phi i32 [ %.pre375, %filter_plane_cols_y.exit.us.us.loopexit ], [ %i.iz, %.lr.ph321.split.us.split.us ] ; 3 uses
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0239318.us.us, i64 256
  %i.jw = getelementptr inbounds nuw i8, ptr %.0238319.us.us, i64 128
  %i.jx = sext i32 %i.ju to i64
  %i.jy = icmp slt i64 %indvars.iv.next368, %i.jx
  br i1 %i.jy, label %.lr.ph321.split.us.split.us, label %._crit_edge322

.lr.ph321.split.us.split:                         ; preds = %.lr.ph321.split.us, %filter_plane_cols_y.exit.us
  %i.jz = phi i32 [ %i.kz, %filter_plane_cols_y.exit.us ], [ %.pre, %.lr.ph321.split.us ]
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %filter_plane_cols_y.exit.us ], [ 0, %.lr.ph321.split.us ] ; 3 uses
  %.0238319.us = phi ptr [ %i.lb, %filter_plane_cols_y.exit.us ], [ %i.im, %.lr.ph321.split.us ] ; 2 uses
  %.0239318.us = phi ptr [ %i.la, %filter_plane_cols_y.exit.us ], [ %i.in, %.lr.ph321.split.us ] ; 2 uses
  %.0242316.us = phi i32 [ 1, %filter_plane_cols_y.exit.us ], [ 0, %.lr.ph321.split.us ]
  %i.ka = load i64, ptr %i.ig, align 16, !tbaa !97
  %i.kb = getelementptr inbounds nuw [1348 x i8], ptr %2, i64 %indvars.iv364
  %i.kc = load i64, ptr %i.iq, align 16, !tbaa !71
  %i.kd = load i32, ptr %i.ir, align 8, !tbaa !95
  %indvars.iv364.tr = trunc nuw nsw i64 %indvars.iv364 to i32
  %i.ke = shl nuw nsw i32 %indvars.iv364.tr, 5
  %i.kf = sub nsw i32 %i.kd, %i.ke                ; 2 uses
  %i.kg = icmp sgt i32 %i.kf, 0
  br i1 %i.kg, label %.lr.ph.i.us, label %filter_plane_cols_y.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph321.split.us.split
  %i.kh = call i32 @llvm.umin.i32(i32 %i.kf, i32 32)
  %i.ki = load ptr, ptr %i.is, align 8, !tbaa !90
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 3264
  %wide.trip.count49.i.us = zext nneg i32 %i.kh to i64
  br label %.lr.ph.split.us.split.i.us

.lr.ph.split.us.split.i.us:                       ; preds = %.lr.ph.i.us, %bb.m
  %indvars.iv41.i.us = phi i64 [ %indvars.iv.next42.i.us, %bb.m ], [ 0, %.lr.ph.i.us ] ; 5 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv41.i.us to i32
  %i.kl = or i32 %.0242316.us, %i.kk
  %or.cond.not.us.i.us = icmp eq i32 %i.kl, 0
  br i1 %or.cond.not.us.i.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.split.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.kb, i64 %indvars.iv41.i.us ; 3 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !93
  %i.ko = zext i16 %i.kn to i32
  store i32 %i.ko, ptr %i.b, align 16, !tbaa !66
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !93
  %i.kr = zext i16 %i.kq to i32
  store i32 %i.kr, ptr %i.it, align 4, !tbaa !66
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !93
  %i.ku = zext i16 %i.kt to i32
  store i32 %i.ku, ptr %i.iu, align 8, !tbaa !66
  store i32 0, ptr %i.iv, align 4, !tbaa !66
  %i.kv = load ptr, ptr %i.kj, align 8, !tbaa !98
  %.idx51.i.us = shl nuw nsw i64 %indvars.iv41.i.us, 3
  %i.kw = getelementptr inbounds nuw i8, ptr %.0239318.us, i64 %.idx51.i.us
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.0238319.us, i64 %indvars.iv41.i.us
  %i.ky = load i32, ptr %i.ix, align 4, !tbaa !91
  call void %i.kv(ptr noundef %i.kw, i64 noundef %i.kc, ptr noundef nonnull %i.b, ptr noundef %i.kx, i64 noundef %i.ka, ptr noundef nonnull %i.iw, i32 noundef %i.x, i32 noundef %i.ky) #4, !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.split.i.us
  %indvars.iv.next42.i.us = add nuw nsw i64 %indvars.iv41.i.us, 1 ; 2 uses
  %exitcond45.not.i.us = icmp eq i64 %indvars.iv.next42.i.us, %wide.trip.count49.i.us
  br i1 %exitcond45.not.i.us, label %filter_plane_cols_y.exit.us.loopexit, label %.lr.ph.split.us.split.i.us

filter_plane_cols_y.exit.us.loopexit:             ; preds = %bb.m
  %.pre374 = load i32, ptr %i.io, align 8, !tbaa !94
  br label %filter_plane_cols_y.exit.us

filter_plane_cols_y.exit.us:                      ; preds = %filter_plane_cols_y.exit.us.loopexit, %.lr.ph321.split.us.split
  %i.kz = phi i32 [ %.pre374, %filter_plane_cols_y.exit.us.loopexit ], [ %i.jz, %.lr.ph321.split.us.split ] ; 3 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.0239318.us, i64 256
  %i.lb = getelementptr inbounds nuw i8, ptr %.0238319.us, i64 128
  %i.lc = sext i32 %i.kz to i64
  %i.ld = icmp slt i64 %indvars.iv.next365, %i.lc
  br i1 %i.ld, label %.lr.ph321.split.us.split, label %._crit_edge322

.lr.ph321.split:                                  ; preds = %.lr.ph321, %filter_plane_cols_y.exit
  %i.le = phi i32 [ %i.mf, %filter_plane_cols_y.exit ], [ %.pre, %.lr.ph321 ]
  %indvars.iv361 = phi i64 [ %indvars.iv.next362, %filter_plane_cols_y.exit ], [ 0, %.lr.ph321 ] ; 3 uses
  %.0238319 = phi ptr [ %i.mh, %filter_plane_cols_y.exit ], [ %i.im, %.lr.ph321 ] ; 2 uses
  %.0239318 = phi ptr [ %i.mg, %filter_plane_cols_y.exit ], [ %i.in, %.lr.ph321 ] ; 2 uses
  %.0242316 = phi i32 [ 1, %filter_plane_cols_y.exit ], [ 0, %.lr.ph321 ]
  %i.lf = load i64, ptr %i.ig, align 16, !tbaa !97
  %i.lg = getelementptr inbounds nuw [1348 x i8], ptr %2, i64 %indvars.iv361
  %i.lh = load i64, ptr %i.iq, align 16, !tbaa !71
  %i.li = load i32, ptr %i.ir, align 8, !tbaa !95
  %indvars.iv361.tr = trunc nuw nsw i64 %indvars.iv361 to i32
  %i.lj = shl nuw nsw i32 %indvars.iv361.tr, 5
  %i.lk = sub nsw i32 %i.li, %i.lj                ; 2 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph.i, label %filter_plane_cols_y.exit

.lr.ph.i:                                         ; preds = %.lr.ph321.split
  %i.lm = call i32 @llvm.umin.i32(i32 %i.lk, i32 32)
  %i.ln = load ptr, ptr %i.is, align 8, !tbaa !90
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 3264
  %wide.trip.count.i = zext nneg i32 %i.lm to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.o ] ; 5 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.lq = or i32 %.0242316, %i.lp
  %or.cond.not.i = icmp eq i32 %i.lq, 0
  br i1 %or.cond.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.lg, i64 %indvars.iv.i ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !93
  %i.lu = zext i16 %i.lt to i32
  store i32 %i.lu, ptr %i.b, align 16, !tbaa !66
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 6
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !93
  %i.lx = zext i16 %i.lw to i32
  store i32 %i.lx, ptr %i.it, align 4, !tbaa !66
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 10
  %i.lz = load i16, ptr %i.ly, align 2, !tbaa !93
  %i.ma = zext i16 %i.lz to i32
  store i32 %i.ma, ptr %i.iu, align 8, !tbaa !66
  store i32 0, ptr %i.iv, align 4, !tbaa !66
  %i.mb = load ptr, ptr %i.lo, align 8, !tbaa !98
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.mc = getelementptr inbounds nuw i8, ptr %.0239318, i64 %.idx.i
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %.0238319, i64 %indvars.iv.i
  %i.me = load i32, ptr %i.ix, align 4, !tbaa !91
  call void %i.mb(ptr noundef %i.mc, i64 noundef %i.lh, ptr noundef nonnull %i.b, ptr noundef %i.md, i64 noundef %i.lf, ptr noundef nonnull %i.iw, i32 noundef %i.x, i32 noundef %i.me) #4, !inline_history !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %filter_plane_cols_y.exit.loopexit, label %.lr.ph.split.i

filter_plane_cols_y.exit.loopexit:                ; preds = %bb.o
  %.pre373 = load i32, ptr %i.io, align 8, !tbaa !94
  br label %filter_plane_cols_y.exit

filter_plane_cols_y.exit:                         ; preds = %filter_plane_cols_y.exit.loopexit, %.lr.ph321.split
  %i.mf = phi i32 [ %.pre373, %filter_plane_cols_y.exit.loopexit ], [ %i.le, %.lr.ph321.split ] ; 3 uses
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.0239318, i64 256
  %i.mh = getelementptr inbounds nuw i8, ptr %.0238319, i64 128
  %i.mi = sext i32 %i.mf to i64
  %i.mj = icmp slt i64 %indvars.iv.next362, %i.mi
  br i1 %i.mj, label %.lr.ph321.split, label %._crit_edge322

._crit_edge322:                                   ; preds = %filter_plane_cols_y.exit, %filter_plane_cols_y.exit.us, %filter_plane_cols_y.exit.us.us, %.loopexit286
  %i.mk = phi i32 [ %i.kz, %filter_plane_cols_y.exit.us ], [ %i.ju, %filter_plane_cols_y.exit.us.us ], [ %.pre, %.loopexit286 ], [ %i.mf, %filter_plane_cols_y.exit ] ; 2 uses
  %i.ml = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 832
  %i.mn = load i8, ptr %i.mm, align 2, !tbaa !99
  %.not263 = icmp eq i8 %i.mn, 0
  br i1 %.not263, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge322
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ml, i64 833
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !100
  %.not264 = icmp ne i8 %i.mp, 0
  %i.mq = icmp sgt i32 %i.mk, 0
end_hunk_0
