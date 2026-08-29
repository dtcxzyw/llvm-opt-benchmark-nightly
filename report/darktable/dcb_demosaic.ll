Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dcb_demosaic?download=true
inline.NumInlined: 49
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6LibRaw14dcb_refinementEv:bb.a
  %i.br = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !76
  %i.bu = zext i16 %i.bt to i32
  %i.bv = add nuw nsw i32 %i.bp, %i.bu
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !76
  %i.bz = zext i16 %i.by to i32
  %i.ca = sub nsw i64 %indvars.iv, %i.p
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !76
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr i8, ptr %i.aw, i64 -16
  %i.cg = getelementptr i8, ptr %i.aw, i64 -10
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !76
  %i.ci = zext i16 %i.ch to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !76 ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = add nuw nsw i32 %i.ay, %i.bz
  %i.co = add nuw nsw i32 %i.cn, %i.bw
  %i.cp = add nuw nsw i32 %i.co, %i.ce
  %i.cq = add nuw nsw i32 %i.cp, %i.ci
  %i.cr = add nuw nsw i32 %i.cq, %i.cm            ; 2 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ae
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !76 ; 5 uses
  %i.cu = zext i16 %i.ct to i32                   ; 5 uses
  %i.cv = icmp ugt i16 %i.ct, 1
  br i1 %i.cv, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !76 ; 2 uses
  %i.cy = zext i16 %i.cx to i32                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !76 ; 2 uses
  %i.db = zext i16 %i.da to i32                   ; 2 uses
  %i.dc = add nuw nsw i32 %i.db, %i.cy
  %i.dd = uitofp nneg i32 %i.dc to float
  %i.de = shl nuw nsw i32 %i.cu, 1
  %i.df = uitofp nneg i32 %i.de to float          ; 2 uses
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.dd, %i.df ; 5 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.ae
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !76 ; 2 uses
  %.not = icmp eq i16 %i.di, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = uitofp reassoc nsz arcp contract afn i16 %i.cx to float
  %i.dl = fmul reassoc nnan nsz arcp contract afn float %i.dk, 2.000000e+00
  %i.dm = add nuw nsw i32 %i.dj, %i.cu
  %i.dn = uitofp nneg i32 %i.dm to float
  %i.do = fdiv reassoc nsz arcp contract afn float %i.dl, %i.dn
  %i.dp = sub nsw i64 %indvars.iv, %i.o
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !76
  %i.dt = zext i16 %i.ds to i32
  %i.du = add nuw nsw i32 %i.dt, %i.cy
  %i.dv = uitofp nneg i32 %i.du to float
  %i.dw = shl nuw nsw i32 %i.dj, 1
  %i.dx = uitofp nneg i32 %i.dw to float
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dv, %i.dx
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.sroa.14.01663 = phi float [ %i.do, %bb.e ], [ %i.dg, %bb.d ]
  %.sroa.20.0 = phi nsz float [ %i.dy, %bb.e ], [ %i.dg, %bb.d ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %gep, i64 %i.ae
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !76 ; 2 uses
  %.not1524 = icmp eq i16 %i.ea, 0
  br i1 %.not1524, label %.thread1664, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = uitofp reassoc nsz arcp contract afn i16 %i.da to float
  %i.ed = fmul reassoc nnan nsz arcp contract afn float %i.ec, 2.000000e+00
  %i.ee = add nuw nsw i32 %i.eb, %i.cu
  %i.ef = uitofp nneg i32 %i.ee to float
  %i.eg = fdiv reassoc nsz arcp contract afn float %i.ed, %i.ef
  %gep1890.a = getelementptr [8 x i8], ptr %invariant.gep1889.a, i64 %indvars.iv
  %i.eh = getelementptr inbounds nuw i8, ptr %gep1890.a, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !76
  %i.ej = zext i16 %i.ei to i32
  %i.ek = add nuw nsw i32 %i.ej, %i.db
  %i.el = uitofp nneg i32 %i.ek to float
  %i.em = shl nuw nsw i32 %i.eb, 1
  %i.en = uitofp nneg i32 %i.em to float
  %i.eo = fdiv reassoc nsz arcp contract afn float %i.el, %i.en
  br label %.thread1664

.thread1664:                                      ; preds = %.thread, %bb.f
  %.sroa.26.01666 = phi float [ %i.eg, %bb.f ], [ %i.dg, %.thread ]
  %.sroa.32.0 = phi nsz float [ %i.eo, %bb.f ], [ %i.dg, %.thread ]
  %i.ep = fmul reassoc nsz arcp contract afn float %i.dg, 5.000000e+00
  %reass.add = fadd reassoc nsz arcp contract afn float %.sroa.26.01666, %.sroa.14.01663
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, 3.000000e+00
  %i.eq = fadd reassoc nsz arcp contract afn float %i.ep, %.sroa.20.0
  %i.er = fadd reassoc nsz arcp contract afn float %.sroa.32.0, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn float %i.er, %reass.mul
  %i.et = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !76 ; 3 uses
  %i.ev = zext i16 %i.eu to i32                   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !76 ; 3 uses
  %i.ey = zext i16 %i.ex to i32                   ; 2 uses
  %i.ez = add nuw nsw i32 %i.ey, %i.ev
  %i.fa = uitofp nneg i32 %i.ez to float
  %i.fb = fdiv reassoc nsz arcp contract afn float %i.fa, %i.df ; 5 uses
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ae
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !76 ; 2 uses
  %.not1526 = icmp eq i16 %i.fd, 0
  br i1 %.not1526, label %.thread1667, label %bb.g

bb.g:                                             ; preds = %.thread1664
  %i.fe = zext i16 %i.fd to i32                   ; 2 uses
  %i.ff = uitofp reassoc nsz arcp contract afn i16 %i.eu to float
  %i.fg = fmul reassoc nnan nsz arcp contract afn float %i.ff, 2.000000e+00
  %i.fh = add nuw nsw i32 %i.fe, %i.cu
  %i.fi = uitofp nneg i32 %i.fh to float
  %i.fj = fdiv reassoc nsz arcp contract afn float %i.fg, %i.fi
  %i.fk = getelementptr i8, ptr %i.aw, i64 -22
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !76
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw nsw i32 %i.fm, %i.ev
  %i.fo = uitofp nneg i32 %i.fn to float
  %i.fp = shl nuw nsw i32 %i.fe, 1
  %i.fq = uitofp nneg i32 %i.fp to float
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.fo, %i.fq
  br label %.thread1667

.thread1667:                                      ; preds = %.thread1664, %bb.g
  %.sroa.14.11669 = phi float [ %i.fj, %bb.g ], [ %i.fb, %.thread1664 ]
  %.sroa.20.1 = phi nsz float [ %i.fr, %bb.g ], [ %i.fb, %.thread1664 ]
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.ae
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !76 ; 2 uses
  %.not1528 = icmp eq i16 %i.ft, 0
  br i1 %.not1528, label %.thread1670, label %bb.h

bb.h:                                             ; preds = %.thread1667
  %i.fu = zext i16 %i.ft to i32                   ; 2 uses
  %i.fv = uitofp reassoc nsz arcp contract afn i16 %i.ex to float
  %i.fw = fmul reassoc nnan nsz arcp contract afn float %i.fv, 2.000000e+00
  %i.fx = add nuw nsw i32 %i.fu, %i.cu
  %i.fy = uitofp nneg i32 %i.fx to float
  %i.fz = fdiv reassoc nsz arcp contract afn float %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.aw, i64 26
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !76
  %i.gc = zext i16 %i.gb to i32
  %i.gd = add nuw nsw i32 %i.gc, %i.ey
  %i.ge = uitofp nneg i32 %i.gd to float
  %i.gf = shl nuw nsw i32 %i.fu, 1
  %i.gg = uitofp nneg i32 %i.gf to float
  %i.gh = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gg
  br label %.thread1670

.thread1670:                                      ; preds = %.thread1667, %bb.h
  %.sroa.26.11672 = phi float [ %i.fz, %bb.h ], [ %i.fb, %.thread1667 ]
  %.sroa.32.1 = phi nsz float [ %i.gh, %bb.h ], [ %i.fb, %.thread1667 ]
  %i.gi = fmul reassoc nsz arcp contract afn float %i.fb, 5.000000e+00
  %reass.add1807.a = fadd reassoc nsz arcp contract afn float %.sroa.26.11672, %.sroa.14.11669
  %reass.mul1808.a = fmul reassoc nsz arcp contract afn float %reass.add1807.a, 3.000000e+00
  %i.gj = fadd reassoc nsz arcp contract afn float %i.gi, %.sroa.20.1
  %i.gk = fadd reassoc nsz arcp contract afn float %.sroa.32.1, %i.gj
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, %reass.mul1808.a
  %i.gm = uitofp i16 %i.ct to float
  %i.gn = uitofp nneg i32 %i.cr to float
  %i.go = fmul reassoc nsz arcp contract afn float %i.es, %i.gn
  %i.gp = sub nsw i32 16, %i.cr
  %i.gq = sitofp reassoc nsz arcp contract afn i32 %i.gp to float
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gl, %i.gq
  %reass.add1809 = fadd reassoc nsz arcp contract afn float %i.gr, %i.go
  %reass.mul1810 = fmul reassoc nnan nsz arcp contract afn float %i.gm, f0x3D9D89D9
  %i.gs = fmul reassoc nsz arcp contract afn float %reass.mul1810, %reass.add1809
  %i.gt = fpext reassoc nsz arcp contract afn float %i.gs to double
  %i.gu = fmul reassoc nsz arcp contract afn double %i.gt, 6.250000e-02
  %i.gv = fptosi double %i.gu to i32
  %i.gw = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %i.gx = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 65535)
  %i.gy = trunc nuw i32 %i.gx to i16              ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !76
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.ct, ptr %i.ha, align 2, !tbaa !76
  %.phi.trans.insert1819.a = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %.pre1820.a = load i16, ptr %.phi.trans.insert1819.a, align 2, !tbaa !76
  %.phi.trans.insert1821 = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %.pre1822 = load i16, ptr %.phi.trans.insert1821, align 2, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread1670
  %i.hb = phi i16 [ %i.ct, %bb.i ], [ %i.gy, %.thread1670 ]
  %i.hc = phi i16 [ %.pre1822, %bb.i ], [ %i.ex, %.thread1670 ] ; 16 uses
  %i.hd = phi i16 [ %.pre1820.a, %bb.i ], [ %i.eu, %.thread1670 ] ; 22 uses
  %gep1892 = getelementptr [8 x i8], ptr %invariant.gep1891, i64 %i.bk
  %i.he = getelementptr inbounds nuw i8, ptr %gep1892, i64 2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !76 ; 4 uses
  %i.hg = sub nsw i64 %i.bk, %i.n
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !76 ; 8 uses
  %i.hk = add nsw i64 %i.bq, %i.n                 ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !76 ; 18 uses
  %i.ho = sub nsw i64 %i.bq, %i.n                 ; 4 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !76 ; 17 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.bf, i64 2
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !76 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !76 ; 2 uses
  %. = tail call i16 @llvm.umin.i16(i16 %i.ht, i16 %i.hv) ; 3 uses
  %i.hw = icmp ult i16 %i.hc, %.                  ; 4 uses
  br i1 %i.hw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.be
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 2
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !76
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !76
  %.1531 = tail call i16 @llvm.umin.i16(i16 %i.hz, i16 %i.ic)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.id = phi i16 [ %.1531, %bb.k ], [ %i.hc, %bb.j ]
  %i.ie = icmp ult i16 %i.hd, %i.id
  br i1 %i.ie, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.bk
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !76
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.be
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !76
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.az
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.in = load i16, ptr %i.im, align 2, !tbaa !76
  %.1532 = tail call i16 @llvm.umin.i16(i16 %i.ik, i16 %i.in)
  %spec.select1731.a = tail call i16 @llvm.umin.i16(i16 %i.ih, i16 %.1532)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.io = phi i16 [ %spec.select1731.a, %bb.m ], [ %i.hd, %bb.l ]
  %i.ip = icmp ult i16 %i.hr, %i.io
  br i1 %i.ip, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bq
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !76 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.bk
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 2
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !76 ; 2 uses
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.be
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !76
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.az
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 2
  %i.jb = load i16, ptr %i.ja, align 2, !tbaa !76
  %.1534 = tail call i16 @llvm.umin.i16(i16 %i.iy, i16 %i.jb) ; 2 uses
  %i.jc = icmp ult i16 %i.iv, %.1534
  br i1 %i.jc, label %bb.p, label %.thread1673

bb.p:                                             ; preds = %bb.o
  %spec.select1732 = tail call i16 @llvm.umin.i16(i16 %i.is, i16 %i.iv)
  br label %bb.q

.thread1673:                                      ; preds = %bb.o
  %spec.select1733 = tail call i16 @llvm.umin.i16(i16 %i.is, i16 %.1534)
  br label %bb.q

bb.q:                                             ; preds = %.thread1673, %bb.p, %bb.n
  %i.jd = phi i16 [ %spec.select1732, %bb.p ], [ %i.hr, %bb.n ], [ %spec.select1733, %.thread1673 ]
  %i.je = icmp ult i16 %i.hn, %i.jd
  br i1 %i.je, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ho
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !76 ; 2 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bq
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !76 ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.bk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !76 ; 3 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.be
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !76
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.az
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !76
  %.1538 = tail call i16 @llvm.umin.i16(i16 %i.jq, i16 %i.jt) ; 3 uses
  %minmaxop = tail call i16 @llvm.umin.i16(i16 %i.jn, i16 %.1538)
  %i.ju = tail call i16 @llvm.umin.i16(i16 %minmaxop, i16 %i.jk)
  %i.jv = icmp ult i16 %i.jh, %i.ju
  br i1 %i.jv, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jw = icmp ult i16 %i.jn, %.1538
  br i1 %i.jw, label %bb.t, label %.thread1677

bb.t:                                             ; preds = %bb.s
  %spec.select1736 = tail call i16 @llvm.umin.i16(i16 %i.jk, i16 %i.jn)
  br label %bb.u

.thread1677:                                      ; preds = %bb.s
  %spec.select1737 = tail call i16 @llvm.umin.i16(i16 %i.jk, i16 %.1538)
  br label %bb.u

bb.u:                                             ; preds = %.thread1677, %bb.t, %bb.r, %bb.q
  %i.jx = phi i16 [ %spec.select1736, %bb.t ], [ %i.hn, %bb.q ], [ %i.jh, %bb.r ], [ %spec.select1737, %.thread1677 ]
  %i.jy = icmp ult i16 %i.hj, %i.jx
  br i1 %i.jy, label %.thread1880.a, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.hk
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !76 ; 3 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ho
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !76 ; 3 uses
  %i.kf = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.bq
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 2
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !76 ; 4 uses
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bk
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !76 ; 4 uses
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.be
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !76
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.az
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !76
  %.1546 = tail call i16 @llvm.umin.i16(i16 %i.kn, i16 %i.kq) ; 4 uses
  %i.kr = icmp ult i16 %i.kk, %.1546
  %minmaxop1795.a = tail call i16 @llvm.umin.i16(i16 %i.kk, i16 %.1546)
  %i.ks = tail call i16 @llvm.umin.i16(i16 %minmaxop1795.a, i16 %i.kh)
  %i.kt = icmp ult i16 %i.ke, %i.ks
  br i1 %i.kt, label %.thread1879.a, label %bb.w

bb.w:                                             ; preds = %bb.v
  %..1546 = tail call i16 @llvm.umin.i16(i16 %i.kk, i16 %.1546)
  %spec.select1741 = tail call i16 @llvm.umin.i16(i16 %i.kh, i16 %..1546)
  %i.ku = icmp ult i16 %i.kb, %spec.select1741    ; 2 uses
  %.mux = select i1 %i.ku, i16 %i.kb, i16 %i.ke
  br i1 %i.ku, label %.thread1880.a, label %bb.x

.thread1879.a:                                    ; preds = %bb.v
  %spec.select = tail call i16 @llvm.umin.i16(i16 %i.kb, i16 %i.ke)
  br label %.thread1880.a

bb.x:                                             ; preds = %bb.w
  br i1 %i.kr, label %bb.y, label %.thread1685.a

bb.y:                                             ; preds = %bb.x
  %spec.select1744.a = tail call i16 @llvm.umin.i16(i16 %i.kh, i16 %i.kk)
  br label %.thread1880.a

.thread1685.a:                                    ; preds = %bb.x
  %spec.select1745.a = tail call i16 @llvm.umin.i16(i16 %i.kh, i16 %.1546)
  br label %.thread1880.a

.thread1880.a:                                    ; preds = %.thread1879.a, %bb.w, %.thread1685.a, %bb.y, %bb.u
  %i.kv = phi i16 [ %spec.select1744.a, %bb.y ], [ %i.hj, %bb.u ], [ %.mux, %bb.w ], [ %spec.select, %.thread1879.a ], [ %spec.select1745.a, %.thread1685.a ]
  %i.kw = icmp ult i16 %i.hf, %i.kv
  br i1 %i.kw, label %bb.aw, label %bb.z

bb.z:                                             ; preds = %.thread1880.a
  br i1 %i.hw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.be
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !76
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.az
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 2
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !76
  %.1563 = tail call i16 @llvm.umin.i16(i16 %i.kz, i16 %i.lc)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.ld = phi i16 [ %.1563, %bb.aa ], [ %i.hc, %bb.z ]
  %i.le = icmp ult i16 %i.hd, %i.ld
  br i1 %i.le, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bk
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !76
  %i.li = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.be
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 2
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !76
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.az
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !76
  %.1564 = tail call i16 @llvm.umin.i16(i16 %i.lk, i16 %i.ln)
  %spec.select1746.a = tail call i16 @llvm.umin.i16(i16 %i.lh, i16 %.1564)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.lo = phi i16 [ %spec.select1746.a, %bb.ac ], [ %i.hd, %bb.ab ]
  %i.lp = icmp ult i16 %i.hr, %i.lo
  br i1 %i.lp, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.bq
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  %i.ls = load i16, ptr %i.lr, align 2, !tbaa !76 ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bk
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 2
  %i.lv = load i16, ptr %i.lu, align 2, !tbaa !76 ; 2 uses
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.be
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !76
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !76
  %.1566 = tail call i16 @llvm.umin.i16(i16 %i.ly, i16 %i.mb) ; 2 uses
  %i.mc = icmp ult i16 %i.lv, %.1566
  br i1 %i.mc, label %bb.af, label %.thread1687

bb.af:                                            ; preds = %bb.ae
  %spec.select1747 = tail call i16 @llvm.umin.i16(i16 %i.ls, i16 %i.lv)
  br label %bb.ag

.thread1687:                                      ; preds = %bb.ae
  %spec.select1748 = tail call i16 @llvm.umin.i16(i16 %i.ls, i16 %.1566)
  br label %bb.ag

bb.ag:                                            ; preds = %.thread1687, %bb.af, %bb.ad
  %i.md = phi i16 [ %spec.select1747, %bb.af ], [ %i.hr, %bb.ad ], [ %spec.select1748, %.thread1687 ]
  %i.me = icmp ult i16 %i.hn, %i.md
  br i1 %i.me, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.ho
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mh = load i16, ptr %i.mg, align 2, !tbaa !76 ; 2 uses
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.bq
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !76 ; 3 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 2
  %i.mn = load i16, ptr %i.mm, align 2, !tbaa !76 ; 3 uses
  %i.mo = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.be
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 2
  %i.mq = load i16, ptr %i.mp, align 2, !tbaa !76
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.az
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 2
  %i.mt = load i16, ptr %i.ms, align 2, !tbaa !76
  %.1570 = tail call i16 @llvm.umin.i16(i16 %i.mq, i16 %i.mt) ; 3 uses
  %minmaxop1797.a = tail call i16 @llvm.umin.i16(i16 %i.mn, i16 %.1570)
  %i.mu = tail call i16 @llvm.umin.i16(i16 %minmaxop1797.a, i16 %i.mk)
  %i.mv = icmp ult i16 %i.mh, %i.mu
  br i1 %i.mv, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mw = icmp ult i16 %i.mn, %.1570
  br i1 %i.mw, label %bb.aj, label %.thread1691.a

bb.aj:                                            ; preds = %bb.ai
  %spec.select1751.a = tail call i16 @llvm.umin.i16(i16 %i.mk, i16 %i.mn)
  br label %bb.ak

.thread1691.a:                                    ; preds = %bb.ai
  %spec.select1752.a = tail call i16 @llvm.umin.i16(i16 %i.mk, i16 %.1570)
  br label %bb.ak

bb.ak:                                            ; preds = %.thread1691.a, %bb.aj, %bb.ah, %bb.ag
  %i.mx = phi i16 [ %spec.select1751.a, %bb.aj ], [ %i.hn, %bb.ag ], [ %i.mh, %bb.ah ], [ %spec.select1752.a, %.thread1691.a ]
  %i.my = icmp ult i16 %i.hj, %i.mx
  br i1 %i.my, label %bb.aw, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.hw, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.be
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nb = load i16, ptr %i.na, align 2, !tbaa !76
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.az
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 2
  %i.ne = load i16, ptr %i.nd, align 2, !tbaa !76
  %.1579 = tail call i16 @llvm.umin.i16(i16 %i.nb, i16 %i.ne)
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.nf = phi i16 [ %.1579, %bb.am ], [ %i.hc, %bb.al ]
  %i.ng = icmp ult i16 %i.hd, %i.nf
  br i1 %i.ng, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bk
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 2
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !76
  %i.nk = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.be
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 2
  %i.nm = load i16, ptr %i.nl, align 2, !tbaa !76
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.az
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 2
  %i.np = load i16, ptr %i.no, align 2, !tbaa !76
  %.1580 = tail call i16 @llvm.umin.i16(i16 %i.nm, i16 %i.np)
  %spec.select1753.a = tail call i16 @llvm.umin.i16(i16 %i.nj, i16 %.1580)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.nq = phi i16 [ %spec.select1753.a, %bb.ao ], [ %i.hd, %bb.an ]
  %i.nr = icmp ult i16 %i.hr, %i.nq
  br i1 %i.nr, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.bq
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !76 ; 2 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bk
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !76 ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.be
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.oa = load i16, ptr %i.nz, align 2, !tbaa !76
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.az
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 2
  %i.od = load i16, ptr %i.oc, align 2, !tbaa !76
  %.1582 = tail call i16 @llvm.umin.i16(i16 %i.oa, i16 %i.od) ; 2 uses
  %i.oe = icmp ult i16 %i.nx, %.1582
  br i1 %i.oe, label %bb.ar, label %.thread1693

bb.ar:                                            ; preds = %bb.aq
  %spec.select1754 = tail call i16 @llvm.umin.i16(i16 %i.nu, i16 %i.nx)
  br label %bb.as

.thread1693:                                      ; preds = %bb.aq
  %spec.select1755 = tail call i16 @llvm.umin.i16(i16 %i.nu, i16 %.1582)
  br label %bb.as

bb.as:                                            ; preds = %.thread1693, %bb.ar, %bb.ap
  %i.of = phi i16 [ %spec.select1754, %bb.ar ], [ %i.hr, %bb.ap ], [ %spec.select1755, %.thread1693 ]
  %i.og = icmp ult i16 %i.hn, %i.of
  br i1 %i.og, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %minmaxop1798 = tail call i16 @llvm.umin.i16(i16 %i.hc, i16 %.)
  %i.oh = tail call i16 @llvm.umin.i16(i16 %minmaxop1798, i16 %i.hd)
  %i.oi = icmp ult i16 %i.hr, %i.oh
  br i1 %i.oi, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.hw, label %bb.av, label %.thread1697

bb.av:                                            ; preds = %bb.au
  %spec.select1758 = tail call i16 @llvm.umin.i16(i16 %i.hd, i16 %i.hc)
  br label %bb.aw

.thread1697:                                      ; preds = %bb.au
  %spec.select1759 = tail call i16 @llvm.umin.i16(i16 %i.hd, i16 %.)
  br label %bb.aw

bb.aw:                                            ; preds = %.thread1697, %bb.av, %bb.at, %bb.as, %bb.ak, %.thread1880.a
  %i.oj = phi i16 [ %spec.select1758, %bb.av ], [ %i.hf, %.thread1880.a ], [ %i.hj, %bb.ak ], [ %i.hn, %bb.as ], [ %i.hr, %bb.at ], [ %spec.select1759, %.thread1697 ]
  %1 = uitofp reassoc nsz arcp contract afn i16 %i.oj to float ; 3 uses
  %.1594 = tail call i16 @llvm.umax.i16(i16 %i.ht, i16 %i.hv) ; 10 uses
  %i.ok = icmp ugt i16 %i.hc, %.1594              ; 4 uses
  %minmaxop1799 = tail call i16 @llvm.umax.i16(i16 %i.hc, i16 %.1594)
  %i.ol = tail call i16 @llvm.umax.i16(i16 %minmaxop1799, i16 %i.hd)
  %i.om = icmp ugt i16 %i.hr, %i.ol               ; 4 uses
  br i1 %i.om, label %.thread1881.a, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %..1594 = tail call i16 @llvm.umax.i16(i16 %i.hc, i16 %.1594)
  %spec.select1763 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %..1594)
  %i.on = icmp ugt i16 %i.hn, %spec.select1763    ; 2 uses
  %.mux1895 = select i1 %i.on, i16 %i.hn, i16 %i.hr
  br i1 %i.on, label %.thread1882.a, label %bb.ay

.thread1881.a:                                    ; preds = %bb.aw
  %spec.select1893 = tail call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hr)
  br label %.thread1882.a

bb.ay:                                            ; preds = %bb.ax
  br i1 %i.ok, label %bb.az, label %.thread1705

bb.az:                                            ; preds = %bb.ay
  %spec.select1766 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %i.hc)
  br label %.thread1882.a

.thread1705:                                      ; preds = %bb.ay
  %spec.select1767 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %.1594)
  br label %.thread1882.a

.thread1882.a:                                    ; preds = %.thread1881.a, %bb.ax, %.thread1705, %bb.az
  %i.oo = phi i16 [ %spec.select1766, %bb.az ], [ %.mux1895, %bb.ax ], [ %spec.select1893, %.thread1881.a ], [ %spec.select1767, %.thread1705 ]
  %i.op = icmp ugt i16 %i.hj, %i.oo
  br i1 %i.op, label %.thread1884.a, label %bb.ba

bb.ba:                                            ; preds = %.thread1882.a
  br i1 %i.om, label %.thread1883.a, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %..15941913 = tail call i16 @llvm.umax.i16(i16 %i.hc, i16 %.1594)
  %spec.select1771 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %..15941913)
  %i.oq = icmp ugt i16 %i.hn, %spec.select1771    ; 2 uses
  %.mux1899 = select i1 %i.oq, i16 %i.hn, i16 %i.hr
  br i1 %i.oq, label %.thread1884.a, label %bb.bc

.thread1883.a:                                    ; preds = %bb.ba
  %spec.select1897 = tail call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hr)
  br label %.thread1884.a

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ok, label %bb.bd, label %.thread1713

bb.bd:                                            ; preds = %bb.bc
  %spec.select1774 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %i.hc)
  br label %.thread1884.a

.thread1713:                                      ; preds = %bb.bc
  %spec.select1775 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %.1594)
  br label %.thread1884.a

.thread1884.a:                                    ; preds = %.thread1883.a, %bb.bb, %.thread1713, %bb.bd, %.thread1882.a
  %i.or = phi i16 [ %spec.select1774, %bb.bd ], [ %i.hj, %.thread1882.a ], [ %.mux1899, %bb.bb ], [ %spec.select1897, %.thread1883.a ], [ %spec.select1775, %.thread1713 ]
  %i.os = icmp ugt i16 %i.hf, %i.or
  br i1 %i.os, label %.thread1888, label %bb.be

bb.be:                                            ; preds = %.thread1884.a
  br i1 %i.om, label %.thread1885.a, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %..15941914 = tail call i16 @llvm.umax.i16(i16 %i.hc, i16 %.1594)
  %spec.select1779 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %..15941914)
  %i.ot = icmp ugt i16 %i.hn, %spec.select1779    ; 2 uses
  %.mux1903 = select i1 %i.ot, i16 %i.hn, i16 %i.hr
  br i1 %i.ot, label %.thread1886.a, label %bb.bg

.thread1885.a:                                    ; preds = %bb.be
  %spec.select1901 = tail call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hr)
  br label %.thread1886.a

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ok, label %bb.bh, label %.thread1721

bb.bh:                                            ; preds = %bb.bg
  %spec.select1782 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %i.hc)
  br label %.thread1886.a

.thread1721:                                      ; preds = %bb.bg
  %spec.select1783 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %.1594)
  br label %.thread1886.a

.thread1886.a:                                    ; preds = %.thread1885.a, %bb.bf, %.thread1721, %bb.bh
  %i.ou = phi i16 [ %spec.select1782, %bb.bh ], [ %.mux1903, %bb.bf ], [ %spec.select1901, %.thread1885.a ], [ %spec.select1783, %.thread1721 ]
  %i.ov = icmp ugt i16 %i.hj, %i.ou
  br i1 %i.ov, label %.thread1888, label %bb.bi

bb.bi:                                            ; preds = %.thread1886.a
  br i1 %i.om, label %.thread1887, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %..15941915 = tail call i16 @llvm.umax.i16(i16 %i.hc, i16 %.1594)
  %spec.select1787 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %..15941915)
  %i.ow = icmp ugt i16 %i.hn, %spec.select1787    ; 2 uses
  %.mux1907 = select i1 %i.ow, i16 %i.hn, i16 %i.hr
  br i1 %i.ow, label %.thread1888, label %bb.bk

.thread1887:                                      ; preds = %bb.bi
  %spec.select1905 = tail call i16 @llvm.umax.i16(i16 %i.hn, i16 %i.hr)
  br label %.thread1888

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.ok, label %bb.bl, label %.thread1729

bb.bl:                                            ; preds = %bb.bk
  %spec.select1790 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %i.hc)
  br label %.thread1888

.thread1729:                                      ; preds = %bb.bk
  %spec.select1791 = tail call i16 @llvm.umax.i16(i16 %i.hd, i16 %.1594)
  br label %.thread1888

.thread1888:                                      ; preds = %.thread1887, %bb.bj, %.thread1729, %bb.bl, %.thread1886.a, %.thread1884.a
  %i.ox = phi i16 [ %spec.select1790, %bb.bl ], [ %i.hf, %.thread1884.a ], [ %i.hj, %.thread1886.a ], [ %.mux1907, %bb.bj ], [ %spec.select1905, %.thread1887 ], [ %spec.select1791, %.thread1729 ]
  %2 = uitofp reassoc nsz arcp contract afn i16 %i.ox to float ; 3 uses
  %3 = fcmp reassoc nsz arcp contract afn olt float %2, %1 ; 2 uses
  %4 = uitofp i16 %i.hb to float                  ; 2 uses
  %.1916 = select i1 %3, float %1, float %2       ; 2 uses
  %.1917 = select i1 %3, float %2, float %1       ; 2 uses
  %5 = fcmp reassoc nsz arcp contract afn ogt float %.1916, %4
  %.1660 = select reassoc nsz arcp contract afn i1 %5, float %4, float %.1916 ; 2 uses
  %6 = fcmp reassoc nsz arcp contract afn olt float %.1660, %.1917
  %spec.select1793 = select reassoc nsz arcp contract afn i1 %6, float %.1917, float %.1660
  %7 = fptoui float %spec.select1793 to i16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %7, ptr %i.oy, align 2, !tbaa !76
  %i.oz = add nuw nsw i32 %.015041811, 2          ; 2 uses
  %i.pa = icmp slt i32 %i.oz, %i.l
  br i1 %i.pa, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !349

._crit_edge.loopexit:                             ; preds = %.thread1888
  %.pre1823 = load i16, ptr %i.c, align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.pb = phi i16 [ %.pre1823, %._crit_edge.loopexit ], [ %i.q, %bb.b ] ; 2 uses
  %i.pc = add nuw nsw i32 %.015051813, 1          ; 2 uses
  %i.pd = zext i16 %i.pb to i32
  %i.pe = add nsw i32 %i.pd, -4
  %i.pf = icmp slt i32 %i.pc, %i.pe
  br i1 %i.pf, label %bb.b, label %._crit_edge1816, !llvm.loop !350

._crit_edge1816:                                  ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10rgb_to_lchEPA3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !74
  %i.c = zext i16 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.e = load i16, ptr %i.d, align 2, !tbaa !11
  %i.f = zext i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.c               ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  %min.iters.check = icmp samesign ult i32 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.j = and i64 %wide.trip.count, 3              ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 4, i64 %i.j
  %n.vec = sub nsw i64 %wide.trip.count, %i.l     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  %wide.vec = load <16 x i16>, ptr %i.m, align 2, !tbaa !76 ; 3 uses
  %strided.vec = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12> ; 2 uses
  %strided.vec20 = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %strided.vec21 = shufflevector <16 x i16> %wide.vec, <16 x i16> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14> ; 2 uses
  %i.n = zext <4 x i16> %strided.vec to <4 x i32> ; 2 uses
  %i.o = zext <4 x i16> %strided.vec20 to <4 x i32> ; 2 uses
  %i.p = add nuw nsw <4 x i32> %i.o, %i.n
  %i.q = zext <4 x i16> %strided.vec21 to <4 x i32>
  %i.r = add nuw nsw <4 x i32> %i.p, %i.q
  %i.s = uitofp nneg <4 x i32> %i.r to <4 x double>
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %index
  %i.u = sub nsw <4 x i32> %i.n, %i.o
  %i.v = sitofp reassoc nsz arcp contract afn <4 x i32> %i.u to <4 x double>
  %i.w = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.v, splat (double f0x3FFBB67AE875ED0F)
  %i.x = uitofp <4 x i16> %strided.vec21 to <4 x double>
  %i.y = fmul reassoc nnan nsz arcp contract afn <4 x double> %i.x, splat (double 2.000000e+00)
  %i.z = uitofp <4 x i16> %strided.vec to <4 x double>
  %i.aa = uitofp <4 x i16> %strided.vec20 to <4 x double>
  %i.ab = fadd reassoc nsz arcp contract afn <4 x double> %i.z, %i.aa
  %i.ac = fsub reassoc nsz arcp contract afn <4 x double> %i.y, %i.ab
  %i.ad = shufflevector <4 x double> %i.s, <4 x double> %i.w, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ae = shufflevector <4 x double> %i.ac, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.ad, <8 x double> %i.ae, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec, ptr %i.t, align 8, !tbaa !351
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %scalar.ph.preheader, label %vector.body, !llvm.loop !352

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !76 ; 2 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !76 ; 2 uses
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = add nuw nsw i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !76 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = add nuw nsw i32 %i.am, %i.ap
  %i.ar = uitofp nneg i32 %i.aq to double
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  store double %i.ar, ptr %i.as, align 8, !tbaa !351
  %i.at = sub nsw i32 %i.ai, %i.al
  %i.au = sitofp reassoc nsz arcp contract afn i32 %i.at to double
  %i.av = fmul reassoc nnan nsz arcp contract afn double %i.au, f0x3FFBB67AE875ED0F
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !351
  %i.ax = uitofp i16 %i.ao to double
  %i.ay = fmul reassoc nnan nsz arcp contract afn double %i.ax, 2.000000e+00
  %i.az = uitofp i16 %i.ah to double
  %i.ba = uitofp i16 %i.ak to double
  %i.bb = fadd reassoc nsz arcp contract afn double %i.az, %i.ba
  %i.bc = fsub reassoc nsz arcp contract afn double %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %i.bc, ptr %i.bd, align 8, !tbaa !351
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !353

._crit_edge:                                      ; preds = %scalar.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw10lch_to_rgbEPA3_d(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.c = load i16, ptr %i.a, align 4, !tbaa !74
  %i.d = zext i16 %i.c to i32
  %i.e = load i16, ptr %i.b, align 2, !tbaa !11
  %i.f = zext i16 %i.e to i32
  %i.g = mul nuw nsw i32 %i.f, %i.d
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !203
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !351 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn double %i.k, f0x3FD5555555555555
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !351 ; 2 uses
  %.neg = fmul reassoc nsz arcp contract afn double %i.n, f0xBFC5555555555555
  %i.o = fadd reassoc nsz arcp contract afn double %.neg, %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !351
  %i.r = fmul reassoc nsz arcp contract afn double %i.q, f0x3FD279A745935AE9 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 2 uses
  %i.t = fsub reassoc nsz arcp contract afn double %i.o, %i.r
  %i.u = fadd reassoc nsz arcp contract afn double %i.o, %i.r
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1
  %i.x = fptosi <2 x double> %i.w to <2 x i32>
  %i.y = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.x, <2 x i32> zeroinitializer)
  %i.z = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %i.y, <2 x i32> splat (i32 65535))
  %i.aa = trunc nuw <2 x i32> %i.z to <2 x i16>
  store <2 x i16> %i.aa, ptr %i.s, align 2, !tbaa !76
  %i.ab = fadd reassoc nsz arcp contract afn double %i.n, %i.k
  %i.ac = fmul reassoc nsz arcp contract afn double %i.ab, f0x3FD5555555555555
  %i.ad = fptosi double %i.ac to i32
  %i.ae = tail call i32 @llvm.smax.i32(i32 %i.ad, i32 0)
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 65535)
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ai = load i16, ptr %i.a, align 4, !tbaa !74
  %i.aj = zext i16 %i.ai to i64
  %i.ak = load i16, ptr %i.b, align 2, !tbaa !11
  %i.al = zext i16 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, %i.aj
  %i.an = icmp samesign ult i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw15fbdd_correctionEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !74   ; 2 uses
  %i.e = icmp ugt i16 %i.d, 4
  br i1 %i.e, label %.lr.ph985.preheader, label %._crit_edge986

.lr.ph985.preheader:                              ; preds = %bb.a
  %i.f = load i16, ptr %i.b, align 2, !tbaa !11   ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 2 uses
  br label %.lr.ph985

.lr.ph985:                                        ; preds = %.lr.ph985.preheader, %._crit_edge
  %i.h = phi i16 [ %i.au, %._crit_edge ], [ %i.d, %.lr.ph985.preheader ]
  %i.i = phi i16 [ %i.av, %._crit_edge ], [ %i.f, %.lr.ph985.preheader ] ; 3 uses
  %.0868983 = phi i32 [ %i.aw, %._crit_edge ], [ 2, %.lr.ph985.preheader ] ; 3 uses
  %i.j = icmp ugt i16 %i.i, 4
end_hunk_0
