Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dwt?download=true
inline.NumInlined: 158
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 79
begin_hunk_0_@opj_v8dwt_interleave_h:bb.a

.lr.ph.us.us.1.prol.loopexit:                     ; preds = %.lr.ph.us.us.1.prol, %.lr.ph.us.us.preheader.1
  %indvars.iv171.1.unr = phi i64 [ %i.bi, %.lr.ph.us.us.preheader.1 ], [ %indvars.iv.next172.1.prol, %.lr.ph.us.us.1.prol ]
  %i.bp = sub nsw i64 %i.bi, %wide.trip.count174.1
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.split138.us, label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %.lr.ph.us.us.1.prol.loopexit, %.lr.ph.us.us.1
  %indvars.iv171.1 = phi i64 [ %indvars.iv.next172.1.3, %.lr.ph.us.us.1 ], [ %indvars.iv171.1.unr, %.lr.ph.us.us.1.prol.loopexit ] ; 6 uses
  %i.br = shl i64 %indvars.iv171.1, 4
  %i.bs = and i64 %i.br, 4294967280
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv171.1
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !76
  store float %i.bv, ptr %i.bt, align 4, !tbaa !76
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171.1, 1 ; 2 uses
  %i.bw = shl i64 %indvars.iv.next172.1, 4
  %i.bx = and i64 %i.bw, 4294967280
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next172.1
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !76
  store float %i.ca, ptr %i.by, align 4, !tbaa !76
  %indvars.iv.next172.1.1 = add nuw nsw i64 %indvars.iv171.1, 2 ; 2 uses
  %i.cb = shl i64 %indvars.iv.next172.1.1, 4
  %i.cc = and i64 %i.cb, 4294967280
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next172.1.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !76
  store float %i.cf, ptr %i.cd, align 4, !tbaa !76
  %indvars.iv.next172.1.2 = add nuw nsw i64 %indvars.iv171.1, 3 ; 2 uses
  %i.cg = shl i64 %indvars.iv.next172.1.2, 4
  %i.ch = and i64 %i.cg, 4294967280
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next172.1.2
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !76
  store float %i.ck, ptr %i.ci, align 4, !tbaa !76
  %indvars.iv.next172.1.3 = add nuw nsw i64 %indvars.iv171.1, 4 ; 2 uses
  %exitcond175.1.not.3 = icmp eq i64 %indvars.iv.next172.1.3, %wide.trip.count174.1
  br i1 %exitcond175.1.not.3, label %.split138.us, label %.lr.ph.us.us.1, !llvm.loop !409

.preheader122.us147.us.preheader:                 ; preds = %bb.a
  %i.cl = icmp ult i32 %.0113, %.0112128
  br i1 %i.cl, label %.lr.ph.us148.us.preheader, label %.loopexit123.us149.us

.lr.ph.us148.us.preheader:                        ; preds = %.preheader122.us147.us.preheader
  %i.cm = zext i32 %.0113 to i64                  ; 6 uses
  %wide.trip.count = zext i32 %.0112128 to i64    ; 3 uses
  %i.cn = sub nsw i64 %wide.trip.count, %i.cm
  %xtraiter = and i64 %i.cn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us148.us.prol.loopexit, label %.lr.ph.us148.us.prol

.lr.ph.us148.us.prol:                             ; preds = %.lr.ph.us148.us.preheader
  %i.co = shl nuw nsw i64 %i.cm, 4
  %i.cp = and i64 %i.co, 4294967280
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cm
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !76
  store float %i.cs, ptr %i.cq, align 4, !tbaa !76
  %i.ct = add i32 %2, %.0113
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store float %i.cw, ptr %i.cx, align 4, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %i.cm, 1
  br label %.lr.ph.us148.us.prol.loopexit

.lr.ph.us148.us.prol.loopexit:                    ; preds = %.lr.ph.us148.us.prol, %.lr.ph.us148.us.preheader
  %indvars.iv.unr = phi i64 [ %i.cm, %.lr.ph.us148.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.us148.us.prol ]
  %i.cy = add nsw i64 %wide.trip.count, -1
  %i.cz = icmp eq i64 %i.cy, %i.cm
  br i1 %i.cz, label %.loopexit123.us149.us, label %.lr.ph.us148.us

.lr.ph.us148.us:                                  ; preds = %.lr.ph.us148.us.prol.loopexit, %.lr.ph.us148.us
  %indvars.iv = phi i64 [ %indvars.iv.next.1201, %.lr.ph.us148.us ], [ %indvars.iv.unr, %.lr.ph.us148.us.prol.loopexit ] ; 5 uses
  %i.da = trunc nuw i64 %indvars.iv to i32
  %i.db = shl i64 %indvars.iv, 4
  %i.dc = and i64 %i.db, 4294967280
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.df = load float, ptr %i.de, align 4, !tbaa !76
  store float %i.df, ptr %i.dd, align 4, !tbaa !76
  %i.dg = add i32 %2, %i.da
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store float %i.dj, ptr %i.dk, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dl = trunc nuw i64 %indvars.iv.next to i32
  %i.dm = shl i64 %indvars.iv.next, 4
  %i.dn = and i64 %i.dm, 4294967280
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !76
  store float %i.dq, ptr %i.do, align 4, !tbaa !76
  %i.dr = add i32 %2, %i.dl
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ds
  %i.du = load float, ptr %i.dt, align 4, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store float %i.du, ptr %i.dv, align 4, !tbaa !76
  %indvars.iv.next.1201 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1201, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit123.us149.us, label %.lr.ph.us148.us, !llvm.loop !409

.loopexit123.us149.us:                            ; preds = %.lr.ph.us148.us.prol.loopexit, %.lr.ph.us148.us, %.preheader122.us147.us.preheader
  %i.dw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.n ; 6 uses
  %.0113.us144.us.1 = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.dx = icmp ult i32 %.0113.us144.us.1, %.0112
  br i1 %i.dx, label %.lr.ph.us148.us.preheader.1, label %.split138.us

.lr.ph.us148.us.preheader.1:                      ; preds = %.loopexit123.us149.us
  %i.dy = zext i32 %.0113.us144.us.1 to i64       ; 6 uses
  %wide.trip.count.1 = zext i32 %.0112 to i64     ; 3 uses
  %i.dz = sub nsw i64 %wide.trip.count.1, %i.dy
  %xtraiter203 = and i64 %i.dz, 1
  %lcmp.mod204.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod204.not, label %.lr.ph.us148.us.1.prol.loopexit, label %.lr.ph.us148.us.1.prol

.lr.ph.us148.us.1.prol:                           ; preds = %.lr.ph.us148.us.preheader.1
  %i.ea = shl nuw nsw i64 %i.dy, 4
  %i.eb = and i64 %i.ea, 4294967280
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.dy
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !76
  store float %i.ee, ptr %i.ec, align 4, !tbaa !76
  %i.ef = add i32 %2, %.0113.us144.us.1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.eg
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !76
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store float %i.ei, ptr %i.ej, align 4, !tbaa !76
  %indvars.iv.next.1.prol = add nuw nsw i64 %i.dy, 1
  br label %.lr.ph.us148.us.1.prol.loopexit

.lr.ph.us148.us.1.prol.loopexit:                  ; preds = %.lr.ph.us148.us.1.prol, %.lr.ph.us148.us.preheader.1
  %indvars.iv.1.unr = phi i64 [ %i.dy, %.lr.ph.us148.us.preheader.1 ], [ %indvars.iv.next.1.prol, %.lr.ph.us148.us.1.prol ]
  %i.ek = add nsw i64 %wide.trip.count.1, -1
  %i.el = icmp eq i64 %i.ek, %i.dy
  br i1 %i.el, label %.split138.us, label %.lr.ph.us148.us.1

.lr.ph.us148.us.1:                                ; preds = %.lr.ph.us148.us.1.prol.loopexit, %.lr.ph.us148.us.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %.lr.ph.us148.us.1 ], [ %indvars.iv.1.unr, %.lr.ph.us148.us.1.prol.loopexit ] ; 5 uses
  %i.em = trunc nuw i64 %indvars.iv.1 to i32
  %i.en = shl i64 %indvars.iv.1, 4
  %i.eo = and i64 %i.en, 4294967280
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.eo ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.1
  %i.er = load float, ptr %i.eq, align 4, !tbaa !76
  store float %i.er, ptr %i.ep, align 4, !tbaa !76
  %i.es = add i32 %2, %i.em
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !76
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store float %i.ev, ptr %i.ew, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 3 uses
  %i.ex = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.ey = shl i64 %indvars.iv.next.1, 4
  %i.ez = and i64 %i.ey, 4294967280
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next.1
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !76
  store float %i.fc, ptr %i.fa, align 4, !tbaa !76
  %i.fd = add i32 %2, %i.ex
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store float %i.fg, ptr %i.fh, align 4, !tbaa !76
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %exitcond.1.not.1 = icmp eq i64 %indvars.iv.next.1.1, %wide.trip.count.1
  br i1 %exitcond.1.not.1, label %.split138.us, label %.lr.ph.us148.us.1, !llvm.loop !409

.preheader122:                                    ; preds = %.split.split.preheader
  br i1 %i.ac, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader122
  %i.fi = zext i32 %.0113 to i64
  %wide.trip.count179 = zext i32 %.0112128 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %.split.split.preheader
  br i1 %i.ac, label %.lr.ph127.preheader, label %.loopexit

.lr.ph127.preheader:                              ; preds = %.preheader
  %i.fj = zext i32 %.0113 to i64
  %wide.trip.count184 = zext i32 %.0112128 to i64
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %indvars.iv181 = phi i64 [ %i.fj, %.lr.ph127.preheader ], [ %indvars.iv.next182, %.lr.ph127 ] ; 4 uses
  %i.fk = trunc nuw i64 %indvars.iv181 to i32
  %i.fl = shl i64 %indvars.iv181, 4
  %i.fm = and i64 %i.fl, 4294967280
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.fm ; 8 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv181
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !76
  store float %i.fp, ptr %i.fn, align 16, !tbaa !76
  %i.fq = add i32 %2, %i.fk                       ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !76
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store float %i.ft, ptr %i.fu, align 4, !tbaa !76
  %i.fv = add i32 %i.fq, %2                       ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fw
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !76
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store float %i.fy, ptr %i.fz, align 8, !tbaa !76
  %i.ga = add i32 %i.fv, %2                       ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gb
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !76
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  store float %i.gd, ptr %i.ge, align 4, !tbaa !76
  %i.gf = add i32 %i.ga, %2                       ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gg
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !76
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store float %i.gi, ptr %i.gj, align 16, !tbaa !76
  %i.gk = add i32 %i.gf, %2                       ; 2 uses
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !76
  %i.go = getelementptr inbounds nuw i8, ptr %i.fn, i64 20
  store float %i.gn, ptr %i.go, align 4, !tbaa !76
  %i.gp = add i32 %i.gk, %2                       ; 2 uses
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gq
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !76
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store float %i.gs, ptr %i.gt, align 8, !tbaa !76
  %i.gu = add i32 %i.gp, %2
  %i.gv = zext i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !76
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  store float %i.gx, ptr %i.gy, align 4, !tbaa !76
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %.loopexit, label %.lr.ph127, !llvm.loop !411

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv176 = phi i64 [ %i.fi, %.lr.ph.preheader ], [ %indvars.iv.next177, %bb.g ] ; 4 uses
  %i.gz = trunc nuw i64 %indvars.iv176 to i32
  %i.ha = shl i64 %indvars.iv176, 4
  %i.hb = and i64 %i.ha, 4294967280
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.hb ; 8 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv176
  %i.he = load float, ptr %i.hd, align 4, !tbaa !76
  store float %i.he, ptr %i.hc, align 4, !tbaa !76
  %i.hf = add i32 %2, %i.gz                       ; 2 uses
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !76
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.hi, ptr %i.hj, align 4, !tbaa !76
  %i.hk = add i32 %i.hf, %2                       ; 2 uses
  %i.hl = zext i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !76
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store float %i.hn, ptr %i.ho, align 4, !tbaa !76
  br i1 %i.q, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.hp = add i32 %i.hk, %2                       ; 2 uses
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !76
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hc, i64 12
  store float %i.hs, ptr %i.ht, align 4, !tbaa !76
  br i1 %i.r, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.hu = add i32 %i.hp, %2                       ; 2 uses
  %i.hv = zext i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !76
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store float %i.hx, ptr %i.hy, align 4, !tbaa !76
  br i1 %i.s, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.hz = add i32 %i.hu, %2                       ; 2 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ia
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !76
  %i.id = getelementptr inbounds nuw i8, ptr %i.hc, i64 20
  store float %i.ic, ptr %i.id, align 4, !tbaa !76
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ie = add i32 %i.hz, %2                       ; 2 uses
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !76
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  store float %i.ih, ptr %i.ii, align 4, !tbaa !76
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ij = add i32 %i.ie, %2
  %i.ik = zext i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !76
  %i.in = getelementptr inbounds nuw i8, ptr %i.hc, i64 28
  store float %i.im, ptr %i.in, align 4, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph, %bb.f
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.loopexit, label %.lr.ph, !llvm.loop !409

.loopexit:                                        ; preds = %bb.g, %.lr.ph127, %.preheader122, %.preheader
  %i.io = getelementptr inbounds [4 x i8], ptr %1, i64 %i.n ; 17 uses
  %.0113.1 = load i32, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %i.ip = ptrtoint ptr %i.io to i64
  %i.iq = and i64 %i.ip, 15
  %i.ir = icmp eq i64 %i.iq, 0
  %or.cond.1 = select i1 %i.h, i1 %i.ir, i1 false
  %i.is = ptrtoint ptr %i.k to i64
  %i.it = and i64 %i.is, 15
  %i.iu = icmp eq i64 %i.it, 0
  %or.cond121.1 = select i1 %or.cond.1, i1 %i.iu, i1 false
  %i.iv = icmp ult i32 %.0113.1, %.0112           ; 2 uses
  br i1 %or.cond121.1, label %.preheader.1, label %.preheader122.1

.preheader122.1:                                  ; preds = %.loopexit
  br i1 %i.iv, label %.lr.ph.preheader.1, label %.split138.us

.lr.ph.preheader.1:                               ; preds = %.preheader122.1
  %i.iw = zext i32 %.0113.1 to i64
  %wide.trip.count179.1 = zext i32 %.0112 to i64
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.m, %.lr.ph.preheader.1
  %indvars.iv176.1 = phi i64 [ %i.iw, %.lr.ph.preheader.1 ], [ %indvars.iv.next177.1, %bb.m ] ; 4 uses
  %i.ix = trunc nuw i64 %indvars.iv176.1 to i32
  %i.iy = shl i64 %indvars.iv176.1, 4
  %i.iz = and i64 %i.iy, 4294967280
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.iz ; 8 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv176.1
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !76
  store float %i.jc, ptr %i.ja, align 4, !tbaa !76
  %i.jd = add i32 %2, %i.ix                       ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.je
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !76
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store float %i.jg, ptr %i.jh, align 4, !tbaa !76
  %i.ji = add i32 %i.jd, %2                       ; 2 uses
  %i.jj = zext i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jj
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !76
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store float %i.jl, ptr %i.jm, align 4, !tbaa !76
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %.lr.ph.1
  %i.jn = add i32 %i.ji, %2                       ; 2 uses
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jo
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !76
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ja, i64 12
  store float %i.jq, ptr %i.jr, align 4, !tbaa !76
  br i1 %i.r, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.js = add i32 %i.jn, %2                       ; 2 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !76
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store float %i.jv, ptr %i.jw, align 4, !tbaa !76
  br i1 %i.s, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.jx = add i32 %i.js, %2                       ; 2 uses
  %i.jy = zext i32 %i.jx to i64
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !76
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ja, i64 20
  store float %i.ka, ptr %i.kb, align 4, !tbaa !76
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.kc = add i32 %i.jx, %2                       ; 2 uses
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !76
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store float %i.kf, ptr %i.kg, align 4, !tbaa !76
  br i1 %i.u, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kh = add i32 %i.kc, %2
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ki
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !76
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  store float %i.kk, ptr %i.kl, align 4, !tbaa !76
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %.lr.ph.1
  %indvars.iv.next177.1 = add nuw nsw i64 %indvars.iv176.1, 1 ; 2 uses
  %exitcond180.1.not = icmp eq i64 %indvars.iv.next177.1, %wide.trip.count179.1
  br i1 %exitcond180.1.not, label %.split138.us, label %.lr.ph.1, !llvm.loop !409

.preheader.1:                                     ; preds = %.loopexit
  br i1 %i.iv, label %.lr.ph127.preheader.1, label %.split138.us

.lr.ph127.preheader.1:                            ; preds = %.preheader.1
  %i.km = zext i32 %.0113.1 to i64
  %wide.trip.count184.1 = zext i32 %.0112 to i64
  br label %.lr.ph127.1

.lr.ph127.1:                                      ; preds = %.lr.ph127.1, %.lr.ph127.preheader.1
  %indvars.iv181.1 = phi i64 [ %i.km, %.lr.ph127.preheader.1 ], [ %indvars.iv.next182.1, %.lr.ph127.1 ] ; 4 uses
  %i.kn = trunc nuw i64 %indvars.iv181.1 to i32
  %i.ko = shl i64 %indvars.iv181.1, 4
  %i.kp = and i64 %i.ko, 4294967280
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.kp ; 8 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv181.1
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !76
  store float %i.ks, ptr %i.kq, align 16, !tbaa !76
  %i.kt = add i32 %2, %i.kn                       ; 2 uses
  %i.ku = zext i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ku
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !76
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kq, i64 4
  store float %i.kw, ptr %i.kx, align 4, !tbaa !76
  %i.ky = add i32 %i.kt, %2                       ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.kz
  %i.lb = load float, ptr %i.la, align 4, !tbaa !76
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  store float %i.lb, ptr %i.lc, align 8, !tbaa !76
  %i.ld = add i32 %i.ky, %2                       ; 2 uses
  %i.le = zext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.le
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !76
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kq, i64 12
  store float %i.lg, ptr %i.lh, align 4, !tbaa !76
  %i.li = add i32 %i.ld, %2                       ; 2 uses
  %i.lj = zext i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lj
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !76
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  store float %i.ll, ptr %i.lm, align 16, !tbaa !76
  %i.ln = add i32 %i.li, %2                       ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !76
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kq, i64 20
  store float %i.lq, ptr %i.lr, align 4, !tbaa !76
  %i.ls = add i32 %i.ln, %2                       ; 2 uses
  %i.lt = zext i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.lt
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !76
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  store float %i.lv, ptr %i.lw, align 8, !tbaa !76
  %i.lx = add i32 %i.ls, %2
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.ly
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !76
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kq, i64 28
  store float %i.ma, ptr %i.mb, align 4, !tbaa !76
  %indvars.iv.next182.1 = add nuw nsw i64 %indvars.iv181.1, 1 ; 2 uses
  %exitcond185.1.not = icmp eq i64 %indvars.iv.next182.1, %wide.trip.count184.1
  br i1 %exitcond185.1.not, label %.split138.us, label %.lr.ph127.1, !llvm.loop !411

.split138.us:                                     ; preds = %.lr.ph.us148.us.1.prol.loopexit, %.lr.ph.us148.us.1, %.lr.ph.us.us.1.prol.loopexit, %.lr.ph.us.us.1, %bb.m, %.lr.ph127.1, %.preheader122.1, %.preheader.1, %.loopexit123.us149.us, %.loopexit123.us.us
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_v8dwt_decode(ptr noalias nofree noundef readonly captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !79
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %bb.f, label %opj_v8dwt_decode_step2_sse.exit86

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !79
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !80
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %bb.f, label %opj_v8dwt_decode_step2_sse.exit86

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.c
  %.048 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !78     ; 2 uses
  %i.q = zext nneg i32 %.048 to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.q ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !82   ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !83   ; 6 uses
  %i.w = icmp ult i32 %i.t, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i, label %opj_v8dwt_decode_step1_sse.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.x = shl i32 %i.t, 2
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.y ; 5 uses
  %i.aa = sub nuw i32 %i.v, %i.t
  %.neg = add i32 %i.t, 1
  %xtraiter = and i32 %i.aa, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ab = load <4 x float>, ptr %i.z, align 16, !tbaa !47
  %i.ac = fmul <4 x float> %i.ab, splat (float f0x3F9D7658)
  store <4 x float> %i.ac, ptr %i.z, align 16, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ae = load <4 x float>, ptr %i.ad, align 16, !tbaa !47
  %i.af = fmul <4 x float> %i.ae, splat (float f0x3F9D7658)
  store <4 x float> %i.af, ptr %i.ad, align 16, !tbaa !47
  %i.ag = add nuw i32 %i.t, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %.015.i.unr = phi i32 [ %i.t, %.lr.ph.preheader.i ], [ %i.ag, %.lr.ph.i.prol ]
  %.01314.i.unr = phi ptr [ %i.z, %.lr.ph.preheader.i ], [ %i.ah, %.lr.ph.i.prol ]
  %i.ai = icmp eq i32 %i.v, %.neg
  br i1 %i.ai, label %opj_v8dwt_decode_step1_sse.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.015.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.015.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01314.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.01314.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.aj = load <4 x float>, ptr %.01314.i, align 16, !tbaa !47
  %i.ak = fmul <4 x float> %i.aj, splat (float f0x3F9D7658)
  store <4 x float> %i.ak, ptr %.01314.i, align 16, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %.01314.i, i64 16 ; 2 uses
  %i.am = load <4 x float>, ptr %i.al, align 16, !tbaa !47
  %i.an = fmul <4 x float> %i.am, splat (float f0x3F9D7658)
  store <4 x float> %i.an, ptr %i.al, align 16, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %.01314.i, i64 64 ; 2 uses
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !47
  %i.aq = fmul <4 x float> %i.ap, splat (float f0x3F9D7658)
  store <4 x float> %i.aq, ptr %i.ao, align 16, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %.01314.i, i64 80 ; 2 uses
  %i.as = load <4 x float>, ptr %i.ar, align 16, !tbaa !47
  %i.at = fmul <4 x float> %i.as, splat (float f0x3F9D7658)
  store <4 x float> %i.at, ptr %i.ar, align 16, !tbaa !47
  %i.au = add nuw i32 %.015.i, 2                  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01314.i, i64 128
  %exitcond.not.i.1 = icmp eq i32 %i.au, %i.v
  br i1 %exitcond.not.i.1, label %opj_v8dwt_decode_step1_sse.exit, label %.lr.ph.i, !llvm.loop !412

opj_v8dwt_decode_step1_sse.exit:                  ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.f
  %i.aw = zext nneg i32 %.0 to i64
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.aw ; 16 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !84 ; 11 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !85 ; 6 uses
  %i.bc = icmp ult i32 %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph.preheader.i49, label %opj_v8dwt_decode_step1_sse.exit54

.lr.ph.preheader.i49:                             ; preds = %opj_v8dwt_decode_step1_sse.exit
  %i.bd = shl i32 %i.az, 2
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.be ; 5 uses
  %i.bg = sub nuw i32 %i.bb, %i.az
  %.neg114 = add i32 %i.az, 1
  %xtraiter112 = and i32 %i.bg, 1
  %lcmp.mod113.not = icmp eq i32 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph.i50.prol.loopexit, label %.lr.ph.i50.prol

.lr.ph.i50.prol:                                  ; preds = %.lr.ph.preheader.i49
  %i.bh = load <4 x float>, ptr %i.bf, align 16, !tbaa !47
  %i.bi = fmul <4 x float> %i.bh, splat (float f0x3FD01800)
  store <4 x float> %i.bi, ptr %i.bf, align 16, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !tbaa !47
  %i.bl = fmul <4 x float> %i.bk, splat (float f0x3FD01800)
  store <4 x float> %i.bl, ptr %i.bj, align 16, !tbaa !47
  %i.bm = add nuw i32 %i.az, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  br label %.lr.ph.i50.prol.loopexit

.lr.ph.i50.prol.loopexit:                         ; preds = %.lr.ph.i50.prol, %.lr.ph.preheader.i49
  %.015.i51.unr = phi i32 [ %i.az, %.lr.ph.preheader.i49 ], [ %i.bm, %.lr.ph.i50.prol ]
  %.01314.i52.unr = phi ptr [ %i.bf, %.lr.ph.preheader.i49 ], [ %i.bn, %.lr.ph.i50.prol ]
  %i.bo = icmp eq i32 %i.bb, %.neg114
  br i1 %i.bo, label %opj_v8dwt_decode_step1_sse.exit54, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50
  %.015.i51 = phi i32 [ %i.ca, %.lr.ph.i50 ], [ %.015.i51.unr, %.lr.ph.i50.prol.loopexit ]
  %.01314.i52 = phi ptr [ %i.cb, %.lr.ph.i50 ], [ %.01314.i52.unr, %.lr.ph.i50.prol.loopexit ] ; 6 uses
  %i.bp = load <4 x float>, ptr %.01314.i52, align 16, !tbaa !47
  %i.bq = fmul <4 x float> %i.bp, splat (float f0x3FD01800)
  store <4 x float> %i.bq, ptr %.01314.i52, align 16, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.01314.i52, i64 16 ; 2 uses
  %i.bs = load <4 x float>, ptr %i.br, align 16, !tbaa !47
  %i.bt = fmul <4 x float> %i.bs, splat (float f0x3FD01800)
  store <4 x float> %i.bt, ptr %i.br, align 16, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.01314.i52, i64 64 ; 2 uses
  %i.bv = load <4 x float>, ptr %i.bu, align 16, !tbaa !47
  %i.bw = fmul <4 x float> %i.bv, splat (float f0x3FD01800)
  store <4 x float> %i.bw, ptr %i.bu, align 16, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.01314.i52, i64 80 ; 2 uses
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !47
  %i.bz = fmul <4 x float> %i.by, splat (float f0x3FD01800)
  store <4 x float> %i.bz, ptr %i.bx, align 16, !tbaa !47
  %i.ca = add nuw i32 %.015.i51, 2                ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01314.i52, i64 128
  %exitcond.not.i53.1 = icmp eq i32 %i.ca, %i.bb
  br i1 %exitcond.not.i53.1, label %opj_v8dwt_decode_step1_sse.exit54, label %.lr.ph.i50, !llvm.loop !412

opj_v8dwt_decode_step1_sse.exit54:                ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50, %opj_v8dwt_decode_step1_sse.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !79 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !80 ; 2 uses
  %i.ch = sub nsw i32 %i.cg, %.048
  %i.ci = tail call noundef i32 @llvm.smin.i32(i32 %i.ce, i32 %i.ch) ; 2 uses
  %i.cj = tail call noundef i32 @llvm.umin.i32(i32 %i.v, i32 %i.ci) ; 6 uses
  %i.ck = icmp eq i32 %i.t, 0                     ; 2 uses
  br i1 %i.ck, label %bb.g, label %bb.i

bb.g:                                             ; preds = %opj_v8dwt_decode_step1_sse.exit54
  %.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cl = load <4 x float>, ptr %i.r, align 16, !tbaa !47
  %i.cm = load <4 x float>, ptr %i.ax, align 16, !tbaa !47
  %i.cn = load <4 x float>, ptr %i.cc, align 16, !tbaa !47
  %i.co = fadd <4 x float> %i.cm, %i.cn
  %i.cp = fmul <4 x float> %i.co, splat (float f0x3EE31355)
  %i.cq = fsub <4 x float> %i.cl, %i.cp
  store <4 x float> %i.cq, ptr %i.r, align 16, !tbaa !47
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.cs = load <4 x float>, ptr %i.cr, align 16, !tbaa !47
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.cu = load <4 x float>, ptr %i.ct, align 16, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 48
end_hunk_0
