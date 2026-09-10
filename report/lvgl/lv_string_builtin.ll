Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_string_builtin?download=true
inline.NumInlined: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@lv_memcpy:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.1238, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  store volatile i8 %i.at, ptr %i.ar, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %.1210237, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %.1238, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10
  store volatile i8 %i.aw, ptr %i.au, align 1, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.1210237, i64 5
  %i.ay = getelementptr inbounds nuw i8, ptr %.1238, i64 5
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10
  store volatile i8 %i.az, ptr %i.ax, align 1, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %.1210237, i64 6
  %i.bb = getelementptr inbounds nuw i8, ptr %.1238, i64 6
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !10
  store volatile i8 %i.bc, ptr %i.ba, align 1, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.1210237, i64 7
  %i.be = getelementptr inbounds nuw i8, ptr %.1238, i64 7
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10
  store volatile i8 %i.bf, ptr %i.bd, align 1, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %.1210237, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.1238, i64 8
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !10
  store volatile i8 %i.bi, ptr %i.bg, align 1, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.1210237, i64 9
  %i.bk = getelementptr inbounds nuw i8, ptr %.1238, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !10
  store volatile i8 %i.bl, ptr %i.bj, align 1, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.1210237, i64 10
  %i.bn = getelementptr inbounds nuw i8, ptr %.1238, i64 10
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  store volatile i8 %i.bo, ptr %i.bm, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.1210237, i64 11
  %i.bq = getelementptr inbounds nuw i8, ptr %.1238, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  store volatile i8 %i.br, ptr %i.bp, align 1, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.1210237, i64 12
  %i.bt = getelementptr inbounds nuw i8, ptr %.1238, i64 12
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  store volatile i8 %i.bu, ptr %i.bs, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.1210237, i64 13
  %i.bw = getelementptr inbounds nuw i8, ptr %.1238, i64 13
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !10
  store volatile i8 %i.bx, ptr %i.bv, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.1210237, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %.1238, i64 14
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !10
  store volatile i8 %i.ca, ptr %i.by, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %.1210237, i64 15
  %i.cc = getelementptr inbounds nuw i8, ptr %.1238, i64 15
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  store volatile i8 %i.cd, ptr %i.cb, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.1210237, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %.1238, i64 16
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !10
  store volatile i8 %i.cg, ptr %i.ce, align 1, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.1210237, i64 17
  %i.ci = getelementptr inbounds nuw i8, ptr %.1238, i64 17
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !10
  store volatile i8 %i.cj, ptr %i.ch, align 1, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.1210237, i64 18
  %i.cl = getelementptr inbounds nuw i8, ptr %.1238, i64 18
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  store volatile i8 %i.cm, ptr %i.ck, align 1, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %.1210237, i64 19
  %i.co = getelementptr inbounds nuw i8, ptr %.1238, i64 19
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  store volatile i8 %i.cp, ptr %i.cn, align 1, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.1210237, i64 20
  %i.cr = getelementptr inbounds nuw i8, ptr %.1238, i64 20
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  store volatile i8 %i.cs, ptr %i.cq, align 1, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %.1210237, i64 21
  %i.cu = getelementptr inbounds nuw i8, ptr %.1238, i64 21
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !10
  store volatile i8 %i.cv, ptr %i.ct, align 1, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %.1210237, i64 22
  %i.cx = getelementptr inbounds nuw i8, ptr %.1238, i64 22
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !10
  store volatile i8 %i.cy, ptr %i.cw, align 1, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %.1210237, i64 23
  %i.da = getelementptr inbounds nuw i8, ptr %.1238, i64 23
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  store volatile i8 %i.db, ptr %i.cz, align 1, !tbaa !10
  %i.dc = getelementptr inbounds nuw i8, ptr %.1210237, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %.1238, i64 24
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  store volatile i8 %i.de, ptr %i.dc, align 1, !tbaa !10
  %i.df = getelementptr inbounds nuw i8, ptr %.1210237, i64 25
  %i.dg = getelementptr inbounds nuw i8, ptr %.1238, i64 25
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  store volatile i8 %i.dh, ptr %i.df, align 1, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %.1210237, i64 26
  %i.dj = getelementptr inbounds nuw i8, ptr %.1238, i64 26
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  store volatile i8 %i.dk, ptr %i.di, align 1, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %.1210237, i64 27
  %i.dm = getelementptr inbounds nuw i8, ptr %.1238, i64 27
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  store volatile i8 %i.dn, ptr %i.dl, align 1, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %.1210237, i64 28
  %i.dp = getelementptr inbounds nuw i8, ptr %.1238, i64 28
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !10
  store volatile i8 %i.dq, ptr %i.do, align 1, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %.1210237, i64 29
  %i.ds = getelementptr inbounds nuw i8, ptr %.1238, i64 29
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !10
  store volatile i8 %i.dt, ptr %i.dr, align 1, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %.1210237, i64 30
  %i.dv = getelementptr inbounds nuw i8, ptr %.1238, i64 30
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !10
  store volatile i8 %i.dw, ptr %i.du, align 1, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.1210237, i64 31
  %i.dy = getelementptr inbounds nuw i8, ptr %.1238, i64 31
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !10
  store volatile i8 %i.dz, ptr %i.dx, align 1, !tbaa !10
  %i.ea = getelementptr inbounds nuw i8, ptr %.1210237, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.1238, i64 32 ; 2 uses
  %i.ec = add i64 %.1216236, -32                  ; 3 uses
  %i.ed = icmp ugt i64 %i.ec, 32
  br i1 %i.ed, label %.lr.ph, label %.lr.ph245.preheader, !llvm.loop !16

.lr.ph245.preheader:                              ; preds = %.lr.ph, %.preheader235
  %.2244.ph = phi ptr [ %1, %.preheader235 ], [ %i.eb, %.lr.ph ] ; 2 uses
  %.2211243.ph = phi ptr [ %0, %.preheader235 ], [ %i.ea, %.lr.ph ] ; 2 uses
  %.2217242.ph = phi i64 [ %2, %.preheader235 ], [ %i.ec, %.lr.ph ] ; 4 uses
  %i.ee = add nsw i64 %.2217242.ph, -1
  %xtraiter = and i64 %.2217242.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph245.prol.loopexit, label %.lr.ph245.prol

.lr.ph245.prol:                                   ; preds = %.lr.ph245.preheader, %.lr.ph245.prol
  %.2244.prol = phi ptr [ %i.eh, %.lr.ph245.prol ], [ %.2244.ph, %.lr.ph245.preheader ] ; 2 uses
  %.2211243.prol = phi ptr [ %i.eg, %.lr.ph245.prol ], [ %.2211243.ph, %.lr.ph245.preheader ] ; 2 uses
  %.2217242.prol = phi i64 [ %i.ei, %.lr.ph245.prol ], [ %.2217242.ph, %.lr.ph245.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph245.prol ], [ 0, %.lr.ph245.preheader ]
  %i.ef = load i8, ptr %.2244.prol, align 1, !tbaa !10
  store volatile i8 %i.ef, ptr %.2211243.prol, align 1, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %.2211243.prol, i64 1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2244.prol, i64 1 ; 2 uses
  %i.ei = add nsw i64 %.2217242.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph245.prol.loopexit, label %.lr.ph245.prol, !llvm.loop !17

.lr.ph245.prol.loopexit:                          ; preds = %.lr.ph245.prol, %.lr.ph245.preheader
  %.2244.unr = phi ptr [ %.2244.ph, %.lr.ph245.preheader ], [ %i.eh, %.lr.ph245.prol ]
  %.2211243.unr = phi ptr [ %.2211243.ph, %.lr.ph245.preheader ], [ %i.eg, %.lr.ph245.prol ]
  %.2217242.unr = phi i64 [ %.2217242.ph, %.lr.ph245.preheader ], [ %i.ei, %.lr.ph245.prol ]
  %i.ej = icmp ult i64 %i.ee, 7
  br i1 %i.ej, label %.loopexit, label %.lr.ph245

.lr.ph245:                                        ; preds = %.lr.ph245.prol.loopexit, %.lr.ph245
  %.2244 = phi ptr [ %i.fh, %.lr.ph245 ], [ %.2244.unr, %.lr.ph245.prol.loopexit ] ; 9 uses
  %.2211243 = phi ptr [ %i.fg, %.lr.ph245 ], [ %.2211243.unr, %.lr.ph245.prol.loopexit ] ; 9 uses
  %.2217242 = phi i64 [ %i.fi, %.lr.ph245 ], [ %.2217242.unr, %.lr.ph245.prol.loopexit ]
  %i.ek = load i8, ptr %.2244, align 1, !tbaa !10
  store volatile i8 %i.ek, ptr %.2211243, align 1, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.2211243, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.2244, i64 1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  store volatile i8 %i.en, ptr %i.el, align 1, !tbaa !10
  %i.eo = getelementptr inbounds nuw i8, ptr %.2211243, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %.2244, i64 2
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !10
  store volatile i8 %i.eq, ptr %i.eo, align 1, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %.2211243, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %.2244, i64 3
  %i.et = load i8, ptr %i.es, align 1, !tbaa !10
  store volatile i8 %i.et, ptr %i.er, align 1, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %.2211243, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.2244, i64 4
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !10
  store volatile i8 %i.ew, ptr %i.eu, align 1, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.2211243, i64 5
  %i.ey = getelementptr inbounds nuw i8, ptr %.2244, i64 5
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !10
  store volatile i8 %i.ez, ptr %i.ex, align 1, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %.2211243, i64 6
  %i.fb = getelementptr inbounds nuw i8, ptr %.2244, i64 6
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !10
  store volatile i8 %i.fc, ptr %i.fa, align 1, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %.2211243, i64 7
  %i.fe = getelementptr inbounds nuw i8, ptr %.2244, i64 7
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !10
  store volatile i8 %i.ff, ptr %i.fd, align 1, !tbaa !10
  %i.fg = getelementptr inbounds nuw i8, ptr %.2211243, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.2244, i64 8
  %i.fi = add nsw i64 %.2217242, -8               ; 2 uses
  %.not228.7 = icmp eq i64 %i.fi, 0
  br i1 %.not228.7, label %.loopexit, label %.lr.ph245, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %.not226 = icmp eq i64 %i.ag, 0
  br i1 %.not226, label %.loopexit232, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fj = load i8, ptr %1, align 1, !tbaa !10
  store volatile i8 %i.fj, ptr %0, align 1, !tbaa !10
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.fm = add i64 %2, -1                          ; 2 uses
  %3 = icmp ne i64 %i.ag, 7
  %4 = icmp ne i64 %i.fm, 0
  %5 = and i1 %3, %4
  br i1 %5, label %bb.e, label %.loopexit232

bb.e:                                             ; preds = %bb.d
  %i.fn = load i8, ptr %i.fl, align 1, !tbaa !10
  store volatile i8 %i.fn, ptr %i.fk, align 1, !tbaa !10
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.fq = add i64 %2, -2                          ; 2 uses
  %6 = icmp ne i64 %i.ag, 6
  %7 = icmp ne i64 %i.fq, 0
  %8 = and i1 %6, %7
  br i1 %8, label %bb.f, label %.loopexit232

bb.f:                                             ; preds = %bb.e
  %i.fr = load i8, ptr %i.fp, align 1, !tbaa !10
  store volatile i8 %i.fr, ptr %i.fo, align 1, !tbaa !10
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.fu = add i64 %2, -3                          ; 2 uses
  %9 = icmp ne i64 %i.ag, 5
  %10 = icmp ne i64 %i.fu, 0
  %11 = and i1 %9, %10
  br i1 %11, label %bb.g, label %.loopexit232

bb.g:                                             ; preds = %bb.f
  %i.fv = load i8, ptr %i.ft, align 1, !tbaa !10
  store volatile i8 %i.fv, ptr %i.fs, align 1, !tbaa !10
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.fy = add i64 %2, -4                          ; 2 uses
  %12 = icmp ne i64 %i.ag, 4
  %13 = icmp ne i64 %i.fy, 0
  %14 = and i1 %12, %13
  br i1 %14, label %bb.h, label %.loopexit232

bb.h:                                             ; preds = %bb.g
  %i.fz = load i8, ptr %i.fx, align 1, !tbaa !10
  store volatile i8 %i.fz, ptr %i.fw, align 1, !tbaa !10
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.gc = add i64 %2, -5                          ; 2 uses
  %15 = icmp ne i64 %i.ag, 3
  %16 = icmp ne i64 %i.gc, 0
  %17 = and i1 %15, %16
  br i1 %17, label %bb.i, label %.loopexit232

bb.i:                                             ; preds = %bb.h
  %i.gd = load i8, ptr %i.gb, align 1, !tbaa !10
  store volatile i8 %i.gd, ptr %i.ga, align 1, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.gg = add i64 %2, -6                          ; 2 uses
  %18 = icmp ne i64 %i.ag, 2
  %19 = icmp ne i64 %i.gg, 0
  %20 = and i1 %18, %19
  br i1 %20, label %bb.j, label %.loopexit232

bb.j:                                             ; preds = %bb.i
  %i.gh = load i8, ptr %i.gf, align 1, !tbaa !10
  store volatile i8 %i.gh, ptr %i.ge, align 1, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.gk = add i64 %2, -7
  br label %.loopexit232

.loopexit232:                                     ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.c
  %.4219 = phi i64 [ %2, %bb.c ], [ %i.fm, %bb.d ], [ %i.fq, %bb.e ], [ %i.fu, %bb.f ], [ %i.fy, %bb.g ], [ %i.gc, %bb.h ], [ %i.gg, %bb.i ], [ %i.gk, %bb.j ] ; 4 uses
  %.4213 = phi ptr [ %0, %bb.c ], [ %i.fk, %bb.d ], [ %i.fo, %bb.e ], [ %i.fs, %bb.f ], [ %i.fw, %bb.g ], [ %i.ga, %bb.h ], [ %i.ge, %bb.i ], [ %i.gi, %bb.j ] ; 2 uses
  %.4 = phi ptr [ %1, %bb.c ], [ %i.fl, %bb.d ], [ %i.fp, %bb.e ], [ %i.ft, %bb.f ], [ %i.fx, %bb.g ], [ %i.gb, %bb.h ], [ %i.gf, %bb.i ], [ %i.gj, %bb.j ] ; 2 uses
  %i.gl = icmp ugt i64 %.4219, 32
  br i1 %i.gl, label %.lr.ph253, label %.preheader230

.preheader230:                                    ; preds = %.loopexit232
  %.not227257 = icmp eq i64 %.4219, 0
  br i1 %.not227257, label %.loopexit, label %.lr.ph261.preheader

.lr.ph253:                                        ; preds = %.loopexit232, %.lr.ph253
  %.0252 = phi ptr [ %i.hj, %.lr.ph253 ], [ %.4, %.loopexit232 ] ; 9 uses
  %.0206251 = phi ptr [ %i.hi, %.lr.ph253 ], [ %.4213, %.loopexit232 ] ; 9 uses
  %.5220250 = phi i64 [ %i.hk, %.lr.ph253 ], [ %.4219, %.loopexit232 ]
  %i.gm = load i32, ptr %.0252, align 4, !tbaa !13
  store i32 %i.gm, ptr %.0206251, align 4, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.0206251, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %.0252, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !13
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.0206251, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.0252, i64 8
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !13
  store i32 %i.gs, ptr %i.gq, align 4, !tbaa !13
  %i.gt = getelementptr inbounds nuw i8, ptr %.0206251, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %.0252, i64 12
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !13
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !13
  %i.gw = getelementptr inbounds nuw i8, ptr %.0206251, i64 16
  %i.gx = getelementptr inbounds nuw i8, ptr %.0252, i64 16
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !13
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !13
  %i.gz = getelementptr inbounds nuw i8, ptr %.0206251, i64 20
  %i.ha = getelementptr inbounds nuw i8, ptr %.0252, i64 20
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !13
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %.0206251, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %.0252, i64 24
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !13
  store i32 %i.he, ptr %i.hc, align 4, !tbaa !13
  %i.hf = getelementptr inbounds nuw i8, ptr %.0206251, i64 28
  %i.hg = getelementptr inbounds nuw i8, ptr %.0252, i64 28
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !13
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !13
  %i.hi = getelementptr inbounds nuw i8, ptr %.0206251, i64 32 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.0252, i64 32 ; 2 uses
  %i.hk = add i64 %.5220250, -32                  ; 3 uses
  %i.hl = icmp ugt i64 %i.hk, 32
  br i1 %i.hl, label %.lr.ph253, label %.lr.ph261.preheader, !llvm.loop !19

.lr.ph261.preheader:                              ; preds = %.lr.ph253, %.preheader230
  %.5260.ph = phi ptr [ %.4, %.preheader230 ], [ %i.hj, %.lr.ph253 ] ; 2 uses
  %.5214259.ph = phi ptr [ %.4213, %.preheader230 ], [ %i.hi, %.lr.ph253 ] ; 2 uses
  %.6258.ph = phi i64 [ %.4219, %.preheader230 ], [ %i.hk, %.lr.ph253 ] ; 4 uses
  %i.hm = add nsw i64 %.6258.ph, -1
  %xtraiter317 = and i64 %.6258.ph, 7             ; 2 uses
  %lcmp.mod318.not = icmp eq i64 %xtraiter317, 0
  br i1 %lcmp.mod318.not, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol

.lr.ph261.prol:                                   ; preds = %.lr.ph261.preheader, %.lr.ph261.prol
  %.5260.prol = phi ptr [ %i.hp, %.lr.ph261.prol ], [ %.5260.ph, %.lr.ph261.preheader ] ; 2 uses
  %.5214259.prol = phi ptr [ %i.ho, %.lr.ph261.prol ], [ %.5214259.ph, %.lr.ph261.preheader ] ; 2 uses
  %.6258.prol = phi i64 [ %i.hq, %.lr.ph261.prol ], [ %.6258.ph, %.lr.ph261.preheader ]
  %prol.iter319 = phi i64 [ %prol.iter319.next, %.lr.ph261.prol ], [ 0, %.lr.ph261.preheader ]
  %i.hn = load i8, ptr %.5260.prol, align 1, !tbaa !10
  store volatile i8 %i.hn, ptr %.5214259.prol, align 1, !tbaa !10
  %i.ho = getelementptr inbounds nuw i8, ptr %.5214259.prol, i64 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.5260.prol, i64 1 ; 2 uses
  %i.hq = add nsw i64 %.6258.prol, -1             ; 2 uses
  %prol.iter319.next = add i64 %prol.iter319, 1   ; 2 uses
  %prol.iter319.cmp.not = icmp eq i64 %prol.iter319.next, %xtraiter317
  br i1 %prol.iter319.cmp.not, label %.lr.ph261.prol.loopexit, label %.lr.ph261.prol, !llvm.loop !20

.lr.ph261.prol.loopexit:                          ; preds = %.lr.ph261.prol, %.lr.ph261.preheader
  %.5260.unr = phi ptr [ %.5260.ph, %.lr.ph261.preheader ], [ %i.hp, %.lr.ph261.prol ]
  %.5214259.unr = phi ptr [ %.5214259.ph, %.lr.ph261.preheader ], [ %i.ho, %.lr.ph261.prol ]
  %.6258.unr = phi i64 [ %.6258.ph, %.lr.ph261.preheader ], [ %i.hq, %.lr.ph261.prol ]
  %i.hr = icmp ult i64 %i.hm, 7
  br i1 %i.hr, label %.loopexit, label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.prol.loopexit, %.lr.ph261
  %.5260 = phi ptr [ %i.ip, %.lr.ph261 ], [ %.5260.unr, %.lr.ph261.prol.loopexit ] ; 9 uses
  %.5214259 = phi ptr [ %i.io, %.lr.ph261 ], [ %.5214259.unr, %.lr.ph261.prol.loopexit ] ; 9 uses
  %.6258 = phi i64 [ %i.iq, %.lr.ph261 ], [ %.6258.unr, %.lr.ph261.prol.loopexit ]
  %i.hs = load i8, ptr %.5260, align 1, !tbaa !10
  store volatile i8 %i.hs, ptr %.5214259, align 1, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.5214259, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.5260, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !10
  store volatile i8 %i.hv, ptr %i.ht, align 1, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %.5214259, i64 2
  %i.hx = getelementptr inbounds nuw i8, ptr %.5260, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !10
  store volatile i8 %i.hy, ptr %i.hw, align 1, !tbaa !10
  %i.hz = getelementptr inbounds nuw i8, ptr %.5214259, i64 3
  %i.ia = getelementptr inbounds nuw i8, ptr %.5260, i64 3
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !10
  store volatile i8 %i.ib, ptr %i.hz, align 1, !tbaa !10
  %i.ic = getelementptr inbounds nuw i8, ptr %.5214259, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %.5260, i64 4
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !10
  store volatile i8 %i.ie, ptr %i.ic, align 1, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.5214259, i64 5
  %i.ig = getelementptr inbounds nuw i8, ptr %.5260, i64 5
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !10
  store volatile i8 %i.ih, ptr %i.if, align 1, !tbaa !10
  %i.ii = getelementptr inbounds nuw i8, ptr %.5214259, i64 6
  %i.ij = getelementptr inbounds nuw i8, ptr %.5260, i64 6
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !10
  store volatile i8 %i.ik, ptr %i.ii, align 1, !tbaa !10
  %i.il = getelementptr inbounds nuw i8, ptr %.5214259, i64 7
  %i.im = getelementptr inbounds nuw i8, ptr %.5260, i64 7
  %i.in = load i8, ptr %i.im, align 1, !tbaa !10
  store volatile i8 %i.in, ptr %i.il, align 1, !tbaa !10
  %i.io = getelementptr inbounds nuw i8, ptr %.5214259, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.5260, i64 8
  %i.iq = add nsw i64 %.6258, -8                  ; 2 uses
  %.not227.7 = icmp eq i64 %i.iq, 0
  br i1 %.not227.7, label %.loopexit, label %.lr.ph261, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph245.prol.loopexit, %.lr.ph245, %.lr.ph261.prol.loopexit, %.lr.ph261, %.lr.ph266.prol.loopexit, %.lr.ph266, %.preheader230, %.preheader
  ret ptr %0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define void @lv_memset(ptr noundef %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7                          ; 2 uses
  %.not = icmp ne i64 %i.b, 0
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %.not, %i.c
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add i64 %2, -1                           ; 2 uses
  %i.e = xor i64 %i.b, 7
  %umin = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e) ; 2 uses
  %i.f = add nuw nsw i64 %umin, 1                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 %1, i64 %i.f, i1 false), !tbaa !10
  %scevgep = getelementptr i8, ptr %0, i64 %i.f
  %i.g = sub i64 %i.d, %umin
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %bb.a
  %.150 = phi i64 [ %2, %bb.a ], [ %i.g, %.lr.ph.preheader ] ; 6 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %scevgep, %.lr.ph.preheader ] ; 3 uses
  %i.h = zext i8 %1 to i32
  %i.i = mul nuw i32 %i.h, 16843009               ; 5 uses
  %i.j = icmp ugt i64 %.150, 32
  br i1 %i.j, label %.lr.ph60.preheader, label %.preheader

.lr.ph60.preheader:                               ; preds = %.loopexit
  %i.k = add i64 %.150, -33                       ; 2 uses
  %i.l = lshr i64 %i.k, 5
  %i.m = add nuw nsw i64 %i.l, 1
  %xtraiter = and i64 %i.m, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol.preheader

.lr.ph60.prol.preheader:                          ; preds = %.lr.ph60.preheader
  %i.n = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.o = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph60.prol

.lr.ph60.prol:                                    ; preds = %.lr.ph60.prol, %.lr.ph60.prol.preheader
  %.059.prol = phi ptr [ %i.q, %.lr.ph60.prol ], [ %.1, %.lr.ph60.prol.preheader ] ; 3 uses
  %.25158.prol = phi i64 [ %i.r, %.lr.ph60.prol ], [ %.150, %.lr.ph60.prol.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph60.prol ], [ 0, %.lr.ph60.prol.preheader ]
  store <4 x i32> %i.o, ptr %.059.prol, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.059.prol, i64 16
  store <4 x i32> %i.o, ptr %i.p, align 4, !tbaa !13
  %i.q = getelementptr inbounds nuw i8, ptr %.059.prol, i64 32 ; 3 uses
  %i.r = add i64 %.25158.prol, -32                ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph60.prol.loopexit, label %.lr.ph60.prol, !llvm.loop !22

.lr.ph60.prol.loopexit:                           ; preds = %.lr.ph60.prol, %.lr.ph60.preheader
  %.059.unr = phi ptr [ %.1, %.lr.ph60.preheader ], [ %i.q, %.lr.ph60.prol ]
  %.25158.unr = phi i64 [ %.150, %.lr.ph60.preheader ], [ %i.r, %.lr.ph60.prol ]
  %.lcssa81.unr = phi ptr [ poison, %.lr.ph60.preheader ], [ %i.q, %.lr.ph60.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph60.preheader ], [ %i.r, %.lr.ph60.prol ]
  %i.s = icmp ult i64 %i.k, 96
  br i1 %i.s, label %.lr.ph66.preheader, label %.lr.ph60.preheader.new

.lr.ph60.preheader.new:                           ; preds = %.lr.ph60.prol.loopexit
  %i.t = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.u = shufflevector <4 x i32> %i.t, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.v = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.w = shufflevector <4 x i32> %i.v, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.x = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.y = shufflevector <4 x i32> %i.x, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.z = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph60

.preheader:                                       ; preds = %.loopexit
  %.not5363 = icmp eq i64 %.150, 0
  br i1 %.not5363, label %._crit_edge, label %.lr.ph66.preheader

.lr.ph66.preheader:                               ; preds = %.lr.ph60.prol.loopexit, %.lr.ph60, %.preheader
  %.0.lcssa78 = phi ptr [ %.1, %.preheader ], [ %.lcssa81.unr, %.lr.ph60.prol.loopexit ], [ %i.ai, %.lr.ph60 ]
  %.251.lcssa77 = phi i64 [ %.150, %.preheader ], [ %.lcssa.unr, %.lr.ph60.prol.loopexit ], [ %i.aj, %.lr.ph60 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa78, i8 %1, i64 %.251.lcssa77, i1 false), !tbaa !10
  br label %._crit_edge

.lr.ph60:                                         ; preds = %.lr.ph60, %.lr.ph60.preheader.new
  %.059 = phi ptr [ %.059.unr, %.lr.ph60.preheader.new ], [ %i.ai, %.lr.ph60 ] ; 9 uses
  %.25158 = phi i64 [ %.25158.unr, %.lr.ph60.preheader.new ], [ %i.aj, %.lr.ph60 ]
  store <4 x i32> %i.u, ptr %.059, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %.059, i64 16
  store <4 x i32> %i.u, ptr %i.ab, align 4, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %.059, i64 32
  store <4 x i32> %i.w, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.059, i64 48
  store <4 x i32> %i.w, ptr %i.ad, align 4, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %.059, i64 64
  store <4 x i32> %i.y, ptr %i.ae, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %.059, i64 80
  store <4 x i32> %i.y, ptr %i.af, align 4, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %.059, i64 96
  store <4 x i32> %i.aa, ptr %i.ag, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %.059, i64 112
  store <4 x i32> %i.aa, ptr %i.ah, align 4, !tbaa !13
  %i.ai = getelementptr inbounds nuw i8, ptr %.059, i64 128 ; 2 uses
  %i.aj = add i64 %.25158, -128                   ; 3 uses
  %i.ak = icmp ugt i64 %i.aj, 32
  br i1 %i.ak, label %.lr.ph60, label %.lr.ph66.preheader, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph66.preheader, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define noundef ptr @lv_memmove(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.e = icmp ugt ptr %0, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call ptr @lv_memcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2) ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.g = icmp ugt ptr %0, %1
  %.not3138 = icmp eq i64 %2, 0                   ; 2 uses
  br i1 %i.g, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  br i1 %.not3138, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %2, 4
  %i.h = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %2, 32
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %2, 28
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec
  %i.k = getelementptr i8, ptr %0, i64 %n.vec
  %i.l = and i64 %2, 31
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %next.gep50 = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load51 = load <16 x i8>, ptr %i.m, align 1, !tbaa !10
  %i.n = getelementptr i8, ptr %next.gep50, i64 16
  store <16 x i8> %wide.load, ptr %next.gep50, align 1, !tbaa !10
  store <16 x i8> %wide.load51, ptr %i.n, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec54 = and i64 %2, -4                       ; 4 uses
  %i.p = getelementptr i8, ptr %1, i64 %n.vec54
  %i.q = getelementptr i8, ptr %0, i64 %n.vec54
  %i.r = and i64 %2, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index55 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %next.gep56 = getelementptr i8, ptr %1, i64 %index55
  %next.gep57 = getelementptr i8, ptr %0, i64 %index55
  %wide.load58 = load <4 x i8>, ptr %next.gep56, align 1, !tbaa !10
  store <4 x i8> %wide.load58, ptr %next.gep57, align 1, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.s = icmp eq i64 %index.next59, %n.vec54
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n60 = icmp eq i64 %2, %n.vec54
  br i1 %cmp.n60, label %.loopexit, label %.lr.ph.preheader
end_hunk_0
