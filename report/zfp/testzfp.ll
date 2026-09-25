Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zfp/original/testzfp?download=true
inline.NumInlined: 3089
inline.NumDeleted: 961
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEE3setEPKf:bb.a
  %i.cy = sub nuw nsw i32 64, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %exitcond.not.i.i.us.us.us.us.us = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us = icmp eq i64 %i.bo, 3
  %exitcond.not.i.i.us.us.us.us.us.1161 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.1 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.1 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bo, 2
  %exitcond.not.i.i.us.us.us.us.us.2162 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.2 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.2 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bo, 1
  %exitcond.not.i.i.us.us.us.us.us.3 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.3 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.3 = icmp eq i64 %i.bh, 1
  br label %.preheader62.i.i.us.us.us.us.us

.preheader62.i.i.us.us.us.us.us:                  ; preds = %bb.w, %bb.e
  %.05174.i.i.us.us.us.us.us = phi i32 [ 0, %bb.e ], [ %i.fh, %bb.w ]
  %.05273.i.i.us.us.us.us.us = phi ptr [ %i.ak, %bb.e ], [ %i.fj, %bb.w ]
  %.05372.i.i.us.us.us.us.us = phi ptr [ %.34052.us.us.us.us.us, %bb.e ], [ %i.fi, %bb.w ]
  br label %.preheader61.i.i.us.us.us.us.us

.preheader61.i.i.us.us.us.us.us:                  ; preds = %bb.v, %.preheader62.i.i.us.us.us.us.us
  %.05071.i.i.us.us.us.us.us = phi i32 [ 0, %.preheader62.i.i.us.us.us.us.us ], [ %i.fe, %bb.v ]
  %.170.i.i.us.us.us.us.us = phi ptr [ %.05273.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.fg, %bb.v ] ; 5 uses
  %.15469.i.i.us.us.us.us.us = phi ptr [ %.05372.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.ff, %bb.v ] ; 5 uses
  %i.da = load float, ptr %.15469.i.i.us.us.us.us.us, align 4, !tbaa !99
  store float %i.da, ptr %.170.i.i.us.us.us.us.us, align 4, !tbaa !99
  %i.db = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader61.i.i.us.us.us.us.us
  %i.dd = load float, ptr %i.db, align 4, !tbaa !99
  store float %i.dd, ptr %i.dc, align 4, !tbaa !99
  %i.de = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load float, ptr %i.de, align 4, !tbaa !99
  store float %i.dg, ptr %i.df, align 4, !tbaa !99
  %i.dh = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = load float, ptr %i.dh, align 4, !tbaa !99
  store float %i.dj, ptr %i.di, align 4, !tbaa !99
  %i.dk = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader61.i.i.us.us.us.us.us
  %.lcssa152 = phi ptr [ %i.db, %.preheader61.i.i.us.us.us.us.us ], [ %i.de, %bb.f ], [ %i.dh, %bb.g ], [ %i.dk, %bb.h ]
  %.lcssa = phi ptr [ %i.dc, %.preheader61.i.i.us.us.us.us.us ], [ %i.df, %bb.f ], [ %i.di, %bb.g ], [ %i.dl, %bb.h ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %.lcssa152, i64 %i.cn ; 6 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.lcssa, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us, label %bb.v, label %.preheader.i.i.us.us.us.us.us.1

.preheader.i.i.us.us.us.us.us.1:                  ; preds = %bb.i
  %i.do = load float, ptr %i.dm, align 4, !tbaa !99
  store float %i.do, ptr %i.dn, align 4, !tbaa !99
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.us.us.us.us.us.1
  %i.dr = load float, ptr %i.dp, align 4, !tbaa !99
  store float %i.dr, ptr %i.dq, align 4, !tbaa !99
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = load float, ptr %i.ds, align 4, !tbaa !99
  store float %i.du, ptr %i.dt, align 4, !tbaa !99
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 12 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load float, ptr %i.dv, align 4, !tbaa !99
  store float %i.dx, ptr %i.dw, align 4, !tbaa !99
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.i.us.us.us.us.us.1
  %.lcssa152.1 = phi ptr [ %i.dp, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.ds, %bb.j ], [ %i.dv, %bb.k ], [ %i.dy, %bb.l ]
  %.lcssa.1 = phi ptr [ %i.dq, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.dt, %bb.j ], [ %i.dw, %bb.k ], [ %i.dz, %bb.l ]
  %i.ea = getelementptr inbounds [4 x i8], ptr %.lcssa152.1, i64 %i.cn ; 6 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.1, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.1, label %bb.v, label %.preheader.i.i.us.us.us.us.us.2

.preheader.i.i.us.us.us.us.us.2:                  ; preds = %bb.m
  %i.ec = load float, ptr %i.ea, align 4, !tbaa !99
  store float %i.ec, ptr %i.eb, align 4, !tbaa !99
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2162, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i.us.us.us.us.us.2
  %i.ef = load float, ptr %i.ed, align 4, !tbaa !99
  store float %i.ef, ptr %i.ee, align 4, !tbaa !99
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ei = load float, ptr %i.eg, align 4, !tbaa !99
  store float %i.ei, ptr %i.eh, align 4, !tbaa !99
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = load float, ptr %i.ej, align 4, !tbaa !99
  store float %i.el, ptr %i.ek, align 4, !tbaa !99
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i.i.us.us.us.us.us.2
  %.lcssa152.2 = phi ptr [ %i.ed, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.eg, %bb.n ], [ %i.ej, %bb.o ], [ %i.em, %bb.p ]
  %.lcssa.2 = phi ptr [ %i.ee, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.eh, %bb.n ], [ %i.ek, %bb.o ], [ %i.en, %bb.p ]
  %i.eo = getelementptr inbounds [4 x i8], ptr %.lcssa152.2, i64 %i.cn ; 6 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.2, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.2, label %bb.v, label %.preheader.i.i.us.us.us.us.us.3

.preheader.i.i.us.us.us.us.us.3:                  ; preds = %bb.q
  %i.eq = load float, ptr %i.eo, align 4, !tbaa !99
  store float %i.eq, ptr %i.ep, align 4, !tbaa !99
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 4 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 4 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.3, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.us.us.us.us.us.3
  %i.et = load float, ptr %i.er, align 4, !tbaa !99
  store float %i.et, ptr %i.es, align 4, !tbaa !99
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = load float, ptr %i.eu, align 4, !tbaa !99
  store float %i.ew, ptr %i.ev, align 4, !tbaa !99
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 12 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 12 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = load float, ptr %i.ex, align 4, !tbaa !99
  store float %i.ez, ptr %i.ey, align 4, !tbaa !99
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.i.us.us.us.us.us.3
  %.lcssa152.3 = phi ptr [ %i.er, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.eu, %bb.r ], [ %i.ex, %bb.s ], [ %i.fa, %bb.t ]
  %.lcssa.3 = phi ptr [ %i.es, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.ev, %bb.r ], [ %i.ey, %bb.s ], [ %i.fb, %bb.t ]
  %i.fc = getelementptr inbounds [4 x i8], ptr %.lcssa152.3, i64 %i.cn
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.lcssa.3, i64 %i.bh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i
  %.lcssa154 = phi ptr [ %i.dm, %bb.i ], [ %i.ea, %bb.m ], [ %i.eo, %bb.q ], [ %i.fc, %bb.u ]
  %.lcssa153 = phi ptr [ %i.dn, %bb.i ], [ %i.eb, %bb.m ], [ %i.ep, %bb.q ], [ %i.fd, %bb.u ]
  %i.fe = add nuw nsw i32 %.05071.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %.lcssa154, i64 %i.cq ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.lcssa153, i64 %i.ct ; 2 uses
  %exitcond81.not.i.i.us.us.us.us.us = icmp eq i32 %i.fe, %i.cl
  br i1 %exitcond81.not.i.i.us.us.us.us.us, label %bb.w, label %.preheader61.i.i.us.us.us.us.us

bb.w:                                             ; preds = %bb.v
  %i.fh = add nuw nsw i32 %.05174.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.cw
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.cz
  %exitcond82.not.i.i.us.us.us.us.us = icmp eq i32 %i.fh, %i.cm
  br i1 %exitcond82.not.i.i.us.us.us.us.us, label %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us, label %.preheader62.i.i.us.us.us.us.us

bb.x:                                             ; preds = %bb.d
  tail call void @_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLine3putEPKfllll(ptr noundef nonnull align 4 dereferenceable(1024) %i.ak, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q)
  br label %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us: ; preds = %._ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
  %i.fk = phi ptr [ %.pre, %._ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge ], [ %.pre115, %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us ] ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !178
  %i.fo = mul i64 %i.fn, %.354.us.us.us.us.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !217 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fu = load i64, ptr %i.fp, align 8, !tbaa !219 ; 2 uses
  %2 = load i64, ptr %i.fq, align 8, !tbaa !218   ; 2 uses
  %i.fv = udiv i64 %.354.us.us.us.us.us, %i.fu    ; 2 uses
  %3 = urem i64 %.354.us.us.us.us.us, %i.fu
  %i.fw = urem i64 %i.fv, %2
  %i.fx = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %i.fw, i64 1
  %i.fz = shl <2 x i64> %i.fy, splat (i64 2)
  %i.ga = udiv i64 %i.fv, %2                      ; 2 uses
  %i.gb = urem i64 %i.ga, %i.fs
  %i.gc = udiv i64 %i.ga, %i.fs
  %i.gd = load <2 x i64>, ptr %i.ft, align 8, !tbaa !40 ; 2 uses
  %i.ge = xor <2 x i64> %i.gd, %i.fz
  %i.gf = add <2 x i64> %i.ge, splat (i64 -4)
  %i.gg = lshr <2 x i64> %i.gf, splat (i64 62)
  %i.gh = sub <2 x i64> zeroinitializer, %i.gd
  %i.gi = and <2 x i64> %i.gg, %i.gh              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.gk = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gl = insertelement <2 x i64> %i.gk, i64 %i.gc, i64 1
  %i.gm = shl <2 x i64> %i.gl, splat (i64 2)
  %i.gn = load <2 x i64>, ptr %i.gj, align 8, !tbaa !40 ; 2 uses
  %i.go = xor <2 x i64> %i.gn, %i.gm
  %i.gp = add <2 x i64> %i.go, splat (i64 -4)
  %i.gq = lshr <2 x i64> %i.gp, splat (i64 62)
  %i.gr = sub <2 x i64> zeroinitializer, %i.gn
  %i.gs = and <2 x i64> %i.gq, %i.gr              ; 3 uses
  %i.gt = load ptr, ptr %i.fl, align 8, !tbaa !208 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.gv, i64 noundef %i.fo)
  %i.gw = or <2 x i64> %i.gi, %i.gs
  %i.gx = shufflevector <2 x i64> %i.gw, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = or <2 x i64> %i.gx, %i.gi
  %foldExtExtBinop150 = or <2 x i64> %i.gy, %i.gs
  %i.gz = extractelement <2 x i64> %foldExtExtBinop150, i64 0
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us
  %i.hb = sub nuw nsw <2 x i64> splat (i64 4), %i.gi ; 2 uses
  %i.hc = sub nuw nsw <2 x i64> splat (i64 4), %i.gs ; 2 uses
  %i.hd = extractelement <2 x i64> %i.hb, i64 0
  %i.he = extractelement <2 x i64> %i.hb, i64 1
  %i.hf = extractelement <2 x i64> %i.hc, i64 0
  %i.hg = extractelement <2 x i64> %i.hc, i64 1
  %i.hh = tail call noundef i64 @zfp_encode_partial_block_strided_float_4(ptr noundef nonnull %i.gt, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef %i.hd, i64 noundef %i.he, i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKfllll.exit.us.us.us.us.us

bb.z:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us
  %i.hi = tail call noundef i64 @zfp_encode_block_strided_float_4(ptr noundef nonnull %i.gt, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKfllll.exit.us.us.us.us.us

_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKfllll.exit.us.us.us.us.us: ; preds = %bb.z, %bb.y
  %i.hj = load ptr, ptr %i.gu, align 8, !tbaa !195
  %i.hk = tail call i64 @stream_flush(ptr noundef %i.hj) ; 0 uses
  br label %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us

_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us: ; preds = %bb.w, %_ZN3zfp8internal11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEE6encodeEmPKfllll.exit.us.us.us.us.us, %bb.x
  %i.hl = add nuw i64 %.055.us.us.us.us.us, 1     ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.34052.us.us.us.us.us, i64 16 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hl, %i.c
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us, label %bb.c

._crit_edge.us.us.us.us.us:                       ; preds = %_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll.exit.us.us.us.us.us
  %i.hn = add nuw i64 %.03359.us.us.us.us.us, 1   ; 2 uses
  %i.ho = load i64, ptr %i.j, align 8, !tbaa !126
  %i.hp = sub i64 %i.ho, %i.c
  %.idx.us.us.us.us.us = shl nsw i64 %i.hp, 4
  %i.hq = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.us.us.us.us.us ; 2 uses
  %exitcond110.not = icmp eq i64 %i.hn, %i.e
  br i1 %exitcond110.not, label %._crit_edge60.split.us.us.us.us.us, label %.preheader.us.us.us.us.us

._crit_edge60.split.us.us.us.us.us:               ; preds = %._crit_edge.us.us.us.us.us
  %i.hr = add nuw i64 %.03466.us.us.us.us, 1      ; 2 uses
  %i.hs = load i64, ptr %i.l, align 8, !tbaa !138
  %i.ht = sub i64 %i.hs, %i.e
  %i.hu = mul nsw i64 %i.v, %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hu ; 2 uses
  %exitcond111.not = icmp eq i64 %i.hr, %i.g
  br i1 %exitcond111.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader45.us.us.us.us

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge60.split.us.us.us.us.us
  %i.hw = add nuw i64 %.03581.us.us, 1            ; 2 uses
  %i.hx = load i64, ptr %i.o, align 8, !tbaa !158
  %i.hy = sub i64 %i.hx, %i.g
  %i.hz = mul nsw i64 %i.w, %i.hy
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hv, i64 %i.hz
  %exitcond112.not = icmp eq i64 %i.hw, %i.i
  br i1 %exitcond112.not, label %.loopexit, label %.preheader46.us.us

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.ib = mul i64 %i.e, %i.c
  %i.ic = mul i64 %i.ib, %i.g
  %i.id = mul i64 %i.ic, %i.i                     ; 2 uses
  %.not95 = icmp eq i64 %i.id, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %.490 = phi i64 [ 0, %.lr.ph ], [ %i.if, %bb.ab ] ; 2 uses
  %i.if = add nuw i64 %.490, 1                    ; 2 uses
  call void @_ZNK3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9put_blockEmPKfllll(ptr noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef %.490, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64)
  %exitcond114.not = icmp eq i64 %i.if, %i.id
  br i1 %exitcond114.not, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader46.lr.ph, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i

_ZN3zfp8internal18deallocate_alignedEPv.exit.i:   ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  tail call void @free(ptr noundef nonnull %i.d) #24
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEED2Ev.exit

_ZN3zfp8internal5CacheINS0_11BlockCache4IfNS0_11BlockStore4IfNS_5codec4zfp4IfEENS_5index8implicitEEEE9CacheLineEED2Ev.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i, %bb.c
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE4freeEv.exit, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i

_ZN3zfp8internal18deallocate_alignedEPv.exit.i:   ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = invoke ptr @zfp_stream_bit_stream(ptr noundef %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  invoke void @stream_close(ptr noundef %i.e)
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %.noexc
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !208
  invoke void @zfp_stream_set_bit_stream(ptr noundef %i.f, ptr noundef null)
          to label %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE4freeEv.exit unwind label %bb.b

_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IfEENS_5index8implicitEE4freeEv.exit: ; preds = %bb.a, %.noexc4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208
  %i.i = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.h)
  tail call void @stream_close(ptr noundef %i.i)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !208
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.j, ptr noundef null)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !208
  tail call void @zfp_stream_close(ptr noundef %i.k)
  ret void

bb.b:                                             ; preds = %.noexc4, %.noexc, %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN3zfp5codec8zfp_baseILj4EfED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEED0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3zfp6array4IfNS_5codec4zfp4IfEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEE3setEPKd:bb.a
  %i.cy = sub nuw nsw i32 64, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %exitcond.not.i.i.us.us.us.us.us = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us = icmp eq i64 %i.bo, 3
  %exitcond.not.i.i.us.us.us.us.us.1161 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.1 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.1 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us.1 = icmp eq i64 %i.bo, 2
  %exitcond.not.i.i.us.us.us.us.us.2162 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.2 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.2 = icmp eq i64 %i.bh, 1
  %exitcond80.not.i.i.us.us.us.us.us.2 = icmp eq i64 %i.bo, 1
  %exitcond.not.i.i.us.us.us.us.us.3 = icmp eq i64 %i.bh, 3
  %exitcond.not.i.i.us.us.us.us.us.1.3 = icmp eq i64 %i.bh, 2
  %exitcond.not.i.i.us.us.us.us.us.2.3 = icmp eq i64 %i.bh, 1
  br label %.preheader62.i.i.us.us.us.us.us

.preheader62.i.i.us.us.us.us.us:                  ; preds = %bb.w, %bb.e
  %.05174.i.i.us.us.us.us.us = phi i32 [ 0, %bb.e ], [ %i.fh, %bb.w ]
  %.05273.i.i.us.us.us.us.us = phi ptr [ %i.ak, %bb.e ], [ %i.fj, %bb.w ]
  %.05372.i.i.us.us.us.us.us = phi ptr [ %.34052.us.us.us.us.us, %bb.e ], [ %i.fi, %bb.w ]
  br label %.preheader61.i.i.us.us.us.us.us

.preheader61.i.i.us.us.us.us.us:                  ; preds = %bb.v, %.preheader62.i.i.us.us.us.us.us
  %.05071.i.i.us.us.us.us.us = phi i32 [ 0, %.preheader62.i.i.us.us.us.us.us ], [ %i.fe, %bb.v ]
  %.170.i.i.us.us.us.us.us = phi ptr [ %.05273.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.fg, %bb.v ] ; 5 uses
  %.15469.i.i.us.us.us.us.us = phi ptr [ %.05372.i.i.us.us.us.us.us, %.preheader62.i.i.us.us.us.us.us ], [ %i.ff, %bb.v ] ; 5 uses
  %i.da = load double, ptr %.15469.i.i.us.us.us.us.us, align 8, !tbaa !49
  store double %i.da, ptr %.170.i.i.us.us.us.us.us, align 8, !tbaa !49
  %i.db = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.preheader61.i.i.us.us.us.us.us
  %i.dd = load double, ptr %i.db, align 8, !tbaa !49
  store double %i.dd, ptr %i.dc, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load double, ptr %i.de, align 8, !tbaa !49
  store double %i.dg, ptr %i.df, align 8, !tbaa !49
  %i.dh = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dj = load double, ptr %i.dh, align 8, !tbaa !49
  store double %i.dj, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %.15469.i.i.us.us.us.us.us, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %.170.i.i.us.us.us.us.us, i64 32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %.preheader61.i.i.us.us.us.us.us
  %.lcssa152 = phi ptr [ %i.db, %.preheader61.i.i.us.us.us.us.us ], [ %i.de, %bb.f ], [ %i.dh, %bb.g ], [ %i.dk, %bb.h ]
  %.lcssa = phi ptr [ %i.dc, %.preheader61.i.i.us.us.us.us.us ], [ %i.df, %bb.f ], [ %i.di, %bb.g ], [ %i.dl, %bb.h ]
  %i.dm = getelementptr inbounds [8 x i8], ptr %.lcssa152, i64 %i.cn ; 6 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.lcssa, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us, label %bb.v, label %.preheader.i.i.us.us.us.us.us.1

.preheader.i.i.us.us.us.us.us.1:                  ; preds = %bb.i
  %i.do = load double, ptr %i.dm, align 8, !tbaa !49
  store double %i.do, ptr %i.dn, align 8, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1161, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.preheader.i.i.us.us.us.us.us.1
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !49
  store double %i.dr, ptr %i.dq, align 8, !tbaa !49
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.du = load double, ptr %i.ds, align 8, !tbaa !49
  store double %i.du, ptr %i.dt, align 8, !tbaa !49
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !49
  store double %i.dx, ptr %i.dw, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.preheader.i.i.us.us.us.us.us.1
  %.lcssa152.1 = phi ptr [ %i.dp, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.ds, %bb.j ], [ %i.dv, %bb.k ], [ %i.dy, %bb.l ]
  %.lcssa.1 = phi ptr [ %i.dq, %.preheader.i.i.us.us.us.us.us.1 ], [ %i.dt, %bb.j ], [ %i.dw, %bb.k ], [ %i.dz, %bb.l ]
  %i.ea = getelementptr inbounds [8 x i8], ptr %.lcssa152.1, i64 %i.cn ; 6 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.1, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.1, label %bb.v, label %.preheader.i.i.us.us.us.us.us.2

.preheader.i.i.us.us.us.us.us.2:                  ; preds = %bb.m
  %i.ec = load double, ptr %i.ea, align 8, !tbaa !49
  store double %i.ec, ptr %i.eb, align 8, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2162, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.preheader.i.i.us.us.us.us.us.2
  %i.ef = load double, ptr %i.ed, align 8, !tbaa !49
  store double %i.ef, ptr %i.ee, align 8, !tbaa !49
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.2, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ei = load double, ptr %i.eg, align 8, !tbaa !49
  store double %i.ei, ptr %i.eh, align 8, !tbaa !49
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 24 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eb, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.2, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = load double, ptr %i.ej, align 8, !tbaa !49
  store double %i.el, ptr %i.ek, align 8, !tbaa !49
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %.preheader.i.i.us.us.us.us.us.2
  %.lcssa152.2 = phi ptr [ %i.ed, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.eg, %bb.n ], [ %i.ej, %bb.o ], [ %i.em, %bb.p ]
  %.lcssa.2 = phi ptr [ %i.ee, %.preheader.i.i.us.us.us.us.us.2 ], [ %i.eh, %bb.n ], [ %i.ek, %bb.o ], [ %i.en, %bb.p ]
  %i.eo = getelementptr inbounds [8 x i8], ptr %.lcssa152.2, i64 %i.cn ; 6 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.2, i64 %i.bh ; 6 uses
  br i1 %exitcond80.not.i.i.us.us.us.us.us.2, label %bb.v, label %.preheader.i.i.us.us.us.us.us.3

.preheader.i.i.us.us.us.us.us.3:                  ; preds = %bb.q
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !49
  store double %i.eq, ptr %i.ep, align 8, !tbaa !49
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.3, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.preheader.i.i.us.us.us.us.us.3
  %i.et = load double, ptr %i.er, align 8, !tbaa !49
  store double %i.et, ptr %i.es, align 8, !tbaa !49
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.1.3, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !49
  store double %i.ew, ptr %i.ev, align 8, !tbaa !49
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 2 uses
  br i1 %exitcond.not.i.i.us.us.us.us.us.2.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = load double, ptr %i.ex, align 8, !tbaa !49
  store double %i.ez, ptr %i.ey, align 8, !tbaa !49
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %.preheader.i.i.us.us.us.us.us.3
  %.lcssa152.3 = phi ptr [ %i.er, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.eu, %bb.r ], [ %i.ex, %bb.s ], [ %i.fa, %bb.t ]
  %.lcssa.3 = phi ptr [ %i.es, %.preheader.i.i.us.us.us.us.us.3 ], [ %i.ev, %bb.r ], [ %i.ey, %bb.s ], [ %i.fb, %bb.t ]
  %i.fc = getelementptr inbounds [8 x i8], ptr %.lcssa152.3, i64 %i.cn
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.lcssa.3, i64 %i.bh
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q, %bb.m, %bb.i
  %.lcssa154 = phi ptr [ %i.dm, %bb.i ], [ %i.ea, %bb.m ], [ %i.eo, %bb.q ], [ %i.fc, %bb.u ]
  %.lcssa153 = phi ptr [ %i.dn, %bb.i ], [ %i.eb, %bb.m ], [ %i.ep, %bb.q ], [ %i.fd, %bb.u ]
  %i.fe = add nuw nsw i32 %.05071.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %.lcssa154, i64 %i.cq ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.lcssa153, i64 %i.ct ; 2 uses
  %exitcond81.not.i.i.us.us.us.us.us = icmp eq i32 %i.fe, %i.cl
  br i1 %exitcond81.not.i.i.us.us.us.us.us, label %bb.w, label %.preheader61.i.i.us.us.us.us.us

bb.w:                                             ; preds = %bb.v
  %i.fh = add nuw nsw i32 %.05174.i.i.us.us.us.us.us, 1 ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.cw
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.cz
  %exitcond82.not.i.i.us.us.us.us.us = icmp eq i32 %i.fh, %i.cm
  br i1 %exitcond82.not.i.i.us.us.us.us.us, label %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us, label %.preheader62.i.i.us.us.us.us.us

bb.x:                                             ; preds = %bb.d
  tail call void @_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLine3putEPKdllll(ptr noundef nonnull align 8 dereferenceable(2048) %i.ak, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q)
  br label %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us: ; preds = %._ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us
  %i.fk = phi ptr [ %.pre, %._ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us_crit_edge ], [ %.pre115, %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.i.us.us.us.us.us ] ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !178
  %i.fo = mul i64 %i.fn, %.354.us.us.us.us.us
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 96
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 104
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !302 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 56
  %i.fu = load i64, ptr %i.fp, align 8, !tbaa !304 ; 2 uses
  %2 = load i64, ptr %i.fq, align 8, !tbaa !303   ; 2 uses
  %i.fv = udiv i64 %.354.us.us.us.us.us, %i.fu    ; 2 uses
  %3 = urem i64 %.354.us.us.us.us.us, %i.fu
  %i.fw = urem i64 %i.fv, %2
  %i.fx = insertelement <2 x i64> poison, i64 %3, i64 0
  %i.fy = insertelement <2 x i64> %i.fx, i64 %i.fw, i64 1
  %i.fz = shl <2 x i64> %i.fy, splat (i64 2)
  %i.ga = udiv i64 %i.fv, %2                      ; 2 uses
  %i.gb = urem i64 %i.ga, %i.fs
  %i.gc = udiv i64 %i.ga, %i.fs
  %i.gd = load <2 x i64>, ptr %i.ft, align 8, !tbaa !40 ; 2 uses
  %i.ge = xor <2 x i64> %i.gd, %i.fz
  %i.gf = add <2 x i64> %i.ge, splat (i64 -4)
  %i.gg = lshr <2 x i64> %i.gf, splat (i64 62)
  %i.gh = sub <2 x i64> zeroinitializer, %i.gd
  %i.gi = and <2 x i64> %i.gg, %i.gh              ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.gk = insertelement <2 x i64> poison, i64 %i.gb, i64 0
  %i.gl = insertelement <2 x i64> %i.gk, i64 %i.gc, i64 1
  %i.gm = shl <2 x i64> %i.gl, splat (i64 2)
  %i.gn = load <2 x i64>, ptr %i.gj, align 8, !tbaa !40 ; 2 uses
  %i.go = xor <2 x i64> %i.gn, %i.gm
  %i.gp = add <2 x i64> %i.go, splat (i64 -4)
  %i.gq = lshr <2 x i64> %i.gp, splat (i64 62)
  %i.gr = sub <2 x i64> zeroinitializer, %i.gn
  %i.gs = and <2 x i64> %i.gq, %i.gr              ; 3 uses
  %i.gt = load ptr, ptr %i.fl, align 8, !tbaa !293 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !195
  tail call void @stream_wseek(ptr noundef %i.gv, i64 noundef %i.fo)
  %i.gw = or <2 x i64> %i.gi, %i.gs
  %i.gx = shufflevector <2 x i64> %i.gw, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.gy = or <2 x i64> %i.gx, %i.gi
  %foldExtExtBinop150 = or <2 x i64> %i.gy, %i.gs
  %i.gz = extractelement <2 x i64> %foldExtExtBinop150, i64 0
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us
  %i.hb = sub nuw nsw <2 x i64> splat (i64 4), %i.gi ; 2 uses
  %i.hc = sub nuw nsw <2 x i64> splat (i64 4), %i.gs ; 2 uses
  %i.hd = extractelement <2 x i64> %i.hb, i64 0
  %i.he = extractelement <2 x i64> %i.hb, i64 1
  %i.hf = extractelement <2 x i64> %i.hc, i64 0
  %i.hg = extractelement <2 x i64> %i.hc, i64 1
  %i.hh = tail call noundef i64 @zfp_encode_partial_block_strided_double_4(ptr noundef nonnull %i.gt, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef %i.hd, i64 noundef %i.he, i64 noundef %i.hf, i64 noundef %i.hg, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKdllll.exit.us.us.us.us.us

bb.z:                                             ; preds = %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEE6lookupEjb.exit.thread.i.us.us.us.us.us
  %i.hi = tail call noundef i64 @zfp_encode_block_strided_double_4(ptr noundef nonnull %i.gt, ptr noundef nonnull %.34052.us.us.us.us.us, i64 noundef 1, i64 noundef %i.k, i64 noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKdllll.exit.us.us.us.us.us

_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKdllll.exit.us.us.us.us.us: ; preds = %bb.z, %bb.y
  %i.hj = load ptr, ptr %i.gu, align 8, !tbaa !195
  %i.hk = tail call i64 @stream_flush(ptr noundef %i.hj) ; 0 uses
  br label %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us

_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us: ; preds = %bb.w, %_ZN3zfp8internal11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEE6encodeEmPKdllll.exit.us.us.us.us.us, %bb.x
  %i.hl = add nuw i64 %.055.us.us.us.us.us, 1     ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.34052.us.us.us.us.us, i64 32 ; 2 uses
  %exitcond.not = icmp eq i64 %i.hl, %i.c
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us, label %bb.c

._crit_edge.us.us.us.us.us:                       ; preds = %_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll.exit.us.us.us.us.us
  %i.hn = add nuw i64 %.03359.us.us.us.us.us, 1   ; 2 uses
  %i.ho = load i64, ptr %i.j, align 8, !tbaa !126
  %i.hp = sub i64 %i.ho, %i.c
  %.idx.us.us.us.us.us = shl nsw i64 %i.hp, 5
  %i.hq = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.us.us.us.us.us ; 2 uses
  %exitcond110.not = icmp eq i64 %i.hn, %i.e
  br i1 %exitcond110.not, label %._crit_edge60.split.us.us.us.us.us, label %.preheader.us.us.us.us.us

._crit_edge60.split.us.us.us.us.us:               ; preds = %._crit_edge.us.us.us.us.us
  %i.hr = add nuw i64 %.03466.us.us.us.us, 1      ; 2 uses
  %i.hs = load i64, ptr %i.l, align 8, !tbaa !138
  %i.ht = sub i64 %i.hs, %i.e
  %i.hu = mul nsw i64 %i.v, %i.ht
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.hq, i64 %i.hu ; 2 uses
  %exitcond111.not = icmp eq i64 %i.hr, %i.g
  br i1 %exitcond111.not, label %._crit_edge.split.us.split.us.us.us, label %.preheader45.us.us.us.us

._crit_edge.split.us.split.us.us.us:              ; preds = %._crit_edge60.split.us.us.us.us.us
  %i.hw = add nuw i64 %.03581.us.us, 1            ; 2 uses
  %i.hx = load i64, ptr %i.o, align 8, !tbaa !158
  %i.hy = sub i64 %i.hx, %i.g
  %i.hz = mul nsw i64 %i.w, %i.hy
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hv, i64 %i.hz
  %exitcond112.not = icmp eq i64 %i.hw, %i.i
  br i1 %exitcond112.not, label %.loopexit, label %.preheader46.us.us

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %i.ib = mul i64 %i.e, %i.c
  %i.ic = mul i64 %i.ib, %i.g
  %i.id = mul i64 %i.ic, %i.i                     ; 2 uses
  %.not95 = icmp eq i64 %i.id, 0
  br i1 %.not95, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 168
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.ab
  %.490 = phi i64 [ 0, %.lr.ph ], [ %i.if, %bb.ab ] ; 2 uses
  %i.if = add nuw i64 %.490, 1                    ; 2 uses
  call void @_ZNK3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9put_blockEmPKdllll(ptr noundef nonnull align 8 dereferenceable(32) %i.ie, i64 noundef %.490, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, i64 noundef 16, i64 noundef 64)
  %exitcond114.not = icmp eq i64 %i.if, %i.id
  br i1 %exitcond114.not, label %._crit_edge, label %bb.ab

._crit_edge:                                      ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.split.us.split.us.us.us, %.preheader46.lr.ph, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #24
  br label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i

_ZN3zfp8internal18deallocate_alignedEPv.exit.i:   ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.d, null
  br i1 %.not.i1.i, label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  tail call void @free(ptr noundef nonnull %i.d) #24
  br label %_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEED2Ev.exit

_ZN3zfp8internal5CacheINS0_11BlockCache4IdNS0_11BlockStore4IdNS_5codec4zfp4IdEENS_5index8implicitEEEE9CacheLineEED2Ev.exit: ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i, %bb.c
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !309  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE4freeEv.exit, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i

_ZN3zfp8internal18deallocate_alignedEPv.exit.i:   ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !293
  %i.e = invoke ptr @zfp_stream_bit_stream(ptr noundef %i.d)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  invoke void @stream_close(ptr noundef %i.e)
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %.noexc
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !293
  invoke void @zfp_stream_set_bit_stream(ptr noundef %i.f, ptr noundef null)
          to label %_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE4freeEv.exit unwind label %bb.b

_ZN3zfp8internal10BlockStoreINS_5codec4zfp4IdEENS_5index8implicitEE4freeEv.exit: ; preds = %bb.a, %.noexc4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !293
  %i.i = tail call ptr @zfp_stream_bit_stream(ptr noundef %i.h)
  tail call void @stream_close(ptr noundef %i.i)
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !293
  tail call void @zfp_stream_set_bit_stream(ptr noundef %i.j, ptr noundef null)
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !293
  tail call void @zfp_stream_close(ptr noundef %i.k)
  ret void

bb.b:                                             ; preds = %.noexc4, %.noexc, %_ZN3zfp8internal18deallocate_alignedEPv.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN3zfp5codec8zfp_baseILj4EdED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #27
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEED0Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3zfp6array4IdNS_5codec4zfp4IdEENS_5index8implicitEEE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN3zfp8internal18deallocate_alignedEPv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
