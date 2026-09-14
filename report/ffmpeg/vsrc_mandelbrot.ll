Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_mandelbrot?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@request_frame:bb.a
  %i.cw = load double, ptr %i.ck, align 8, !tbaa !66
  %i.cx = fsub nsz double %i.cv, %i.cw
  %i.cy = fdiv nsz double %i.cx, %i.af
  %i.cz = load i32, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %i.da = sdiv i32 %i.cz, 2
  %i.db = sitofp nsz i32 %i.da to double
  %i.dc = fadd nsz double %i.cy, %i.db
  %i.dd = tail call i64 @llvm.lrint.i64.f64(double %i.dc)
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1
  %.not.us3.i.i = icmp sgt i32 %i.cz, %i.de
  %or.cond.us4.i.i = and i1 %i.df, %.not.us3.i.i
  br i1 %or.cond.us4.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dg = load i32, ptr %i.cm, align 8, !tbaa !30
  %i.dh = icmp slt i32 %.3459.i, %i.dg
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !33
  %i.dj = add nsw i32 %.3459.i, 1
  %i.dk = sext i32 %.3459.i to i64
  %i.dl = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !68
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.dm = phi i32 [ %.pre.i, %bb.g ], [ %i.cp, %bb.f ], [ %i.cp, %bb.e ] ; 2 uses
  %.4460.i = phi i32 [ %i.dj, %bb.g ], [ %.3459.i, %bb.f ], [ %.3459.i, %bb.e ] ; 2 uses
  %indvars.iv.next570.i = add nsw i64 %indvars.iv569.i, 1 ; 3 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next570.i, %i.dn
  br i1 %i.do, label %.lr.ph.split.split.us.i.i, label %fill_from_cache.exit424.loopexit.i, !llvm.loop !45

fill_from_cache.exit424.loopexit.i:               ; preds = %bb.h, %.lr.ph.split.split.us.i.i
  %.4466.ph.in.i = phi i64 [ %indvars.iv569.i, %.lr.ph.split.split.us.i.i ], [ %indvars.iv.next570.i, %bb.h ]
  %.5461.ph.i = phi i32 [ %.3459.i, %.lr.ph.split.split.us.i.i ], [ %.4460.i, %bb.h ]
  %.4466.ph.i = trunc i64 %.4466.ph.in.i to i32
  %.pre618.i = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %fill_from_cache.exit424.i

fill_from_cache.exit424.i:                        ; preds = %fill_from_cache.exit424.loopexit.i, %.preheader.i421.i, %bb.d
  %i.dp = phi i32 [ %i.bx, %bb.d ], [ %i.bx, %.preheader.i421.i ], [ %.pre618.i, %fill_from_cache.exit424.loopexit.i ]
  %.4466.i = phi i32 [ %.0462546.i, %bb.d ], [ %.0462546.i, %.preheader.i421.i ], [ %.4466.ph.i, %fill_from_cache.exit424.loopexit.i ] ; 4 uses
  %.5461.i = phi i32 [ %.0456547.i, %bb.d ], [ %.0456547.i, %.preheader.i421.i ], [ %.5461.ph.i, %fill_from_cache.exit424.loopexit.i ] ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next615.i, %i.dq
  br i1 %i.dr, label %bb.i, label %fill_from_cache.exit428.i

bb.i:                                             ; preds = %fill_from_cache.exit424.i
  %i.ds = mul nsw i64 %indvars.iv.next615.i, %i.bu
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ds ; 2 uses
  %i.du = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.dv = sext i32 %i.du to i64
  %i.dw = shl nsw i64 %i.dv, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dt, i8 0, i64 %i.dw, i1 false)
  %i.dx = fadd nsz double %i.bi, %i.cc            ; 2 uses
  %.val418.i = load ptr, ptr %i.t, align 8, !tbaa !19 ; 5 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val418.i, i64 152
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !64
  %i.ea = fcmp nsz une double %i.dz, 0.000000e+00
  br i1 %i.ea, label %fill_from_cache.exit428.i, label %.preheader.i425.i

.preheader.i425.i:                                ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.val418.i, i64 100 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !31 ; 4 uses
  %i.ed = icmp slt i32 %.0452548.i, %i.ec
  br i1 %i.ed, label %.lr.ph.i426.i, label %fill_from_cache.exit428.i

.lr.ph.i426.i:                                    ; preds = %.preheader.i425.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.val418.i, i64 104
  %i.ef = getelementptr inbounds nuw i8, ptr %.val418.i, i64 40
  %i.eg = getelementptr inbounds nuw i8, ptr %.val418.i, i64 8
  %i.eh = load ptr, ptr %i.ee, align 8, !tbaa !32 ; 2 uses
  %i.ei = sext i32 %.0452548.i to i64             ; 2 uses
  br i1 %.not31.i.i, label %.lr.ph.split.us.split.us.i427.preheader.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i427.preheader.i:        ; preds = %.lr.ph.i426.i
  %i.ej = sext i32 %i.ec to i64
  br label %.lr.ph.split.us.split.us.i427.i

.lr.ph.split.us.split.us.i427.i:                  ; preds = %bb.j, %.lr.ph.split.us.split.us.i427.preheader.i
  %indvars.iv576.i = phi i64 [ %i.ei, %.lr.ph.split.us.split.us.i427.preheader.i ], [ %indvars.iv.next577.i, %bb.j ] ; 3 uses
  %i.ek = getelementptr inbounds [24 x i8], ptr %i.eh, i64 %indvars.iv576.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load double, ptr %i.el, align 8, !tbaa !28
  %i.en = fcmp nsz ogt double %i.em, %i.dx
  br i1 %i.en, label %fill_from_cache.exit428.loopexit.split.loop.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.split.us.i427.i
  %indvars.iv.next577.i = add nsw i64 %indvars.iv576.i, 1 ; 2 uses
  %exitcond580.not.i = icmp eq i64 %indvars.iv.next577.i, %i.ej
  br i1 %exitcond580.not.i, label %fill_from_cache.exit428.i, label %.lr.ph.split.us.split.us.i427.i, !llvm.loop !45

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i426.i, %bb.m
  %i.eo = phi i32 [ %i.fi, %bb.m ], [ %i.ec, %.lr.ph.i426.i ]
  %indvars.iv572.i = phi i64 [ %indvars.iv.next573.i, %bb.m ], [ %i.ei, %.lr.ph.i426.i ] ; 3 uses
  %i.ep = getelementptr inbounds [24 x i8], ptr %i.eh, i64 %indvars.iv572.i ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load double, ptr %i.eq, align 8, !tbaa !28
  %i.es = fcmp nsz ogt double %i.er, %i.dx
  br i1 %i.es, label %fill_from_cache.exit428.loopexit554.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.split.i.i
  %i.et = load double, ptr %i.ep, align 8, !tbaa !28
  %i.eu = load double, ptr %i.ef, align 8, !tbaa !66
  %i.ev = fsub nsz double %i.et, %i.eu
  %i.ew = fdiv nsz double %i.ev, %i.af
  %i.ex = load i32, ptr %i.eg, align 8, !tbaa !29 ; 2 uses
  %i.ey = sdiv i32 %i.ex, 2
  %i.ez = sitofp nsz i32 %i.ey to double
  %i.fa = fadd nsz double %i.ew, %i.ez
  %i.fb = tail call i64 @llvm.lrint.i64.f64(double %i.fa) ; 2 uses
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = icmp sgt i32 %i.fc, -1
  %.not.us.i.i = icmp sgt i32 %i.ex, %i.fc
  %or.cond.us.i.i = and i1 %i.fd, %.not.us.i.i
  br i1 %or.cond.us.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !70
  %i.fg = and i64 %i.fb, 2147483647
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.fg
  store i32 %i.ff, ptr %i.fh, align 4, !tbaa !44
  %.pre619.i = load i32, ptr %i.eb, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fi = phi i32 [ %.pre619.i, %bb.l ], [ %i.eo, %bb.k ] ; 2 uses
  %indvars.iv.next573.i = add nsw i64 %indvars.iv572.i, 1 ; 3 uses
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next573.i, %i.fj
  br i1 %i.fk, label %.lr.ph.split.us.split.i.i, label %fill_from_cache.exit428.loopexit554.i, !llvm.loop !45

fill_from_cache.exit428.loopexit554.i:            ; preds = %bb.m, %.lr.ph.split.us.split.i.i
  %.1453.ph555.in.i = phi i64 [ %indvars.iv.next573.i, %bb.m ], [ %indvars.iv572.i, %.lr.ph.split.us.split.i.i ]
  %.1453.ph555.i = trunc i64 %.1453.ph555.in.i to i32
  br label %fill_from_cache.exit428.i

fill_from_cache.exit428.loopexit.split.loop.exit.i: ; preds = %.lr.ph.split.us.split.us.i427.i
  %i.fl = trunc nsw i64 %indvars.iv576.i to i32
  br label %fill_from_cache.exit428.i

fill_from_cache.exit428.i:                        ; preds = %bb.j, %fill_from_cache.exit428.loopexit.split.loop.exit.i, %fill_from_cache.exit428.loopexit554.i, %.preheader.i425.i, %bb.i, %fill_from_cache.exit424.i
  %.1453.i = phi i32 [ %.0452548.i, %fill_from_cache.exit424.i ], [ %.0452548.i, %bb.i ], [ %.1453.ph555.i, %fill_from_cache.exit428.loopexit554.i ], [ %.0452548.i, %.preheader.i425.i ], [ %i.fl, %fill_from_cache.exit428.loopexit.split.loop.exit.i ], [ %i.ec, %bb.j ]
  %i.fm = load i32, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph544.i, label %._crit_edge545.i

.lr.ph544.i:                                      ; preds = %fill_from_cache.exit428.i
  %i.fo = mul nsw i64 %indvars.iv614.i, %i.bu     ; 2 uses
  %i.fp = icmp ne i64 %indvars.iv614.i, 0
  %i.fq = mul nsw i64 %indvars.iv.next615.i, %i.bu
  %i.fr = add nsw i64 %indvars.iv614.i, -1
  %i.fs = mul nsw i64 %i.fr, %i.bu
  %i.ft = add nsw i64 %i.fo, 4294967295
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.p, i64 %i.fo ; 5 uses
  %invariant.gep701.i = getelementptr [4 x i8], ptr %i.p, i64 %i.fq ; 3 uses
  %invariant.gep707.i = getelementptr [4 x i8], ptr %i.p, i64 %i.fs ; 7 uses
  %i.fu = insertelement <2 x double> poison, double %i.cc, i64 1 ; 7 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.be, %.lr.ph544.i
  %indvars.iv606.i = phi i64 [ 0, %.lr.ph544.i ], [ %indvars.iv.next607.i, %bb.be ] ; 11 uses
  %i.fv = phi i32 [ %i.fm, %.lr.ph544.i ], [ %i.xp, %bb.be ] ; 6 uses
  %.1457541.i = phi i32 [ %.5461.i, %.lr.ph544.i ], [ %.2458.i, %bb.be ] ; 7 uses
  %i.fw = load double, ptr %i.bj, align 8, !tbaa !66
  %.neg411.i = sdiv i32 %i.fv, -2
  %i.fx = trunc nuw nsw i64 %indvars.iv606.i to i32 ; 2 uses
  %i.fy = add i32 %.neg411.i, %i.fx               ; 2 uses
  %i.fz = sitofp nsz i32 %i.fy to double
  %i.ga = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.fz, double %i.fw) ; 21 uses
  %i.gb = load i32, ptr %i.bk, align 8, !tbaa !71 ; 2 uses
  %i.gc = uitofp nsz i32 %i.gb to double
  %i.gd = fmul nnan nsz double %i.gc, f0x3DF0000000000000 ; 2 uses
  %i.ge = mul i32 %i.gb, 1664525
  %i.gf = add i32 %i.ge, 1013904223
  store i32 %i.gf, ptr %i.bk, align 8, !tbaa !71
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv606.i ; 3 uses
  %i.gg = load i32, ptr %gep.i, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.gg, 16777216
  br i1 %.not.i, label %bb.o, label %bb.be

bb.o:                                             ; preds = %bb.n
  %i.gh = load double, ptr %i.ao, align 8, !tbaa !64 ; 3 uses
  %i.gi = fcmp nsz une double %i.gh, 0.000000e+00
  br i1 %i.gi, label %bb.ai, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gj = icmp ne i64 %indvars.iv606.i, 0
  %or.cond.i.i = and i1 %i.fp, %i.gj
  br i1 %or.cond.i.i, label %bb.q, label %interpol.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.gk = add nuw nsw i64 %indvars.iv606.i, 1     ; 6 uses
  %i.gl = zext i32 %i.fv to i64
  %i.gm = icmp eq i64 %i.gk, %i.gl
  br i1 %i.gm, label %interpol.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gn = load i32, ptr %i.ai, align 4, !tbaa !27 ; 4 uses
  %i.go = zext i32 %i.gn to i64
  %i.gp = icmp eq i64 %indvars.iv.next615.i, %i.go
  br i1 %i.gp, label %interpol.exit.thread.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gq = ashr i32 %i.fv, 1
  %i.gr = sub nsw i32 %i.fx, %i.gq
  %i.gs = tail call i32 @llvm.abs.i32(i32 %i.gr, i1 true)
  %i.gt = mul nsw i32 %i.gn, %i.gs
  %i.gu = ashr i32 %i.gn, 1
  %i.gv = sub nsw i32 %i.bz, %i.gu
  %i.gw = tail call i32 @llvm.abs.i32(i32 %i.gv, i1 true)
  %i.gx = mul nuw nsw i32 %i.gw, %i.fv
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.gt, i32 %i.gx)
  %i.gy = mul nsw i32 %i.gn, %i.fv
  %i.gz = ashr i32 %i.gy, 3
  %i.ha = icmp slt i32 %spec.select.i.i, %i.gz
  br i1 %i.ha, label %interpol.exit.thread.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %gep700.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gk
  %i.hb = load i32, ptr %gep700.i, align 4, !tbaa !44 ; 2 uses
  %i.hc = add nsw i64 %indvars.iv606.i, -1        ; 6 uses
  %gep702.i = getelementptr [4 x i8], ptr %invariant.gep701.i, i64 %i.hc
  %i.hd = load i32, ptr %gep702.i, align 4, !tbaa !44 ; 2 uses
  %gep704.i = getelementptr [4 x i8], ptr %invariant.gep701.i, i64 %indvars.iv606.i
  %i.he = load i32, ptr %gep704.i, align 4, !tbaa !44 ; 3 uses
  %gep706.i = getelementptr [4 x i8], ptr %invariant.gep701.i, i64 %i.gk
  %i.hf = load i32, ptr %gep706.i, align 4, !tbaa !44 ; 3 uses
  %i.hg = icmp ne i32 %i.hb, 0
  %i.hh = icmp ne i32 %i.he, 0                    ; 2 uses
  %or.cond3.i.i = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond3.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %gep724.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hi = load i32, ptr %gep724.i, align 4, !tbaa !44
  %gep726.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %indvars.iv606.i
  %i.hj = load i32, ptr %gep726.i, align 4, !tbaa !44
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.hk = icmp ne i32 %i.hd, 0
  %i.hl = icmp ne i32 %i.hf, 0                    ; 2 uses
  %or.cond5.i.i = select i1 %i.hk, i1 %i.hl, i1 false
  br i1 %or.cond5.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %gep720.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.hm = load i32, ptr %gep720.i, align 4, !tbaa !44
  %gep722.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.hc
  %i.hn = load i32, ptr %gep722.i, align 4, !tbaa !44
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  br i1 %i.hh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %gep714.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %indvars.iv606.i
  %i.ho = load i32, ptr %gep714.i, align 4, !tbaa !44
  %gep716.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hp = load i32, ptr %gep716.i, align 4, !tbaa !44
  %gep718.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.hq = load i32, ptr %gep718.i, align 4, !tbaa !44
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %i.hl, label %bb.aa, label %interpol.exit.thread.thread.i

bb.aa:                                            ; preds = %bb.z
  %gep708.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.hc
  %i.hr = load i32, ptr %gep708.i, align 4, !tbaa !44
  %gep710.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hc
  %i.hs = load i32, ptr %gep710.i, align 4, !tbaa !44
  %gep712.i = getelementptr [4 x i8], ptr %invariant.gep707.i, i64 %i.gk
  %i.ht = load i32, ptr %gep712.i, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  %.0152.i.i = phi i32 [ %i.hb, %bb.u ], [ %i.hm, %bb.w ], [ %i.hp, %bb.y ], [ %i.hs, %bb.aa ] ; 3 uses
  %.0151.i.i = phi i32 [ %i.hi, %bb.u ], [ %i.hd, %bb.w ], [ %i.hq, %bb.y ], [ %i.ht, %bb.aa ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.he, %bb.u ], [ %i.hn, %bb.w ], [ %i.he, %bb.y ], [ %i.hr, %bb.aa ] ; 3 uses
  %.0149.i.i = phi i32 [ %i.hj, %bb.u ], [ %i.hf, %bb.w ], [ %i.ho, %bb.y ], [ %i.hf, %bb.aa ] ; 3 uses
  %i.hu = and i32 %.0152.i.i, 255                 ; 2 uses
  %i.hv = and i32 %.0151.i.i, 255                 ; 2 uses
  %i.hw = add nuw nsw i32 %i.hv, %i.hu            ; 2 uses
  %i.hx = and i32 %.0150.i.i, 255                 ; 2 uses
  %i.hy = and i32 %.0149.i.i, 255                 ; 2 uses
  %i.hz = add nuw nsw i32 %i.hy, %i.hx            ; 2 uses
  %reass.sub.i.i = add nsw i32 %i.hw, -6
  %i.ia = sub nsw i32 %reass.sub.i.i, %i.hz
  %i.ib = icmp ult i32 %i.ia, -11
  br i1 %i.ib, label %interpol.exit.thread.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = sub nsw i32 %i.hu, %i.hv
  %i.id = tail call i32 @llvm.abs.i32(i32 %i.ic, i1 true)
  %i.ie = sub nsw i32 %i.hx, %i.hy
  %i.if = tail call i32 @llvm.abs.i32(i32 %i.ie, i1 true)
  %i.ig = add nuw nsw i32 %i.if, %i.id
  %i.ih = icmp samesign ugt i32 %i.ig, 20
  br i1 %i.ih, label %interpol.exit.thread.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ii = add nuw nsw i32 %i.hw, 2
  %i.ij = add nuw nsw i32 %i.ii, %i.hz
  %i.ik = lshr i32 %i.ij, 2
  %i.il = lshr i32 %.0152.i.i, 8
  %i.im = lshr i32 %.0151.i.i, 8
  %i.in = lshr i32 %.0150.i.i, 8
  %i.io = lshr i32 %.0149.i.i, 8
  %i.ip = and i32 %i.il, 255                      ; 2 uses
  %i.iq = and i32 %i.im, 255                      ; 2 uses
  %i.ir = add nuw nsw i32 %i.iq, %i.ip            ; 2 uses
  %i.is = and i32 %i.in, 255                      ; 2 uses
  %i.it = and i32 %i.io, 255                      ; 2 uses
  %i.iu = add nuw nsw i32 %i.it, %i.is            ; 2 uses
  %reass.sub.1.i.i = add nsw i32 %i.ir, -6
  %i.iv = sub nsw i32 %reass.sub.1.i.i, %i.iu
  %i.iw = icmp ult i32 %i.iv, -11
  br i1 %i.iw, label %interpol.exit.thread.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ix = sub nsw i32 %i.ip, %i.iq
  %i.iy = tail call i32 @llvm.abs.i32(i32 %i.ix, i1 true)
  %i.iz = sub nsw i32 %i.is, %i.it
  %i.ja = tail call i32 @llvm.abs.i32(i32 %i.iz, i1 true)
  %i.jb = add nuw nsw i32 %i.ja, %i.iy
  %i.jc = icmp samesign ugt i32 %i.jb, 20
  br i1 %i.jc, label %interpol.exit.thread.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jd = add nuw nsw i32 %i.ir, 2
  %i.je = add nuw nsw i32 %i.jd, %i.iu
  %i.jf = shl nuw nsw i32 %i.je, 6
  %i.jg = and i32 %i.jf, 130816
  %i.jh = lshr i32 %.0152.i.i, 16
  %i.ji = lshr i32 %.0151.i.i, 16
  %i.jj = lshr i32 %.0150.i.i, 16
  %i.jk = lshr i32 %.0149.i.i, 16
  %i.jl = and i32 %i.jh, 255                      ; 2 uses
  %i.jm = and i32 %i.ji, 255                      ; 2 uses
  %i.jn = add nuw nsw i32 %i.jm, %i.jl            ; 2 uses
  %i.jo = and i32 %i.jj, 255                      ; 2 uses
  %i.jp = and i32 %i.jk, 255                      ; 2 uses
  %i.jq = add nuw nsw i32 %i.jp, %i.jo            ; 2 uses
  %reass.sub.2.i.i = add nsw i32 %i.jn, -6
  %i.jr = sub nsw i32 %reass.sub.2.i.i, %i.jq
  %i.js = icmp ult i32 %i.jr, -11
  br i1 %i.js, label %interpol.exit.thread.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jt = sub nsw i32 %i.jl, %i.jm
  %i.ju = tail call i32 @llvm.abs.i32(i32 %i.jt, i1 true)
  %i.jv = sub nsw i32 %i.jo, %i.jp
  %i.jw = tail call i32 @llvm.abs.i32(i32 %i.jv, i1 true)
  %i.jx = add nuw nsw i32 %i.jw, %i.ju
  %i.jy = icmp samesign ugt i32 %i.jx, 20
  br i1 %i.jy, label %interpol.exit.thread.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jz = add nuw nsw i32 %i.jn, 2
  %i.ka = add nuw nsw i32 %i.jz, %i.jq
  %i.kb = shl nuw nsw i32 %i.ka, 14
  %i.kc = and i32 %i.kb, 16711680
  %i.kd = or i32 %i.ik, %i.jg
  %i.ke = or i32 %i.kd, %i.kc
  %i.kf = or i32 %i.ke, -16777216                 ; 2 uses
  store i32 %i.kf, ptr %gep.i, align 4, !tbaa !44
  %i.kg = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.kh = icmp slt i32 %.1457541.i, %i.kg
  br i1 %i.kh, label %.sink.split.i, label %bb.be

bb.ai:                                            ; preds = %bb.o
  %i.ki = load <2 x double>, ptr %i.bn, align 8, !tbaa !28
  %i.kj = fmul nsz <2 x double> %i.ki, %i.bw      ; 2 uses
  %i.kk = extractelement <2 x double> %i.kj, i64 0
  %i.kl = tail call nsz double @llvm.cos.f64(double %i.kk)
  %i.km = tail call nsz double @llvm.fmuladd.f64(double %i.kl, double %i.gh, double %i.ga)
  %i.kn = extractelement <2 x double> %i.kj, i64 1
  %i.ko = tail call nsz double @llvm.sin.f64(double %i.kn)
  %i.kp = tail call nsz double @llvm.fmuladd.f64(double %i.ko, double %i.gh, double %i.cc)
  br label %interpol.exit.thread.i

interpol.exit.thread.i:                           ; preds = %bb.ai, %bb.q, %bb.p
  %.0388.i = phi nsz double [ %i.km, %bb.ai ], [ %i.ga, %bb.q ], [ %i.ga, %bb.p ] ; 2 uses
  %.0382.i = phi nsz double [ %i.kp, %bb.ai ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.kq = icmp eq i64 %indvars.iv606.i, 0
  br i1 %i.kq, label %.thread.i, label %interpol.exit.thread.thread.i

interpol.exit.thread.thread.i:                    ; preds = %interpol.exit.thread.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.s, %bb.r
  %.0382646.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.r ], [ %i.cc, %bb.z ], [ %i.cc, %bb.s ] ; 3 uses
  %.0388643.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %i.ga, %bb.ab ], [ %i.ga, %bb.ac ], [ %i.ga, %bb.ad ], [ %i.ga, %bb.ae ], [ %i.ga, %bb.af ], [ %i.ga, %bb.ag ], [ %i.ga, %bb.r ], [ %i.ga, %bb.z ], [ %i.ga, %bb.s ] ; 3 uses
  %i.kr = load i32, ptr %i.bo, align 4, !tbaa !72
  %.not413.i = icmp eq i32 %i.kr, 0
  br i1 %.not413.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %interpol.exit.thread.thread.i
  %i.ks = add nsw i64 %i.ft, %indvars.iv606.i
  %sext.i = shl i64 %i.ks, 32
  %i.kt = ashr exact i64 %sext.i, 30
  %i.ku = getelementptr inbounds i8, ptr %i.p, i64 %i.kt
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !44
  %i.kw = icmp eq i32 %i.kv, -16777216
  br i1 %i.kw, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %interpol.exit.thread.thread.i, %interpol.exit.thread.i
  %.0382645.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %.0382646.i, %interpol.exit.thread.thread.i ], [ %.0382646.i, %bb.aj ]
  %.0388642.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %.0388643.i, %interpol.exit.thread.thread.i ], [ %.0388643.i, %bb.aj ]
  %i.kx = tail call i32 @llvm.abs.i32(i32 %i.fy, i1 true)
  %i.ky = load i32, ptr %i.ai, align 4, !tbaa !27
  %.neg415.i = sdiv i32 %i.ky, -2
  %i.kz = add i32 %.neg415.i, %i.bz
  %i.la = tail call i32 @llvm.abs.i32(i32 %i.kz, i1 true)
  %i.lb = add nuw nsw i32 %i.la, %i.kx
  %i.lc = uitofp nneg i32 %i.lb to double
  %i.ld = fmul nsz double %i.af, %i.lc
  %i.le = sitofp nsz i32 %i.fv to double
  %i.lf = fdiv nsz double %i.ld, %i.le
  %i.lg = fptrunc nsz double %i.lf to float
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  %.0382644.i = phi double [ %.0382645.i, %.thread.i ], [ %.0382646.i, %bb.aj ] ; 2 uses
  %.0388641.i = phi double [ %.0388642.i, %.thread.i ], [ %.0388643.i, %bb.aj ] ; 2 uses
  %i.lh = phi i1 [ true, %.thread.i ], [ false, %bb.aj ] ; 4 uses
  %.0394.i = phi nsz float [ %i.lg, %.thread.i ], [ undef, %bb.aj ] ; 3 uses
  %i.li = load i32, ptr %i.bp, align 8, !tbaa !34 ; 6 uses
  %i.lj = add nsw i32 %i.li, -8
  %i.lk = icmp sgt i32 %i.li, 8
  br i1 %i.lk, label %.lr.ph.i, label %.thread472.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.ll = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 9 uses
  %i.lm = fpext nsz float %.0394.i to double      ; 4 uses
  %i.ln = add nsw i32 %i.li, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv591.i = phi i32 [ %i.ln, %.lr.ph.i ], [ %indvars.iv.next592.i, %bb.az ] ; 2 uses
  %indvars.iv588.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next589.i, %bb.az ] ; 2 uses
  %indvars.iv581.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next582.i, %bb.az ] ; 11 uses
  %.1383506.i = phi double [ %.0382644.i, %.lr.ph.i ], [ %i.qf, %bb.az ] ; 3 uses
  %.1389505.i = phi double [ %.0388641.i, %.lr.ph.i ], [ %i.qh, %bb.az ] ; 3 uses
  %i.lo = fneg nsz double %.1383506.i
  %i.lp = fmul nsz double %.1383506.i, %i.lo
  %i.lq = tail call nsz double @llvm.fmuladd.f64(double %.1389505.i, double %.1389505.i, double %i.lp)
  %i.lr = fmul nsz double %.1389505.i, 2.000000e+00
  %i.ls = tail call nsz double @llvm.fmuladd.f64(double %i.lr, double %.1383506.i, double %i.cc) ; 4 uses
  %i.lt = getelementptr [16 x i8], ptr %i.ll, i64 %indvars.iv581.i ; 10 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  store double %i.ls, ptr %i.lu, align 8, !tbaa !28
  %i.lv = fneg nsz double %i.ls
  %i.lw = fmul nsz double %i.ls, %i.lv
  %i.lx = fadd nsz double %i.ga, %i.lq            ; 2 uses
  store double %i.lx, ptr %i.lt, align 8, !tbaa !28
  %i.ly = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.lz = shufflevector <2 x double> %i.ly, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ma = fmul nsz <2 x double> %i.lz, <double 1.000000e+00, double 2.000000e+00>
  %i.mb = insertelement <2 x double> %i.lz, double %i.ls, i64 1
  %i.mc = insertelement <2 x double> %i.fu, double %i.lw, i64 0
  %i.md = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.mb, <2 x double> %i.mc) ; 4 uses
  %i.me = extractelement <2 x double> %i.md, i64 1 ; 4 uses
  %i.mf = extractelement <2 x double> %i.md, i64 0
  %i.mg = fadd nsz double %i.ga, %i.mf            ; 5 uses
  br i1 %i.lh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mh = lshr exact i64 %indvars.iv581.i, 1
  %i.mi = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.mh
  %i.mj = load <2 x double>, ptr %i.mi, align 8, !tbaa !28
  %i.mk = insertelement <2 x double> %i.md, double %i.mg, i64 0
  %i.ml = fsub nsz <2 x double> %i.mj, %i.mk
  %i.mm = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ml)
  %i.mn = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.mm)
  %i.mo = fcmp nsz ugt double %i.mn, %i.lm
  br i1 %i.mo, label %bb.an, label %.thread472.thread.loopexit.split.loop.exit682.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store double %i.mg, ptr %i.mp, align 8, !tbaa !28
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lt, i64 24
  store double %i.me, ptr %i.mq, align 8, !tbaa !28
  %i.mr = fneg nsz double %i.me
  %i.ms = fmul nsz double %i.me, %i.mr
  %i.mt = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = fmul nsz <2 x double> %i.mu, <double 1.000000e+00, double 2.000000e+00>
  %i.mw = insertelement <2 x double> %i.md, double %i.mg, i64 0
  %i.mx = insertelement <2 x double> %i.fu, double %i.ms, i64 0
  %i.my = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mw, <2 x double> %i.mx) ; 3 uses
  %i.mz = extractelement <2 x double> %i.my, i64 1 ; 3 uses
  %i.na = extractelement <2 x double> %i.my, i64 0
  %i.nb = getelementptr i8, ptr %i.lt, i64 32
  %i.nc = getelementptr i8, ptr %i.lt, i64 40
  store double %i.mz, ptr %i.nc, align 8, !tbaa !28
  %i.nd = or disjoint i64 %indvars.iv581.i, 3     ; 2 uses
  %i.ne = fneg nsz double %i.mz
  %i.nf = fmul nsz double %i.mz, %i.ne
  %i.ng = fadd nsz double %i.ga, %i.na            ; 3 uses
  store double %i.ng, ptr %i.nb, align 8, !tbaa !28
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nj = fmul nsz <2 x double> %i.ni, <double 1.000000e+00, double 2.000000e+00>
  %i.nk = insertelement <2 x double> %i.my, double %i.ng, i64 0
  %i.nl = insertelement <2 x double> %i.fu, double %i.nf, i64 0
  %i.nm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nk, <2 x double> %i.nl) ; 4 uses
  %i.nn = extractelement <2 x double> %i.nm, i64 1 ; 4 uses
  %i.no = extractelement <2 x double> %i.nm, i64 0
  %i.np = fadd nsz double %i.ga, %i.no            ; 5 uses
  br i1 %i.lh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.nq = lshr i64 %i.nd, 1
  %i.nr = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.nq
  %i.ns = load <2 x double>, ptr %i.nr, align 8, !tbaa !28
  %i.nt = insertelement <2 x double> %i.nm, double %i.np, i64 0
  %i.nu = fsub nsz <2 x double> %i.ns, %i.nt
  %i.nv = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nu)
  %i.nw = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.nv)
  %i.nx = fcmp nsz ugt double %i.nw, %i.lm
  br i1 %i.nx, label %bb.ap, label %.thread472.thread.loopexit.split.loop.exit678.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.nd ; 2 uses
  store double %i.np, ptr %i.ny, align 8, !tbaa !28
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store double %i.nn, ptr %i.nz, align 8, !tbaa !28
  %i.oa = fneg nsz double %i.nn
  %i.ob = fmul nsz double %i.nn, %i.oa
  %i.oc = insertelement <2 x double> poison, double %i.np, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul nsz <2 x double> %i.od, <double 1.000000e+00, double 2.000000e+00>
  %i.of = insertelement <2 x double> %i.nm, double %i.np, i64 0
  %i.og = insertelement <2 x double> %i.fu, double %i.ob, i64 0
  %i.oh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oe, <2 x double> %i.of, <2 x double> %i.og) ; 3 uses
  %i.oi = extractelement <2 x double> %i.oh, i64 1 ; 3 uses
  %i.oj = extractelement <2 x double> %i.oh, i64 0
  %i.ok = getelementptr i8, ptr %i.lt, i64 64
  %i.ol = getelementptr i8, ptr %i.lt, i64 72
  store double %i.oi, ptr %i.ol, align 8, !tbaa !28
  %i.om = or disjoint i64 %indvars.iv581.i, 5     ; 3 uses
  %i.on = fneg nsz double %i.oi
  %i.oo = fmul nsz double %i.oi, %i.on
  %i.op = fadd nsz double %i.ga, %i.oj            ; 3 uses
  store double %i.op, ptr %i.ok, align 8, !tbaa !28
  %i.oq = insertelement <2 x double> poison, double %i.op, i64 0
  %i.or = shufflevector <2 x double> %i.oq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.os = fmul nsz <2 x double> %i.or, <double 1.000000e+00, double 2.000000e+00>
  %i.ot = insertelement <2 x double> %i.oh, double %i.op, i64 0
  %i.ou = insertelement <2 x double> %i.fu, double %i.oo, i64 0
  %i.ov = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.os, <2 x double> %i.ot, <2 x double> %i.ou) ; 4 uses
  %i.ow = extractelement <2 x double> %i.ov, i64 1 ; 4 uses
  %i.ox = extractelement <2 x double> %i.ov, i64 0
  %i.oy = fadd nsz double %i.ga, %i.ox            ; 5 uses
  br i1 %i.lh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.oz = lshr i64 %i.om, 1
  %i.pa = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.oz
  %i.pb = load <2 x double>, ptr %i.pa, align 8, !tbaa !28
  %i.pc = insertelement <2 x double> %i.ov, double %i.oy, i64 0
  %i.pd = fsub nsz <2 x double> %i.pb, %i.pc
  %i.pe = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pd)
  %i.pf = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.pe)
  %i.pg = fcmp nsz ugt double %i.pf, %i.lm
  br i1 %i.pg, label %bb.ar, label %.thread472.thread.loopexit.split.loop.exit674.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ph = getelementptr inbounds nuw [16 x i8], ptr %i.ll, i64 %i.om ; 2 uses
  store double %i.oy, ptr %i.ph, align 8, !tbaa !28
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store double %i.ow, ptr %i.pi, align 8, !tbaa !28
  %i.pj = fneg nsz double %i.ow
  %i.pk = fmul nsz double %i.ow, %i.pj
  %i.pl = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pn = fmul nsz <2 x double> %i.pm, <double 1.000000e+00, double 2.000000e+00>
  %i.po = insertelement <2 x double> %i.ov, double %i.oy, i64 0
  %i.pp = insertelement <2 x double> %i.fu, double %i.pk, i64 0
  %i.pq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.po, <2 x double> %i.pp) ; 3 uses
  %i.pr = extractelement <2 x double> %i.pq, i64 1 ; 3 uses
  %i.ps = extractelement <2 x double> %i.pq, i64 0
  %i.pt = getelementptr i8, ptr %i.lt, i64 96
  %i.pu = getelementptr i8, ptr %i.lt, i64 104
  store double %i.pr, ptr %i.pu, align 8, !tbaa !28
  %i.pv = or disjoint i64 %indvars.iv581.i, 7     ; 2 uses
  %i.pw = fneg nsz double %i.pr
  %i.px = fmul nsz double %i.pr, %i.pw
  %i.py = fadd nsz double %i.ga, %i.ps            ; 3 uses
  store double %i.py, ptr %i.pt, align 8, !tbaa !28
  %i.pz = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
end_hunk_0
