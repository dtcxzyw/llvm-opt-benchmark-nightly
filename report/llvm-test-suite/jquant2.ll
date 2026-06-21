inline.NumInlined: 7
inline.NumDeleted: 7
begin_hunk_0_@fill_inverse_cmap:bb.a
bb.k:                                             ; preds = %bb.i
  %.not163.i = icmp samesign ult i32 %i.y, %i.bd
  %.207.i = select i1 %.not163.i, i32 %i.n, i32 %i.w
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.sink204.i = phi i32 [ %i.n, %bb.j ], [ %i.w, %bb.h ], [ %.207.i, %bb.k ]
  %.1135.i = phi i64 [ %i.bp, %bb.j ], [ %i.bj, %bb.h ], [ %.0134.i, %bb.k ] ; 3 uses
  %i.bq = sub nsw i32 %i.bd, %.sink204.i
  %i.br = mul nsw i32 %i.bq, 3
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = mul nsw i64 %i.bs, %i.bs
  %.1.i = add nuw nsw i64 %i.bt, %i.ba
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !57
  %i.bw = zext i8 %i.bv to i32                    ; 6 uses
  %i.bx = icmp samesign ugt i32 %i.q, %i.bw
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = sub nsw i32 %i.bw, %i.q
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = mul nsw i64 %i.bz, %i.bz
  %i.cb = add nsw i64 %i.ca, %.1135.i
  br label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.cc = icmp samesign ult i32 %i.z, %i.bw
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cd = sub nuw nsw i32 %i.bw, %i.z
  %i.ce = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cf = mul nuw nsw i64 %i.ce, %i.ce
  %i.cg = add nsw i64 %i.cf, %.1135.i
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %.not164.i = icmp samesign ult i32 %i.ab, %i.bw
  %.208.i = select i1 %.not164.i, i32 %i.q, i32 %i.z
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.sink.i = phi i32 [ %i.q, %bb.o ], [ %i.z, %bb.m ], [ %.208.i, %bb.p ]
  %.2136.i = phi i64 [ %i.cg, %bb.o ], [ %i.cb, %bb.m ], [ %.1135.i, %bb.p ]
  %i.ch = sub nsw i32 %i.bw, %.sink.i
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = mul nsw i64 %i.ci, %i.ci
  %.2.i = add nuw nsw i64 %.1.i, %i.cj
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store i64 %.2136.i, ptr %i.ck, align 8, !tbaa !122
  %spec.select.i = tail call i64 @llvm.smin.i64(i64 %.2.i, i64 %.0137167.i) ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph170.i.preheader, label %bb.b, !llvm.loop !123

.lr.ph170.i.preheader:                            ; preds = %bb.q
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cl = icmp eq i32 %i.s, 1
  br i1 %i.cl, label %.lr.ph170.i.epil.preheader, label %.lr.ph170.i.preheader.new

.lr.ph170.i.preheader.new:                        ; preds = %.lr.ph170.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph170.i

.lr.ph170.i:                                      ; preds = %bb.t, %.lr.ph170.i.preheader.new
  %indvars.iv173.i = phi i64 [ 0, %.lr.ph170.i.preheader.new ], [ %indvars.iv.next174.i.1, %bb.t ] ; 4 uses
  %.0139169.i = phi i32 [ 0, %.lr.ph170.i.preheader.new ], [ %.1140.i.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph170.i.preheader.new ], [ %niter.next.1, %bb.t ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv173.i
  %i.cn = load i64, ptr %i.cm, align 16, !tbaa !122
  %.not.i = icmp sgt i64 %i.cn, %spec.select.i
  br i1 %.not.i, label %.lr.ph170.i.1, label %bb.r

bb.r:                                             ; preds = %.lr.ph170.i
  %i.co = trunc i64 %indvars.iv173.i to i8
  %i.cp = add nsw i32 %.0139169.i, 1
  %i.cq = sext i32 %.0139169.i to i64
  %i.cr = getelementptr inbounds i8, ptr %i.c, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !57
  br label %.lr.ph170.i.1

.lr.ph170.i.1:                                    ; preds = %bb.r, %.lr.ph170.i
  %.1140.i = phi i32 [ %i.cp, %bb.r ], [ %.0139169.i, %.lr.ph170.i ] ; 3 uses
  %indvars.iv.next174.i = or disjoint i64 %indvars.iv173.i, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next174.i
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !122
  %.not.i.1 = icmp sgt i64 %i.ct, %spec.select.i
  br i1 %.not.i.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph170.i.1
  %i.cu = trunc i64 %indvars.iv.next174.i to i8
  %i.cv = add nsw i32 %.1140.i, 1
  %i.cw = sext i32 %.1140.i to i64
  %i.cx = getelementptr inbounds i8, ptr %i.c, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !57
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph170.i.1
  %.1140.i.1 = phi i32 [ %i.cv, %bb.s ], [ %.1140.i, %.lr.ph170.i.1 ] ; 3 uses
  %indvars.iv.next174.i.1 = add nuw nsw i64 %indvars.iv173.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %find_nearby_colors.exit.loopexit.unr-lcssa, label %.lr.ph170.i, !llvm.loop !124

find_nearby_colors.exit.loopexit.unr-lcssa:       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %find_nearby_colors.exit, label %.lr.ph170.i.epil.preheader

.lr.ph170.i.epil.preheader:                       ; preds = %find_nearby_colors.exit.loopexit.unr-lcssa, %.lr.ph170.i.preheader
  %indvars.iv173.i.epil.init = phi i64 [ 0, %.lr.ph170.i.preheader ], [ %indvars.iv.next174.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0139169.i.epil.init = phi i32 [ 0, %.lr.ph170.i.preheader ], [ %.1140.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod103 = trunc i32 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv173.i.epil.init
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !122
  %.not.i.epil = icmp sgt i64 %i.cz, %spec.select.i
  br i1 %.not.i.epil, label %find_nearby_colors.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph170.i.epil.preheader
  %i.da = trunc i64 %indvars.iv173.i.epil.init to i8
  %i.db = add nsw i32 %.0139169.i.epil.init, 1
  %i.dc = sext i32 %.0139169.i.epil.init to i64
  %i.dd = getelementptr inbounds i8, ptr %i.c, i64 %i.dc
  store i8 %i.da, ptr %i.dd, align 1, !tbaa !57
  br label %find_nearby_colors.exit

find_nearby_colors.exit:                          ; preds = %find_nearby_colors.exit.loopexit.unr-lcssa, %bb.u, %.lr.ph170.i.epil.preheader, %bb.a
  %.0139.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1140.i.1, %find_nearby_colors.exit.loopexit.unr-lcssa ], [ %i.db, %bb.u ], [ %.0139169.i.epil.init, %.lr.ph170.i.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <4 x i64> splat (i64 2147483647), ptr %i.a, align 16, !tbaa !122
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <4 x i64> splat (i64 2147483647), ptr %i.de, align 16, !tbaa !122
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <4 x i64> splat (i64 2147483647), ptr %i.df, align 16, !tbaa !122
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <4 x i64> splat (i64 2147483647), ptr %i.dg, align 16, !tbaa !122
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <4 x i64> splat (i64 2147483647), ptr %i.dh, align 16, !tbaa !122
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store <4 x i64> splat (i64 2147483647), ptr %i.di, align 16, !tbaa !122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store <4 x i64> splat (i64 2147483647), ptr %i.dj, align 16, !tbaa !122
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store <4 x i64> splat (i64 2147483647), ptr %i.dk, align 16, !tbaa !122
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store <4 x i64> splat (i64 2147483647), ptr %i.dl, align 16, !tbaa !122
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  store <4 x i64> splat (i64 2147483647), ptr %i.dm, align 16, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store <4 x i64> splat (i64 2147483647), ptr %i.dn, align 16, !tbaa !122
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  store <4 x i64> splat (i64 2147483647), ptr %i.do, align 16, !tbaa !122
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  store <4 x i64> splat (i64 2147483647), ptr %i.dp, align 16, !tbaa !122
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store <4 x i64> splat (i64 2147483647), ptr %i.dq, align 16, !tbaa !122
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store <4 x i64> splat (i64 2147483647), ptr %i.dr, align 16, !tbaa !122
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store <4 x i64> splat (i64 2147483647), ptr %i.ds, align 16, !tbaa !122
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  store <4 x i64> splat (i64 2147483647), ptr %i.dt, align 16, !tbaa !122
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store <4 x i64> splat (i64 2147483647), ptr %i.du, align 16, !tbaa !122
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store <4 x i64> splat (i64 2147483647), ptr %i.dv, align 16, !tbaa !122
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  store <4 x i64> splat (i64 2147483647), ptr %i.dw, align 16, !tbaa !122
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  store <4 x i64> splat (i64 2147483647), ptr %i.dx, align 16, !tbaa !122
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  store <4 x i64> splat (i64 2147483647), ptr %i.dy, align 16, !tbaa !122
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store <4 x i64> splat (i64 2147483647), ptr %i.dz, align 16, !tbaa !122
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  store <4 x i64> splat (i64 2147483647), ptr %i.ea, align 16, !tbaa !122
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store <4 x i64> splat (i64 2147483647), ptr %i.eb, align 16, !tbaa !122
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  store <4 x i64> splat (i64 2147483647), ptr %i.ec, align 16, !tbaa !122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store <4 x i64> splat (i64 2147483647), ptr %i.ed, align 16, !tbaa !122
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  store <4 x i64> splat (i64 2147483647), ptr %i.ee, align 16, !tbaa !122
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  store <4 x i64> splat (i64 2147483647), ptr %i.ef, align 16, !tbaa !122
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store <4 x i64> splat (i64 2147483647), ptr %i.eg, align 16, !tbaa !122
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store <4 x i64> splat (i64 2147483647), ptr %i.eh, align 16, !tbaa !122
  store <4 x i64> splat (i64 2147483647), ptr %i.ei, align 16, !tbaa !122
  %i.ej = icmp sgt i32 %.0139.lcssa.i, 0
  br i1 %i.ej, label %.lr.ph.i37, label %find_best_colors.exit

.lr.ph.i37:                                       ; preds = %find_nearby_colors.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 152
  %wide.trip.count.i38 = zext nneg i32 %.0139.lcssa.i to i64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !71 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %bb.cb, %.lr.ph.i37
  %indvars.iv.i39 = phi i64 [ 0, %.lr.ph.i37 ], [ %indvars.iv.next.i41, %bb.cb ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i39
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !57  ; 33 uses
  %4 = load ptr, ptr %i.el, align 8, !tbaa !67
  %i.es = zext i8 %i.er to i64                    ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %4, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !57
  %i.ev = zext i8 %i.eu to i32
  %i.ew = sub nsw i32 %i.k, %i.ev
  %i.ex = shl nsw i32 %i.ew, 1
  %i.ey = sext i32 %i.ex to i64                   ; 3 uses
  %i.ez = mul nsw i64 %i.ey, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.es
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !57
  %i.fc = zext i8 %i.fb to i32
  %i.fd = sub nsw i32 %i.n, %i.fc
  %i.fe = mul nsw i32 %i.fd, 3
  %i.ff = sext i32 %i.fe to i64                   ; 3 uses
  %i.fg = mul nsw i64 %i.ff, %i.ff
  %i.fh = add nuw nsw i64 %i.fg, %i.ez
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !57
  %i.fk = zext i8 %i.fj to i32
  %i.fl = sub nsw i32 %i.q, %i.fk
  %i.fm = sext i32 %i.fl to i64                   ; 3 uses
  %i.fn = mul nsw i64 %i.fm, %i.fm
  %i.fo = add nuw nsw i64 %i.fh, %i.fn
  %i.fp = shl nsw i64 %i.ey, 5
  %i.fq = add nsw i64 %i.fp, 256
  %i.fr = mul nsw i64 %i.ff, 24                   ; 7 uses
  %i.fs = add nsw i64 %i.fr, 144
  %i.ft = shl nsw i64 %i.fm, 4                    ; 3 uses
  %i.fu = add nsw i64 %i.ft, 64                   ; 8 uses
  %i.fv = add nsw i64 %i.ft, 192                  ; 8 uses
  %i.fw = add nsw i64 %i.ft, 320                  ; 8 uses
  %i.fx = add nsw i64 %i.fr, 432
  %i.fy = add nsw i64 %i.fr, 720
  %i.fz = add nsw i64 %i.fr, 1008
  %i.ga = add nsw i64 %i.fr, 1296
  %i.gb = add nsw i64 %i.fr, 1584
  %i.gc = add nsw i64 %i.fr, 1872
  br label %.preheader70.i

.preheader70.i:                                   ; preds = %bb.ca, %bb.v
  %.088.i = phi i32 [ 3, %bb.v ], [ %i.mi, %bb.ca ] ; 2 uses
  %.05887.i = phi i64 [ %i.fq, %bb.v ], [ %i.mh, %bb.ca ] ; 2 uses
  %.06186.i = phi i64 [ %i.fo, %bb.v ], [ %i.mg, %bb.ca ] ; 5 uses
  %.06285.i = phi ptr [ %i.d, %bb.v ], [ %i.mf, %bb.ca ] ; 33 uses
  %.16484.i = phi ptr [ %i.a, %bb.v ], [ %i.me, %bb.ca ] ; 34 uses
  %i.gd = load i64, ptr %.16484.i, align 8, !tbaa !122
  %i.ge = icmp slt i64 %.06186.i, %i.gd
  br i1 %i.ge, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader70.i
  store i64 %.06186.i, ptr %.16484.i, align 8, !tbaa !122
  store i8 %i.er, ptr %.06285.i, align 1, !tbaa !57
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.preheader70.i
  %i.gf = add nsw i64 %.06186.i, %i.fu            ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.16484.i, i64 8 ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !122
  %i.gi = icmp slt i64 %i.gf, %i.gh
  br i1 %i.gi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gj = getelementptr inbounds nuw i8, ptr %.06285.i, i64 1
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !122
  store i8 %i.er, ptr %i.gj, align 1, !tbaa !57
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gk = add nsw i64 %i.gf, %i.fv                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.16484.i, i64 16 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !122
  %i.gn = icmp slt i64 %i.gk, %i.gm
  br i1 %i.gn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.go = getelementptr inbounds nuw i8, ptr %.06285.i, i64 2
  store i64 %i.gk, ptr %i.gl, align 8, !tbaa !122
  store i8 %i.er, ptr %i.go, align 1, !tbaa !57
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.gp = add nsw i64 %i.gk, %i.fw                ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.16484.i, i64 24 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !122
  %i.gs = icmp slt i64 %i.gp, %i.gr
  br i1 %i.gs, label %bb.ac, label %.preheader.1.i

bb.ac:                                            ; preds = %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %.06285.i, i64 3
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !122
  store i8 %i.er, ptr %i.gt, align 1, !tbaa !57
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.ac, %bb.ab
  %i.gu = getelementptr inbounds nuw i8, ptr %.16484.i, i64 32 ; 2 uses
  %i.gv = add nsw i64 %i.fs, %.06186.i            ; 4 uses
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !122
  %i.gx = icmp slt i64 %i.gv, %i.gw
  br i1 %i.gx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.preheader.1.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.06285.i, i64 4
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !122
  store i8 %i.er, ptr %i.gy, align 1, !tbaa !57
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.preheader.1.i
  %i.gz = add nsw i64 %i.gv, %i.fu                ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.16484.i, i64 40 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !122
  %i.hc = icmp slt i64 %i.gz, %i.hb
  br i1 %i.hc, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hd = getelementptr inbounds nuw i8, ptr %.06285.i, i64 5
  store i64 %i.gz, ptr %i.ha, align 8, !tbaa !122
  store i8 %i.er, ptr %i.hd, align 1, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.he = add nsw i64 %i.gz, %i.fv                ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.16484.i, i64 48 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !122
  %i.hh = icmp slt i64 %i.he, %i.hg
  br i1 %i.hh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.hi = getelementptr inbounds nuw i8, ptr %.06285.i, i64 6
  store i64 %i.he, ptr %i.hf, align 8, !tbaa !122
  store i8 %i.er, ptr %i.hi, align 1, !tbaa !57
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.hj = add nsw i64 %i.he, %i.fw                ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.16484.i, i64 56 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !122
  %i.hm = icmp slt i64 %i.hj, %i.hl
  br i1 %i.hm, label %bb.aj, label %.preheader.2.i

bb.aj:                                            ; preds = %bb.ai
  %i.hn = getelementptr inbounds nuw i8, ptr %.06285.i, i64 7
  store i64 %i.hj, ptr %i.hk, align 8, !tbaa !122
  store i8 %i.er, ptr %i.hn, align 1, !tbaa !57
  br label %.preheader.2.i

.preheader.2.i:                                   ; preds = %bb.aj, %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %.16484.i, i64 64 ; 2 uses
  %i.hp = add nsw i64 %i.fx, %i.gv                ; 4 uses
  %i.hq = load i64, ptr %i.ho, align 8, !tbaa !122
  %i.hr = icmp slt i64 %i.hp, %i.hq
  br i1 %i.hr, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.preheader.2.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.06285.i, i64 8
  store i64 %i.hp, ptr %i.ho, align 8, !tbaa !122
  store i8 %i.er, ptr %i.hs, align 1, !tbaa !57
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.preheader.2.i
  %i.ht = add nsw i64 %i.hp, %i.fu                ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.16484.i, i64 72 ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !122
  %i.hw = icmp slt i64 %i.ht, %i.hv
  br i1 %i.hw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hx = getelementptr inbounds nuw i8, ptr %.06285.i, i64 9
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !122
  store i8 %i.er, ptr %i.hx, align 1, !tbaa !57
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hy = add nsw i64 %i.ht, %i.fv                ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.16484.i, i64 80 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !122
  %i.ib = icmp slt i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ic = getelementptr inbounds nuw i8, ptr %.06285.i, i64 10
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !122
  store i8 %i.er, ptr %i.ic, align 1, !tbaa !57
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.id = add nsw i64 %i.hy, %i.fw                ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.16484.i, i64 88 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !122
  %i.ig = icmp slt i64 %i.id, %i.if
  br i1 %i.ig, label %bb.aq, label %.preheader.3.i

bb.aq:                                            ; preds = %bb.ap
  %i.ih = getelementptr inbounds nuw i8, ptr %.06285.i, i64 11
  store i64 %i.id, ptr %i.ie, align 8, !tbaa !122
  store i8 %i.er, ptr %i.ih, align 1, !tbaa !57
  br label %.preheader.3.i

.preheader.3.i:                                   ; preds = %bb.aq, %bb.ap
  %i.ii = getelementptr inbounds nuw i8, ptr %.16484.i, i64 96 ; 2 uses
  %i.ij = add nsw i64 %i.fy, %i.hp                ; 4 uses
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !122
  %i.il = icmp slt i64 %i.ij, %i.ik
end_hunk_0
